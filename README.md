# DevOps Case Study

### Challenge 1:
You are presented with the following scenario of a simple e-commerce website. Please go through the
system description and the required deliverables.
* Description:
    - The system consists of a backend RESTful API and a frontend React SPA website.
    - The system relies on the following components to work properly. MySQL DB to store orders,
* external payment gateway to process payments, and log store for monitoring.
    - The API and website have separate codebase and hosted on different Azure Git Repos.
    - The API and website are containerized and deployed to Kubernetes cluster.
    - Jenkins is used for managing the CI/CD.
* Deliverables:
    1. System diagram that shows the mentioned components and how it connects.
    2. Flow diagram that illustrates the steps in Jenkins CI/CD pipelines.
    3. Simple helm chart that will deploy the backend API to K8s cluster.

---
### Challenge 2:
Write a script that reads the following XML file and creates an array of objects where each object
represents one key/value pair, then print the array to the Console in a tabular format.
Note: Please use any scripting language of your choice (e.g., Python, PowerShell, etc.).
XML File Contents:
```xml
<?xml version="1.0"?>
<appSettings file="ConfigKeys.config">
 <add key="webpages:Version" value="1.0.0.0" />
 <add key="webpages:Enabled" value="true" />
 <add key="EnableCache" value="true" />
 <add key="ConnectionString" value="server=Server1,password=P@ssW0rd"/>
</appSettings>
```

Expected Output (Sample):

| Key              | Value                            |
|------------------|----------------------------------|
| webpages:Version | 1.0.0.0                          |
| webpages:Enabled | true                             |
| EnableCache      | true                             |
| ConnectionString | server=Server1,password=P@ssW0rd |

---
### Challenge 3 (Optional):
Write a Terraform script that creates EKS cluster on AWS with node autoscaling.
