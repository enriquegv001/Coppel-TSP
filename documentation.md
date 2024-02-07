# Documentation

## Big Data Architecture
This project will focus on system for solving analytical workloads, through multiple data storages, process and analytical tools to make predictions on time for each vehicle and to optimize the correct route to reduce the most amount of money per day.

### Ingetsion
Since the amount of data performed from this activity is few at least from now and is looking to be through batch is possible to use spark connector, Event Grid or Events Hub. Altough it will also be helpful to use Azure Data Factory to optimize actions.

Here it could also be a possiblity to get the information from other resources such as Data Spark SQL APIs and IoT.

### Transformation
Process orchestrated through triggers while getting data same pipline via using linked serivices like spark.

### Storage
Since we are infering is a lot of data running through the system, could check the possibility on storing through HDFS Haddoop, since it haves the possibility for storing a lot of memmory from mulitple types. However it will also be interesting to work with NoSQL through Cosmo DB

### Querying and manipulation
Maybe for this process it will be easier to model the infromation throug SQL pools serverless since it is compabtible using an spark apache notebook or also through databricks. In case of needing for a SQL pool dedicated, thee is a service in Azure called SQL warehousing. However is also available other services which could include PostgreSQL for its benefts on vertical scalability and ACID compliants needs (Atomicity, Consistency, Isolation and Duatability)

### Analytics and ML
Finally processed and analysis using Apache Spark with SCALA and python, though this last process check if there is a possibility to do visualizations on a report.



## Scrum 
### Backlog
1. Create Azure Cluster via Azure Synapse wher will be linked to  Event Hubs to wather information once it have arrived. This will be a CSV files so they are able to work.
   
2. Create pipline orchestrating the actions while transforming the data through spark notebok as Linked Service

3. Storage data and here I will try to look for microservices in order to make the system scalable and reliable. I have 3 options first in Hadoop to use HDFS files for distributed storage, on Cosmo DB but this could be even a process before Synapse pipline actions thus it enhace globally stiribted mulimdel db service, and finally on Azure Data Storage Gen2 for having heriarchical options on a way to chreate schemas through azure blob storage

4. I will build queryies on SQL pools to get the data but it will depend from where is comming. In case is from SQL Cosmo DB or Apache Spark API it could be possible to run with SQL pool serverless, otherwise from Data Lake Gen2 it will be useful to use SQL warehousing step before

5. Do the analytics and ML models delpy using Apache Spark notebook. Try to do it from a different branch in github just to see how merge works

### Backlog dev

### Developing
#### [Azure Cost Managment billing](https://learn.microsoft.com/en-us/azure/cost-management-billing/understand/mca-overview)
The spending billing limit in Azure is set by the credit that each account has. For this project the Azure Credit limit is the $100 student credit and can be increased within billing profile > Manage payment methods. Here it depends the type of plan you are choosing to set on the account limit.
To [assign a budget](https://learn.microsoft.com/en-us/azure/cost-management-billing/costs/tutorial-acm-create-budgets) the resources are going to be based on ServiceName so that the budgest can be devided into Ingestion(10%), Storage (30%), Transformation or Manipulation (20%), Analytics or ML (10%) and Savings for insurance (30%). Next set an alarm for when certain percentage of budget is being reached or forcasted.


#### [Data Lake Gen2 storage](https://learn.microsoft.com/en-us/azure/storage/blobs/create-data-lake-storage-account)
The storage parameters to consider:
- region: availability, local-remote proximity, cost
- redundancy: how reliable your system must be?
- tier: data accessibility and frequency of storage
- security: since is priority minimum options should have acivated REST API, enable key accosunt access, min TLS
- storage: Enable hierarchical namespace is usefull to allow parallel function in Big Data workloads

#### [Synapse Workspace](https://learn.microsoft.com/en-us/azure/synapse-analytics/quickstart-create-workspace)
From Data Lake account created before it will be linked to the workspace, thus the synapse data will be store at one of the containers (files system from the Data Lake). 

### Testing

### Review



