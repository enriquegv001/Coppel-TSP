# Documentation

## Big Data Architecture
This project will focus on system for solving analytical workloads, through mmultiple data storages, process and analytical tools to make predictions on time for each vehicle and to optimize the correct route to reduce the most amount of money per day.

### Ingetsion
Since the amount of data performed from this activity is few at least from now and is looking to be through batch is possible to use spark connector, Event Grid or Hub. Altough it will also be helpful to use ADF since the cost is lower.

Here it could also be a possiblity to get the information from other resources such as APIs and IoT.

### Transformation
Process orchestrated through same pipline via using tools like spark. Search to apply tools such as SCALA.

### Storage
Since we are infering is a lot of data running through the system, could check the possibility on storing through HDFS Haddoop, since it haves the possibility for storing a lot of memmory from mulitple types. However it will also be interesting to work with NoSQL through Cosmo DB

### Querying and manipulation
Maybe for this process it will be easier to model the infromation throug SQL pools serverless since it is compabtible using an spark apache notebook or also through databricks. In case of needing for a SQL pool dedicated, thee is a service in Azure called SQL warehousing. However is also available other services which could include PostgreSQL for its benefts on vertical scalability and ACID compliants needs (Atomicity, Consistency, Isolation and Duatability)

### Analytics and ML
Finally processed and analysis using Apache Spark with SCALA and python, though this last process check if there is a possibility to do visualizations on 
