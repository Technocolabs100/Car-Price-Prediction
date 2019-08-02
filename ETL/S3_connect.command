#!/bin/bash
#chmod u+x S3_write.command

echo "S3 Bucket Contents"
echo "---------------------------------"

aws s3 ls s3://deveshetl/usedcars

echo "---------------------------------"


#Extract Stage

if [ "$1" = "write_extract" ]; then
echo "---------------------------------"
echo "Writing files to S3 Bucket..."
aws s3 sync ../data/vehicle_listings_extract.parquet s3://deveshetl/usedcars/extract --delete
echo "Write complete."
echo "---------------------------------"
fi

#aws s3 cp command does not remove non-overlapping parquet files from previous read


if [ "$1" = "read_extract" ]; then
echo "---------------------------------"
echo "Reading files from S3 Bucket..."
aws s3 sync s3://deveshetl/usedcars/extract ../data/vehicle_listings_read_extract.parquet --delete
echo "Read complete."
echo "---------------------------------"
fi


#Transform Stage

if [ "$1" = "write_transform" ]; then
echo "---------------------------------"
echo "Writing files to S3 Bucket..."
aws s3 sync ../data/vehicle_listings_transform.parquet s3://deveshetl/usedcars/transform --delete
echo "Write complete."
echo "---------------------------------"
fi

#aws s3 cp command does not remove non-overlapping parquet files from previous read


if [ "$1" = "read_transform" ]; then
echo "---------------------------------"
echo "Reading files from S3 Bucket..."
aws s3 sync s3://deveshetl/usedcars/transform ../data/vehicle_listings_read_transform.parquet --delete
echo "Read complete."
echo "---------------------------------"
fi






echo "---------------------------------"

#end