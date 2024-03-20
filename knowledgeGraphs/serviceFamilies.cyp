MERGE (GCP:Cloud
    {
        name: "Google Cloud Platform",
        competitors: "AWS, Azure",
        description: "A suite of cloud computing services that runs on the same infrastructure that Google uses internally for its end-user products."
    }
)
MERGE (AIandML:Service_family:AIandML
    {
        name: "AI and ML",
        services: "Vertex AI Platform, Generative AI on Vertex AI, Vertex AI Search and Conversation, AutoML, Dialogflow, Media Translation, Natural Language AI, Recommendations AI, Speech-to-Text, Text-to-Speech, Translation AI, Video AI, Vision AI, Vertex AI Notebooks, Vertex Explainable AI, AI Infrastructure, Cloud GPUs, Cloud TPUs, Deep Learning VM Image, Deep Learning Containers, TensorFlow Enterprise, Contact Center AI, Document AI, Intelligent products, Product Discovery"
    }
)
MERGE (AppIntegration:Service_family:AppIntegration
    {
        name: "Application Integration",
        services: "Eventarc, Cloud Scheduler, Cloud Tasks, Workflows, PubSub"
    }
)
MERGE (ApiPlatform:Service_family:ApiPlatform
    {
        name: "API Platform and Ecosystems",
        services: "Api Analytics, Api Monetization, Apigee, ApiGateway, ApigeeHybrid, ApigeeSense, CloudEndpoints, Developer Portal, Marketplace, AppSheet"
    }
)
MERGE (BussinessIntellingence:Service_family:BussinessIntellingence
    {
        name: "Bussiness Intellingence",
        services: "Looker, Looker Studio"
    }
)
MERGE (Compute:Service_family:Compute
    {
        name: "Compute",
        services: "Cloud Functions, App Engine, Cloud Run, Google Kubernetes Engine (GKE), Compute Engine, Bare Metal Solution,Preemptible VMs, Shielded VMs, Sole-tenant Nodes, VMware Engine"
    }
)
MERGE (Containers:Service_family:Containers
    {
        name: "Containers",
        services: "Artifact Rgistry, Cloud Build, Cloud Console, Cloud Deploy, Cloud Run, Deep Learning Containers, GKE, Knative, Migrate to Containers, k8 on GCP Market Place"
    }
)
MERGE (DataAnalytics:Service_family:DataAnalytics
    {
        name: "Data Analytics",
        services: "BigQuery,Looker,Dataproc,Dataflow,Dataform,Pub/Sub,Cloud Data Fusion,Data Catalog,Cloud Composer,Dataprep,Dataplex,Analytics Hub,Looker Studio,Earth Engine,BigLake,Google Marketing Platform"
    }
)
MERGE (Database:Service_family:Database
    {
        name: "Database",
        services: "AlloyDB for PostgreSQL,Bare Metal Solution, Cloud Bigtable, Cloud Spanner, Cloud SQL, Database Migration Service, Firestore, Memorystore, Datastream, Firebase Realtime Database"
    }
)
MERGE (DeveloperTools:Service_family:DeveloperTools
    {
        name: "Developer Tools",
        services: "Artifact Registry, Assured Open Source Software, Cloud Build, Cloud Code, Cloud Deploy, Cloud Deployment Manager, Cloud Functions for Firebase, Cloud Identity, Cloud Scheduler, Cloud SDK, Cloud Source Repositories, Cloud Tasks, Cloud Workstations, Duet AI in Google Cloud (Preview), Firebase Authentication, Firebase Crashlytics*, Firebase Test Lab, Gradle App Engine Plugin, Infrastructure Manager, Maven App Engine Plugin, Skaffold, Tekton, Tools for Eclipse, Tools for PowerShell"
    }
)
MERGE (DevOpsCICD:Service_family:DevOpsCICD
    {
        name: "DevOps CI/CD",
        services: "CloudBuild, CloudDeploy, Artifact Registry, Cloud Source Repositories, containerRegistry"
    }
)
MERGE (DistributedCloud:Service_family:DistributedCloud
    {
        name: "Distributed Cloud",
        services: "Google Distributed Cloud Edge, Google Distributed Cloud Hosted"
    }
)
MERGE (Gaming:Service_family:Gaming
    {
        name: "Gaming",
        services: "Google Cloud Game Servers"
    }
)
MERGE (Healthcare:Service_family:Healthcare
    {
        name: "Healthcare",
        services: "Cloud Healthcare API, Apigee Healthcare APIx, Healthcare Natural Language AI, Cloud Life Sciences"
    }
)
MERGE (HybridMultiCloud:Service_family:HybridMultiCloud
    {
        name: "Hybrid and multi-cloud",
        services: "Anthos, Apigee API Management, Cloud Build, Looker, Migrate to Containers, Google Distributed Cloud"
    }
)
MERGE (IndustrySpecific:Service_family:IndustrySpecific
    {
        name: "Industry Specific",
        services: "Anti Money Laundering AI, Cloud Healthcare API, Device Connect for Fitbit, Telecom Network Automation, Telecom Data Fabric, Telecom Subscriber Insights, Spectrum Access System (SAS), Payment Gateway"
    }
)
MERGE (IntegrationServices:Service_family:IntegrationServices
    {
        name: "Integration Services",
        services: "Application Integration, Workflows, Apigee API Management, Cloud Tasks, Cloud Scheduler, Dataproc, Cloud Data Fusion, Cloud Composer, Pub/Sub, Eventarc"
    }
)
MERGE (IOT:Service_family:IOT
    {
        name: "Internet of Things (IOT)",
        services: "Cloud IOT Core"
    }
)
MERGE (ManagementTools:Service_family:ManagementTools
    {
        name: "Management Tools",
        services: "Active Assist, Config Management, Service Mesh, Carbon Footprint, Cloud APIs, Cloud Console, Cloud Endpoints, Cloud Mobile App, Cloud Shell, Cloud Workstations, Config Connector, Cost Management, Deployment Manager, Identity and Access Management (IAM), Managed Service for Prometheus, Personalized Service Health, Service Catalog, Terraform on Google Cloud"
    }
)
MERGE (MapsPlatform:Service_family:MapsPlatform
    {
        name: "Google Maps Platform",
        services: "Earth Engine, Google Maps Platform"
    }
)
MERGE (MediaServices:Service_family:MediaServices
    {
        name: "Media Services",
        services: "Cloud CDN, Live Stream API, OpenCue, Transcoder API, Video Stitcher API"
    }
)
MERGE (Migration:Service_family:Migration
    {
        name: "Migration to Google Cloud",
        services: "Application migration, BigQuery Data Transfer Service, Cloud Foundation Toolkit, Database Migration Service, Migration Center, Migrate to Containers, Migrate to Virtual Machines, Rapid Assessment & Migration Program (RAMP), Storage Transfer Service, Transfer Appliance, VMware Engine"
    }
)
MERGE (MixedReality:Service_family:MixedReality
    {
        name: "MixedReality",
        services: "Immersive Stream for XR"
    }
)
MERGE (Mobile:Service_family:Mobile
    {
        name: "Mobile (Firebase)",
        services: "Cloud Firestore, Cloud Functions for Firebase, Cloud Storage for Firebase, Crashlytics, Firebase A/B Testing, Firebase App Distribution, Firebase Authentication, Firebase Cloud Messaging, Firebase Dynamic Links, Firebase Extensions, Firebase Hosting, Firebase In-App Messaging, Firebase Performance Monitoring, Firebase Predictions, Firebase Realtime Database, Firebase Remote Config, Firebase Test Lab, Google Analytics for Firebase, ML Kit for Firebase"
    }
)
MERGE (Networking:Service_family:Networking
    {
        name: "Networking",
        services: "Anthos Service Mesh, Carrier Peering, Cloud Armor, Cloud CDN, Cloud Connectivity, Cloud Domains, Cloud DNS, Cloud Firewall, Cloud IDS, Cloud Load Balancing, Cloud NAT, Direct Peering, Cloud Router, Cloud VPN, Dedicated Interconnect, Network Connectivity Center, Network Intelligence Center, Network Service Tiers, Network Telemetry, Packet Mirroring, Private Service Connect, Traffic Director, Service Directory, Virtual Private Cloud (VPC), VPC Service Controls"
    }
)
MERGE (Operations:Service_family:Operations
    {
        name: "Operations",
        services: "Cloud Debugger, Cloud Logging, Cloud Monitoring, Cloud Profiler, Cloud Trace, Error Reporting"
    }
)
MERGE (Retail:Service_family:Retail
    {
        name: "Retail",
        services: "vision Product Search, recommendations AI, visualInspectionAI"
    }
)
MERGE (SecurityandIdentity:Service_family:SecurityandIdentity
    {
        name: "Security and Identity",
        services: "Access Transparency, Assured Workloads, Cloud Asset Inventory, Sensitive Data Protection, Cloud IDS, Cloud Key Management, Confidential Computing, Cloud Firewall, Secret Manager, VPC Service Controls, Security Command Center, Shielded VMs, Cloud Identity, Identity-Aware Proxy, Identity and Access Management, Managed Service for Microsoft Active Directory, Policy Intelligence, Assured Open Source Software, Software Delivery Shield, BeyondCorp Enterprise, Certificate Authority Service, Titan Security Key, Cloud Armor, reCAPTCHA Enterprise, Identity Platform, Web Risk, Mandiant Threat Intelligence, Mandiant Attack Surface Management, Mandiant Digital Threat Monitoring, Mandiant Security Validation, Virus Total, Chronicle SIEM, Chronicle SOAR, Mandiant Managed Detection and Response, Mandiant Incident Response Services, Mandiant Consulting Services, Mandiant Academy"
    }
)
MERGE (Storage:Service_family:Storage
    {
        name: "Storage",
        services: "Cloud Storage, Storage Transfer Service, Cloud Storage for Firebase, Filestore, Local SSD, Persistent Disk, Google Cloud Backup and DR, NetApp Volumes, Parallelstore, Block storage"
    }
)
MERGE (Web3:Service_family:Web3
    {
        name: "Web3",
        services: "Blockchain Node Engine"
    }
)
MERGE (WorkspacePlatform:Service_family:WorkspacePlatform
    {
        name: "Workspace Platform",
        services: "Admin SDK, AMP for Email, Apps Script, Calendar API, Classroom API, Cloud Search, Docs API, Drive Activity API, Drive API, Drive Picker, Email Markup, Google Workspace Add-ons, Google Workspace Marketplace, Gmail API, Google Chats API, People API, Sheets API, Slides API, Task API, Vault API"
    }
)
MERGE (Workspace:Service_family:Workspace
    {
        name: "Workspace",
        services: "Gmail, Chat, Calendar, Drive, Docs, Sheets, Meet"
    }
)

// Joining service families to Google Cloud Platform
MERGE (AIandML)-[:SERVICE_OF]->(GCP)
MERGE (AppIntegration)-[:SERVICE_OF]->(GCP)
MERGE (ApiPlatform)-[:SERVICE_OF]->(GCP)
MERGE (BussinessIntellingence)-[:SERVICE_OF]->(GCP)
MERGE (Compute)-[:SERVICE_OF]->(GCP)
MERGE (Containers)-[:SERVICE_OF]->(GCP)
MERGE (DataAnalytics)-[:SERVICE_OF]->(GCP)
MERGE (Database)-[:SERVICE_OF]->(GCP)
MERGE (DeveloperTools)-[:SERVICE_OF]->(GCP)
MERGE (DistributedCloud)-[:SERVICE_OF]->(GCP)
MERGE (DevOpsCICD)-[:SERVICE_OF]->(GCP)
MERGE (Gaming)-[:SERVICE_OF]->(GCP)
MERGE (Healthcare)-[:SERVICE_OF]->(GCP)
MERGE (HybridMultiCloud)-[:SERVICE_OF]->(GCP)
MERGE (IndustrySpecific)-[:SERVICE_OF]->(GCP)
MERGE (IntegrationServices)-[:SERVICE_OF]->(GCP)
MERGE (IOT)-[:SERVICE_OF]->(GCP)
MERGE (ManagementTools)-[:SERVICE_OF]->(GCP)
MERGE (MapsPlatform)-[:SERVICE_OF]->(GCP)
MERGE (MediaServices)-[:SERVICE_OF]->(GCP)
MERGE (Migration)-[:SERVICE_OF]->(GCP)
MERGE (MixedReality)-[:SERVICE_OF]->(GCP)
MERGE (Mobile)-[:SERVICE_OF]->(GCP)
MERGE (Networking)-[:SERVICE_OF]->(GCP)
MERGE (Operations)-[:SERVICE_OF]->(GCP)
MERGE (Retail)-[:SERVICE_OF]->(GCP)
MERGE (SecurityandIdentity)-[:SERVICE_OF]->(GCP)
MERGE (Storage)-[:SERVICE_OF]->(GCP)
MERGE (Web3)-[:SERVICE_OF]->(GCP)
MERGE (Workspace)-[:SERVICE_OF]->(GCP)
MERGE (WorkspacePlatform)-[:SERVICE_OF]->(GCP)