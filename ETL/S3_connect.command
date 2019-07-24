#!/bin/bash
#chmod u+x S3_write.command

echo "S3 Bucket Contents"
echo "---------------------------------"

aws s3 ls s3://deveshetl

echo "---------------------------------"

if [ "$1" = "write" ]; then
echo "---------------------------------"
echo "Writing files to S3 Bucket..."
aws s3 sync ../data/vehicle_listings_extract.parquet s3://deveshetl/usedcars/extract --delete
echo "Write complete."
echo "---------------------------------"
fi


if [ "$1" = "read" ]; then
echo "---------------------------------"
echo "Reading files from S3 Bucket..."
aws s3 sync s3://deveshetl/usedcars/extract ../data/vehicle_listings_read.parquet --delete
echo "Read complete."
echo "---------------------------------"
fi

echo "---------------------------------"
#end