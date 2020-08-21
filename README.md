# Predict-New-York-Taxi-Trip-Amount

## PREDICT DEMO SETUP & SCRIPTS

### Information
This repository provides the step by step guide to showcase predict feature in Synapse workspace. It contains sample data along with SQL scripts for execution. The files are prefixed with sequence number for ease of use and execution.

### Prerequisite
To work with this sample script, user need Azure Synapse SQL pool.

### Artifacts
1.	[01 Create Trips Table.sql](https://github.com/prlangad/Predict-New-York-Taxi-Trip-Amount/blob/master/Code%20Artifacts/01%20Create%20Trips%20Table.sql)
2.	[02 Create Models Table.sql](https://github.com/prlangad/Predict-New-York-Taxi-Trip-Amount/blob/master/Code%20Artifacts/02%20Create%20Models%20Table.sql)
3.	[03 Register Model in SQL Pool.sql](https://github.com/prlangad/Predict-New-York-Taxi-Trip-Amount/blob/master/Code%20Artifacts/03%20Register%20Model%20in%20SQL%20Pool.sql)
4.	[03 TaxiTripModel.onnx.hex](https://github.com/prlangad/Predict-New-York-Taxi-Trip-Amount/blob/master/ONNX%20Model%20Hex/03%20TaxiTripModel.onnx.hex)
5.	[04 Load Trips table with data.sql](https://github.com/prlangad/Predict-New-York-Taxi-Trip-Amount/blob/master/Code%20Artifacts/04%20Load%20Trips%20table%20with%20data.sql)
6.	[05 PREDICT In-Engine ML Scoring.sql](https://github.com/prlangad/Predict-New-York-Taxi-Trip-Amount/blob/master/Code%20Artifacts/05%20PREDICT%20In-Engine%20ML%20Scoring.sql)
7.	[trips.txt](https://github.com/prlangad/Predict-New-York-Taxi-Trip-Amount/blob/master/Sample%20Data/Trips.txt) - This is sample data for Trips table

### Execution Sequence
1.	Create Table dbo.Trips in SQL pool with definition as below. Refer file [01 Create Trips Table.sql](https://github.com/prlangad/Predict-New-York-Taxi-Trip-Amount/blob/master/Code%20Artifacts/01%20Create%20Trips%20Table.sql)

2.	Create Table dbo.Models in SQL pool with definition as below. Refer file [02 Create Models Table.sql](https://github.com/prlangad/Predict-New-York-Taxi-Trip-Amount/blob/master/Code%20Artifacts/02%20Create%20Models%20Table.sql)

3.	Register Model in SQL pool by running simple INSERT INTO Statement. Make sure you copy the entire text from the attached hex file and replace it here. Triangular brackets are just placeholder, so get rid of them when copy-pasting. Better to use SSMS for running this statement. Hex file can be opened through notepad. Make sure the varbinary string starts with 0x. Refer file [03 Register Model in SQL Pool.sql](https://github.com/prlangad/Predict-New-York-Taxi-Trip-Amount/blob/master/Code%20Artifacts/03%20Register%20Model%20in%20SQL%20Pool.sql)

4.	Load data into dbo.Trips from attached sample trips.txt file. Save trips.txt file in your storage account and provide the path of file in below COPY INTO statement. Sample Script is attached here for reference. Replace your storage account name, container name and/or folder name to make the location of file valid. Refer file [04 Load Trips table with data.sql](https://github.com/prlangad/Predict-New-York-Taxi-Trip-Amount/blob/master/Code%20Artifacts/04%20Load%20Trips%20table%20with%20data.sql)

5.	Run predict query for inline prediction of TotalAmount with registered model. Attached SQL script is full script from demo. Refer file [05 PREDICT In-Engine ML Scoring.sql](https://github.com/prlangad/Predict-New-York-Taxi-Trip-Amount/blob/master/Code%20Artifacts/05%20PREDICT%20In-Engine%20ML%20Scoring.sql)

**Note**
In this demo, the model is trained with AutoML. To upload dependent libraries on Spark pool upload the [synapsepredictamllibdependencies.txt](https://github.com/prlangad/Predict-New-York-Taxi-Trip-Amount/blob/master/Code%20Artifacts/synapsepredictamllibdependencies.txt) file on Spark pool.
To get the hex string of ONNX model, [PowerShell](https://github.com/prlangad/Predict-New-York-Taxi-Trip-Amount/blob/master/Code%20Artifacts/powershelltoconvertonnxtohex.ps1) script is used for conversion.







