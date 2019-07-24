# Car-Price-Prediction

Access notebook: [PySpark Vehicles](https://github.com/devsharma96/Car-Price-Prediction/tree/master/ETL/PySpark%20Vehicles.ipynb).


MIT License

Copyright (c) 2019 Devesh Sharma

**This Project is a work in progress.**

This [project](https://github.com/devsharma96/Car-Price-Prediction/tree/master/ETL/PySpark%20Vehicles.ipynb) is engineered to use **Pyspark** to load over a million records of car sales made across the United States (>500MB) and process them to understand various predictors of *listed price* through an **ETL Pipeline**.

The project is focused on **Data Engineering** - the goal is to develop a safe and reliable **ETL Pipeline** built on **PySpark** that can be deployed for Machine Learning tasks. It is divided into three stages -

## 1. Problem Definition

* Identify the Problem Features, Aims and Variables.
* Configure Tools and Packages required.
* Determine Input and Output formats.
* Installation Setup:
    *   Environment Configuration
    *   Python Packages
    *   Apache Spark


## 2. ETL (Extract, Transform, Load)

Various Stages of the ETL Pipeline:

* Extract:
    * Data Collection (Kaggle)
    * Data Cleaning
    * Caching Data on S3
* Transform:
    * Sampling Data
    * Exploratory Data Analysis using Pandas and Matplotlib
    * Data Visualization
    * Transformations
    * Cache Data on S3
* Load:
    * Data Preprocessing for Learning Model


## 3.  Machine Learning

* Model Selection.
* Feature & Target Preparation.
* Model Deployment.


<br>

Contents covered in this notebook include:
* **Environment configuration**: Jupyter Notebook, UNIX, Python and PySpark.
* Management of a Spark Session.
* Data Collection, Cleaning and Transformation.
* Data Analysis using Pyspark Dataframes
* EDA using Pandas Dataframes
* SQL queries with **SparkSQL**.
* Visualization with **Matplotlib**.



<br>

## Dataset

The dataset used for this project can be found through the following link:
- https://www.kaggle.com/austinreese/craigslist-carstrucks-data


#### About the Dataset

Contains over a million and a half unique car postings between the months of September and November 2018 on `Craiglist.com`.
Contains all relevant information on car sales including columns like price, condition, manufacturer, latitude/longitude, and 16 other categories.

<br>

Contributors - Devesh Sharma

For any questions, please [contact me](devsharma.work@gmail.com) - `devsharma.work@gmail.com`.
