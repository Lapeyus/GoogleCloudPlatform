
// Creating GCP services under Compute
MERGE (AppEngine:GCP_Service:Compute:Serverless
    {
        name: "App Engine",
        description: "Managed app platform"
    }
)
MERGE (BareMetalSolution:GCP_Service:Compute
    {
        name: "Bare Metal Solution",
        description: "Hardware for specialized workloads"
    }
)
MERGE (Batch:GCP_Service:Compute
    {
        name: "Batch",
        description: "Fully managed batch service to schedule, queue, and execute batch jobs on Google's infrastructure."
    }
)
MERGE (CloudRun:GCP_Service:Compute:Serverless
    {
        name: "Cloud Run",
        description: "Serverless for containerized applications"
    }
)
MERGE (ComputeEngine:GCP_Service:Compute
    {
        name: "Compute Engine",
        description: "VMs,Cloud GPUs, Tau VMS, TPUs, Disks, deep learning VM"
    }
)
MERGE (MigrateVM:GCP_Service:Compute:Migration
    {
        name: "Migrate to Virtual Machines",
        description: "Fast, flexible, and safe migration of virtual machines to Google Cloud."
    }
)
MERGE (CloudFunctions:GCP_Service:Compute:Serverless
    {
        name: "Cloud Functions",
        description: "Event-driven serverless functions"
    }
)
MERGE (GKE:GCP_Service:Compute
    {
        name: "Google Kubernetes Engine (GKE)",
        description: "Managed Kubernetes/containers"
    }
)
MERGE (PreemptibleVMs:GCP_Service:Compute
    {
        name: "Preemptible (spot) VMs",
        description: "Short-lived Compute instances"
    }
)
MERGE (ShieldedVMs:GCP_Service:Compute
    {
        name: "Shielded VMs",
        description: "Hardened VMs"
    }
)
MERGE (SoleTenantNodes:GCP_Service:Compute
    {
        name: "Sole-tenant Nodes",
        description: "Dedicated physical servers"
    }
)
MERGE (SQLServer:GCP_Service:Compute:Database
    {
        name: "SQL Server on Google Cloud",
        description: "Options for running SQL Server virtual machines on Google Cloud."
    }
)
MERGE (VmwareEngine:GCP_Service:Compute
    {
        name: "VMware Engine",
        description: "Migrate and run your VMware workloads natively on Google Cloud."
    }
)

// Joining Compute services to Compute service family
MERGE (CloudFunctions)-[:PART_OF]->(Compute)
MERGE (AppEngine)-[:PART_OF]->(Compute)
MERGE (CloudRun)-[:PART_OF]->(Compute)
MERGE (GKE)-[:PART_OF]->(Compute)
MERGE (ComputeEngine)-[:PART_OF]->(Compute)
MERGE (BareMetalSolution)-[:PART_OF]->(Compute)
MERGE (PreemptibleVMs)-[:PART_OF]->(Compute)
MERGE (ShieldedVMs)-[:PART_OF]->(Compute)
MERGE (SoleTenantNodes)-[:PART_OF]->(Compute)
MERGE (VmwareEngine)-[:PART_OF]->(Compute)
MERGE (MigrateVM)-[:PART_OF]->(Compute)
MERGE (Batch)-[:PART_OF]->(Compute)
MERGE (SQLServer)-[:PART_OF]->(Compute)

// Creating GCP services under Storage
MERGE (CloudFilestore:GCP_Service
    {
        name: "Cloud Filestore",
        description: "Managed NFS server"
    }
)
MERGE (CloudStorage:GCP_Service
    {
        name: "Cloud Storage",
        description: "Multi-class multi-region object Storage"
    }
)
MERGE (PersistentDisk:GCP_Service:PersistentDisk
    {
        name: "Persistent Disk",
        description: "Block Storage for VMs"
    }
)
MERGE (LocalSSD:GCP_Service:LocalSSD
    {
        name: "Local SSD",
        description: "VM locally attached SSDs"
    }
)

// Joining Storage services to Storage service family
MERGE (CloudFilestore)-[:PART_OF]->(Storage)
MERGE (CloudStorage)-[:PART_OF]->(Storage)
MERGE (PersistentDisk)-[:PART_OF]->(Storage)
MERGE (LocalSSD)-[:PART_OF]->(Storage)

// Creating GCP services under Database
MERGE (CloudBigtable:GCP_Service:Database
    {
        name: "Cloud Bigtable",
        description: "Petabyte-scale, low-latency, non-relational"
    }
)
MERGE (CloudFirestore:GCP_Service:Database
    {
        name: "Cloud Firestore",
        description: "Serverless NoSQL document Database"
    }
)
MERGE (CloudMemorystore:GCP_Service:Database
    {
        name: "Cloud Memorystore",
        description: "Managed Redis and Memcached"
    }
)
MERGE (CloudSpanner:GCP_Service:Database
    {
        name: "Cloud Spanner",
        description: "Horizontally scalable relational Database"
    }
)
MERGE (CloudSQL:GCP_Service:Database
    {
        name: "Cloud SQL",
        description: "Managed MySQL, PostgreSQL, SQL Server"
    }
)
MERGE (DatabaseMigrationService:GCP_Service:Migration:Database
    {
        name: "Database Migration Service",
        description: "Migrate to Cloud SQL"
    }
)
MERGE (CloudSQLInsights:GCP_Service:Database
    {
        name: "Cloud SQL Insights",
        description: "SQL Inspector"
    }
)

// Joining Database services to Database service family
MERGE (CloudBigtable)-[:PART_OF]->(Database)
MERGE (CloudFirestore)-[:PART_OF]->(Database)
MERGE (CloudMemorystore)-[:PART_OF]->(Database)
MERGE (CloudSpanner)-[:PART_OF]->(Database)
MERGE (CloudSQL)-[:PART_OF]->(Database)
MERGE (DatabaseMigrationService)-[:PART_OF]->(Database)
MERGE (CloudSQLInsights)-[:PART_OF]->(Database)
MERGE (SQLServer)-[:PART_OF]->(Database)

// Creating GCP services under Data Analytics
MERGE (BigQuery:GCP_Service
    {
        name: "BigQuery",
        description: "Data warehouse and analytics"
    }
)
MERGE (BigQueryBIEngine:GCP_Service
    {
        name: "BigQuery BI Engine",
        description: "In-memory analytics engine"
    }
)
MERGE (BigQueryML:GCP_Service
    {
        name: "BigQuery ML",
        description: "BigQuery model training/serving"
    }
)
MERGE (BigQueryGIS:GCP_Service
    {
        name: "BigQuery GIS",
        description: "BigQuery geospatial functions/support"
    }
)
MERGE (BigQueryDataTransferService:GCP_Service
    {
        name: "BigQuery Data Transfer Service",
        description: "Automated data ingestion service"
    }
)
MERGE (ConnectedSheets:GCP_Service
    {
        name: "Connected Sheets",
        description: "Spreadsheet interface for (big)data"
    }
)
MERGE (CloudComposer:GCP_Service
    {
        name: "Cloud Composer",
        description: "Managed workflow orchestration service"
    }
)
MERGE (CloudDataFusion:GCP_Service
    {
        name: "Cloud Data Fusion",
        description: "Graphically manage data pipelines"
    }
)
MERGE (Dataflow:GCP_Service
    {
        name: "Dataflow",
        description: "Stream/batch data processing"
    }
)
MERGE (DataprepByTrifacta:GCP_Service
    {
        name: "Dataprep by Trifacta",
        description: "Visual data wrangling"
    }
)
MERGE (Dataprep:GCP_Service
    {
        name: "Dataprep by Trifacta",
        description: "Visual data wrangling"
    }
)
MERGE (Dataproc:GCP_Service
    {
        name: "Dataproc",
        description: "Managed Spark and Hadoop"
    }
)
MERGE (Datastream:GCP_Service
    {
        name: "Datastream",
        description: "Change data capture/replication service"
    }
)
MERGE (PubSub:GCP_Service
    {
        name: "Pub/Sub",
        description: "Global real-time messaging"
    }
)
MERGE (DataCatalog:GCP_Service
    {
        name: "Data Catalog",
        description: "Metadata management service"
    }
)
MERGE (GoogleDataStudio:GCP_Service
    {
        name: "Google Data Studio",
        description: "Collaborative data exploration/dashboarding"
    }
)
MERGE (Looker:GCP_Service
    {
        name: "Looker",
        description: "Enterprise BI and analytics"
    }
)
MERGE (PublicDatasets:GCP_Service
    {
        name: "Public Datasets",
        description: "Hosted data in BigQuery"
    }
)

// Joining Data Analytics services to Data Analytics service family
MERGE (BigQuery)-[:PART_OF]->(DataAnalytics)
MERGE (BigQueryBIEngine)-[:PART_OF]->(DataAnalytics)
MERGE (BigQueryML)-[:PART_OF]->(DataAnalytics)
MERGE (BigQueryGIS)-[:PART_OF]->(DataAnalytics)
MERGE (BigQueryDataTransferService)-[:PART_OF]->(DataAnalytics)
MERGE (ConnectedSheets)-[:PART_OF]->(DataAnalytics)
MERGE (CloudComposer)-[:PART_OF]->(DataAnalytics)
MERGE (CloudDataFusion)-[:PART_OF]->(DataAnalytics)
MERGE (Dataflow)-[:PART_OF]->(DataAnalytics)
MERGE (DataprepByTrifacta)-[:PART_OF]->(DataAnalytics)
MERGE (Dataproc)-[:PART_OF]->(DataAnalytics)
MERGE (Datastream)-[:PART_OF]->(DataAnalytics)
MERGE (PubSub)-[:PART_OF]->(DataAnalytics)
MERGE (DataCatalog)-[:PART_OF]->(DataAnalytics)
MERGE (GoogleDataStudio)-[:PART_OF]->(DataAnalytics)
MERGE (Looker)-[:PART_OF]->(DataAnalytics)
MERGE (PublicDatasets)-[:PART_OF]->(DataAnalytics)

// Joining Data Analytics services to Data Analytics service family
MERGE (BigQuery)-[:PART_OF]->(DataAnalytics)
MERGE (BigQueryBIEngine)-[:PART_OF]->(DataAnalytics)
MERGE (BigQueryML)-[:PART_OF]->(DataAnalytics)
MERGE (BigQueryGIS)-[:PART_OF]->(DataAnalytics)
MERGE (BigQueryDataTransferService)-[:PART_OF]->(DataAnalytics)
MERGE (ConnectedSheets)-[:PART_OF]->(DataAnalytics)
MERGE (CloudComposer)-[:PART_OF]->(DataAnalytics)
MERGE (CloudDataFusion)-[:PART_OF]->(DataAnalytics)
MERGE (Dataflow)-[:PART_OF]->(DataAnalytics)
MERGE (Dataprep)-[:PART_OF]->(DataAnalytics)
MERGE (Dataproc)-[:PART_OF]->(DataAnalytics)
MERGE (Datastream)-[:PART_OF]->(DataAnalytics)
MERGE (PubSub)-[:PART_OF]->(DataAnalytics)
MERGE (DataCatalog)-[:PART_OF]->(DataAnalytics)
MERGE (GoogleDataStudio)-[:PART_OF]->(DataAnalytics)
MERGE (Looker)-[:PART_OF]->(DataAnalytics)
MERGE (PublicDatasets)-[:PART_OF]->(DataAnalytics)

// Creating GCP services under Hybrid and Multi-Cloud
MERGE (Anthos:GCP_Service
    {
        name: "Anthos",
        description: "Enterprise hybrid/multi-cloud platform"
    }
)
MERGE (AnthosClusters:GCP_Service
    {
        name: "Anthos clusters",
        description: "Hybrid/on-premises GKE"
    }
)
MERGE (AnthosConfigManagement:GCP_Service
    {
        name: "Anthos Config Management",
        description: "Policy and security automation"
    }
)
MERGE (AnthosServiceMesh:GCP_Service
    {
        name: "Anthos Service Mesh",
        description: "Managed service mesh (Istio)"
    }
)
MERGE (CloudRunForAnthos:GCP_Service
    {
        name: "Cloud Run for Anthos",
        description: "Serverless development for Anthos"
    }
)
MERGE (GoogleCloudMarketplaceForAnthos:GCP_Service
    {
        name: "Google Cloud Marketplace for Anthos",
        description: "Pre-configured containerized apps"
    }
)
MERGE (MigrateForAnthosAndGKE:GCP_Service
    {
        name: "Migrate for Anthos and GKE",
        description: "Migrate VMs to GKE"
    }
)
MERGE (GoogleCloudsOperationsSuite:GCP_Service
    {
        name: "Google Cloud's operations suite",
        description: "Monitoring, logging, troubleshooting"
    }
)
MERGE (trafficDirector:GCP_Service
    {
        name: "Traffic Director",
        description: "Service mesh traffic management"
    }
)
MERGE (apigeeAPIManagement:GCP_Service
    {
        name: "Apigee API Management",
        description: "API management, development, security"
    }
)

// Joining Hybrid and Multi-Cloud services to Hybrid and Multi-Cloud service family
MERGE (Anthos)-[:PART_OF]->(HybridMultiCloud)
MERGE (AnthosClusters)-[:PART_OF]->(HybridMultiCloud)
MERGE (AnthosConfigManagement)-[:PART_OF]->(HybridMultiCloud)
MERGE (AnthosServiceMesh)-[:PART_OF]->(HybridMultiCloud)
MERGE (CloudRunForAnthos)-[:PART_OF]->(HybridMultiCloud)
MERGE (GoogleCloudMarketplaceForAnthos)-[:PART_OF]->(HybridMultiCloud)
MERGE (MigrateForAnthosAndGKE)-[:PART_OF]->(HybridMultiCloud)
MERGE (GoogleCloudsOperationsSuite)-[:PART_OF]->(HybridMultiCloud)
MERGE (trafficDirector)-[:PART_OF]->(HybridMultiCloud)
MERGE (apigeeAPIManagement)-[:PART_OF]->(HybridMultiCloud)




// Identity and Security services
MERGE (accessTransparency:GCP_Service
    {
        name: "Access Transparency",
        description: "Audit cloud provider access"
    }
)
MERGE (assuredWorkloads:GCP_Service
    {
        name: "Assured Workloads",
        description: "Workload compliance controls"
    }
)
MERGE (binaryAuthorization:GCP_Service
    {
        name: "Binary Authorization",
        description: "Kubernetes deploy-time security"
    }
)
MERGE (certificateAuthorityService:GCP_Service
    {
        name: "Certificate Authority Service",
        description: "Managed private CAs"
    }
)
MERGE (cloudAssetInventory:GCP_Service
    {
        name: "Cloud Asset Inventory",
        description: "All assets, one place"
    }
)
MERGE (cloudAuditLogs:GCP_Service
    {
        name: "Cloud Audit Logs",
        description: "Audit trails for Google Cloud"
    }
)
MERGE (cloudDLP:GCP_Service
    {
        name: "Cloud Data Loss Prevention (DLP)",
        description: "Classify and redact sensitive data"
    }
)
MERGE (cloudHSM:GCP_Service
    {
        name: "Cloud HSM",
        description: "Hardware security module service"
    }
)
MERGE (cloudEKM:GCP_Service
    {
        name: "Cloud External Key Manager (EKM)",
        description: "External keys you control"
    }
)
MERGE (cloudIAM:GCP_Service
    {
        name: "Cloud IAM",
        description: "Resource access control"
    }
)
MERGE (cloudIdentity:GCP_Service
    {
        name: "Cloud Identity",
        description: "Manage users, devices & apps"
    }
)
MERGE (cloudIAP:GCP_Service
    {
        name: "Cloud Identity-Aware Proxy",
        description: "Identity-based app access"
    }
)
MERGE (cloudKMS:GCP_Service
    {
        name: "Cloud Key Management Service",
        description: "Hosted key management service"
    }
)
MERGE (resourceManager:GCP_Service
    {
        name: "Resource Manager",
        description: "Cloud project metadata management"
    }
)
MERGE (securityCommandCenter:GCP_Service
    {
        name: "Security Command Center",
        description: "Security management and data risk platform"
    }
)
MERGE (webSecurityScanner:GCP_Service
    {
        name: "Web Security Scanner",
        description: "App engine security scanner"
    }
)
MERGE (confidentialComputing:GCP_Service
    {
        name: "Confidential Computing",
        description: "Encrypt data in-use"
    }
)
MERGE (accessContextManager:GCP_Service
    {
        name: "Access Context Manager",
        description: "End-user attribute-based access control"
    }
)
MERGE (eventThreatDetection:GCP_Service
    {
        name: "Event Threat Detection",
        description: "Scans for suspicious activity"
    }
)
MERGE (ManagedServiceForMicrosoftAD:GCP_Service
    {
        name: "Managed Service for Microsoft Active Directory",
        description: "Managed Microsoft Active Directory"
    }
)
MERGE (secretManager:GCP_Service
    {
        name: "Secret Manager",
        description: "Store and manage secrets"
    }
)
MERGE (securityKeyEnforcement:GCP_Service
    {
        name: "Security Key Enforcement",
        description: "Two-step key verification"
    }
)
MERGE (ShieldedVMsSecurity:GCP_Service
    {
        name: "Shielded VMs",
        description: "Hardened VMs"
    }
) // Duplicated name handled
MERGE (titanSecurityKey:GCP_Service
    {
        name: "Titan Security Key",
        description: "Two-factor authentication (2FA) device"
    }
)
MERGE (VpcServiceControlsSecurity:GCP_Service
    {
        name: "VPC Service Controls",
        description: "VPC data constraints"
    }
) // Duplicated name handled
MERGE (chronicle:GCP_Service
    {
        name: "Chronicle",
        description: "Find threats from security telemetry"
    }
)
MERGE (virusTotal:GCP_Service
    {
        name: "VirusTotal",
        description: "Research/hunt for malware"
    }
)
MERGE (riskManager:GCP_Service
    {
        name: "Risk Manager",
        description: "Evaluate organization’s security posture"
    }
)
MERGE (reCAPTCHAEnterprise:GCP_Service
    {
        name: "reCAPTCHA Enterprise",
        description: "Protection against bot/spam/abuse"
    }
)
MERGE (beyondCorpEnterprise:GCP_Service
    {
        name: "BeyondCorp Enterprise",
        description: "Zero trust secure access"
    }
)

// Joining Identity and Security services to Identity and Security service family
MERGE (accessTransparency)-[:PART_OF]->(SecurityandIdentity)
MERGE (assuredWorkloads)-[:PART_OF]->(SecurityandIdentity)
MERGE (binaryAuthorization)-[:PART_OF]->(SecurityandIdentity)
MERGE (certificateAuthorityService)-[:PART_OF]->(SecurityandIdentity)
MERGE (cloudAssetInventory)-[:PART_OF]->(SecurityandIdentity)
MERGE (cloudAuditLogs)-[:PART_OF]->(SecurityandIdentity)
MERGE (cloudDLP)-[:PART_OF]->(SecurityandIdentity)
MERGE (cloudHSM)-[:PART_OF]->(SecurityandIdentity)
MERGE (cloudEKM)-[:PART_OF]->(SecurityandIdentity)
MERGE (cloudIAM)-[:PART_OF]->(SecurityandIdentity)
MERGE (cloudIdentity)-[:PART_OF]->(SecurityandIdentity)
MERGE (cloudIAP)-[:PART_OF]->(SecurityandIdentity)
MERGE (cloudKMS)-[:PART_OF]->(SecurityandIdentity)
MERGE (resourceManager)-[:PART_OF]->(SecurityandIdentity)
MERGE (securityCommandCenter)-[:PART_OF]->(SecurityandIdentity)
MERGE (webSecurityScanner)-[:PART_OF]->(SecurityandIdentity)
MERGE (confidentialComputing)-[:PART_OF]->(SecurityandIdentity)
MERGE (accessContextManager)-[:PART_OF]->(SecurityandIdentity)
MERGE (eventThreatDetection)-[:PART_OF]->(SecurityandIdentity)
MERGE (ManagedServiceForMicrosoftAD)-[:PART_OF]->(SecurityandIdentity)
MERGE (secretManager)-[:PART_OF]->(SecurityandIdentity)
MERGE (securityKeyEnforcement)-[:PART_OF]->(SecurityandIdentity)
MERGE (ShieldedVMsSecurity)-[:PART_OF]->(SecurityandIdentity)
MERGE (titanSecurityKey)-[:PART_OF]->(SecurityandIdentity)
MERGE (VpcServiceControlsSecurity)-[:PART_OF]->(SecurityandIdentity)
MERGE (chronicle)-[:PART_OF]->(SecurityandIdentity)
MERGE (virusTotal)-[:PART_OF]->(SecurityandIdentity)
MERGE (riskManager)-[:PART_OF]->(SecurityandIdentity)
MERGE (reCAPTCHAEnterprise)-[:PART_OF]->(SecurityandIdentity)
MERGE (beyondCorpEnterprise)-[:PART_OF]->(SecurityandIdentity)


 // DevOps CI/CD services
MERGE (CloudBuild:GCP_Service
    {
        name: "Cloud Build",
        description: "Continuous integration/delivery platform"
    }
)
MERGE (CloudDeploy:GCP_Service
    {
        name: "Cloud Deploy",
        description: "Deployment pipeline for GKE"
    }
)
MERGE (Artifact Registry:GCP_Service:Containers
    {
        name: "Artifact Registry",
        description: "Universal package manager"
    }
)
MERGE (cloudSourceRepositories:GCP_Service
    {
        name: "Cloud Source Repositories",
        description: "Hosted private git repos"
    }
)
MERGE (containerRegistry:GCP_Service
    {
        name: "Container Registry",
        description: "Private container registry/Storage"
    }
)

// Joining DevOps CI/CD services to DevOps CI/CD service family
MERGE (CloudBuild)-[:PART_OF]->(DevOpsCICD)
MERGE (CloudDeploy)-[:PART_OF]->(DevOpsCICD)
MERGE (Artifact Registry)-[:PART_OF]->(DevOpsCICD)
MERGE (cloudSourceRepositories)-[:PART_OF]->(DevOpsCICD)
MERGE (containerRegistry)-[:PART_OF]->(DevOpsCICD)

// Application Integration services
MERGE (eventarc:GCP_Service
    {
        name: "Eventarc",
        description: "Event-driven Cloud Run services"
    }
)
MERGE (cloudScheduler:GCP_Service
    {
        name: "Cloud Scheduler",
        description: "Managed cron job service"
    }
)
MERGE (cloudTasks:GCP_Service
    {
        name: "Cloud Tasks",
        description: "Asynchronous task execution"
    }
)
MERGE (workflows:GCP_Service
    {
        name: "Workflows",
        description: "HTTP services orchestration"
    }
)
MERGE (PubSub:AppIntegration:GCP_Service
    {
        name: "Pub/Sub",
        description: "Global real-time messaging"
    }
)  

// Joining Application Integration services to Application Integration service family
MERGE (eventarc)-[:PART_OF]->(AppIntegration)
MERGE (cloudScheduler)-[:PART_OF]->(AppIntegration)
MERGE (cloudTasks)-[:PART_OF]->(AppIntegration)
MERGE (workflows)-[:PART_OF]->(AppIntegration)
MERGE (PubSub)-[:PART_OF]->(AppIntegration)

// API Platform and Ecosystems services
MERGE (apiAnalytics:GCP_Service
    {
        name: "API Analytics",
        description: "API metrics"
    }
)
MERGE (apiMonetization:GCP_Service
    {
        name: "API Monetization",
        description: "Monetize APIs"
    }
)
MERGE (apigeeAPIPlatform:GCP_Service
    {
        name: "Apigee API Platform",
        description: "Develop, secure, monitor APIs"
    }
)
MERGE (apiGateway:GCP_Service
    {
        name: "API Gateway",
        description: "Fully managed API Gateway"
    }
)
MERGE (apigeeHybrid:GCP_Service
    {
        name: "Apigee Hybrid",
        description: "Manage hybrid/multi-cloud API environments"
    }
)
MERGE (apigeeSense:GCP_Service
    {
        name: "Apigee Sense",
        description: "API protection from attacks"
    }
)
MERGE (cloudEndpoints:GCP_Service
    {
        name: "Cloud Endpoints",
        description: "Cloud API gateway"
    }
)
MERGE (developerPortal:GCP_Service
    {
        name: "Developer Portal",
        description: "API management portal"
    }
)
MERGE (Marketplace:GCP_Service
    {
        name: "Marketplace",
        description: "Partner & open source marketplace"
    }
)
MERGE (appSheet:GCP_Service
    {
        name: "AppSheet",
        description: "No-code App creation"
    }
)

// Joining API Platform and Ecosystems services to API Platform and Ecosystems service family
MERGE (apiAnalytics)-[:PART_OF]->(ApiPlatform)
MERGE (apiMonetization)-[:PART_OF]->(ApiPlatform)
MERGE (apigeeAPIPlatform)-[:PART_OF]->(ApiPlatform)
MERGE (apiGateway)-[:PART_OF]->(ApiPlatform)
MERGE (apigeeHybrid)-[:PART_OF]->(ApiPlatform)
MERGE (apigeeSense)-[:PART_OF]->(ApiPlatform)
MERGE (cloudEndpoints)-[:PART_OF]->(ApiPlatform)
MERGE (developerPortal)-[:PART_OF]->(ApiPlatform)
MERGE (Marketplace)-[:PART_OF]->(ApiPlatform)
MERGE (appSheet)-[:PART_OF]->(ApiPlatform)

// Joining IOT services to Internet of Things (IOT) service family
MERGE (cloudIOTCore)-[:PART_OF]->(IOT)

// Gaming services
MERGE (gameServers:GCP_Service
    {
        name: "Google Cloud Game Servers",
        description: "Orchestrate Agones clusters"
    }
)

// Joining Gaming services to Gaming service family
MERGE (gameServers)-[:PART_OF]->(Gaming)

// Healthcare services
MERGE (cloudHealthcareAPI:GCP_Service
    {
        name: "Cloud Healthcare API",
        description: "Healthcare system Google Cloud interoperability"
    }
)
MERGE (apigeeHealthcareAPIx:GCP_Service
    {
        name: "Apigee Healthcare APIx",
        description: "Healthcare system Google Cloud interoperability"
    }
)
MERGE (HealthcareNLP:GCP_Service
    {
        name: "Healthcare Natural Language AI",
        description: "Real-time insights from unstructured medical text"
    }
)
MERGE (cloudLifeSciences:GCP_Service
    {
        name: "Cloud Life Sciences",
        description: "Manage, process, transform biomedical data"
    }
)

// Joining Healthcare services to Healthcare service family
MERGE (cloudHealthcareAPI)-[:PART_OF]->(Healthcare)
MERGE (apigeeHealthcareAPIx)-[:PART_OF]->(Healthcare)
MERGE (HealthcareNLP)-[:PART_OF]->(Healthcare)
MERGE (cloudLifeSciences)-[:PART_OF]->(Healthcare)

// Retail services
// MERGE (visionProductSearch:GCP_Service
//     {
//         name: "Vision Product Search",
//         description: "Visual search for products"
//     }
// )
// MERGE (recommendationsAI:GCP_Service
//     {
//         name: "Recommendations AI",
//         description: "Create custom recommendations"
//     }
// )
MERGE (visualInspectionAI:GCP_Service
    {
        name: "Visual Inspection AI",
        description: "Train and deploy models to detect defects"
    }
)

// Joining Retail services to Retail service family
MERGE (visionProductSearch)-[:PART_OF]->(Retail)
MERGE (recommendationsAI)-[:PART_OF]->(Retail)
MERGE (visualInspectionAI)-[:PART_OF]->(Retail)

// Joining API Platform and Ecosystems services to their service family
MERGE (apiAnalytics)-[:PART_OF]->(ApiPlatform)
MERGE (apiMonetization)-[:PART_OF]->(ApiPlatform)
MERGE (apigeeAPIPlatform)-[:PART_OF]->(ApiPlatform)
MERGE (apiGateway)-[:PART_OF]->(ApiPlatform)
MERGE (apigeeHybrid)-[:PART_OF]->(ApiPlatform)
MERGE (apigeeSense)-[:PART_OF]->(ApiPlatform)
MERGE (cloudEndpoints)-[:PART_OF]->(ApiPlatform)
MERGE (developerPortal)-[:PART_OF]->(ApiPlatform)
MERGE (Marketplace)-[:PART_OF]->(ApiPlatform)
MERGE (appSheet)-[:PART_OF]->(ApiPlatform)

// Joining IOT services to IOT service family
MERGE (cloudIOTCore)-[:PART_OF]->(IOT)

// Mobile (Firebase) services
MERGE (firebaseFirestore:GCP_Service
    {
        name: "Cloud Firestore",
        description: "Document store and sync"
    }
)
MERGE (firebaseFunctions:GCP_Service
    {
        name: "Cloud Functions for Firebase",
        description: "Event-driven serverless applications"
    }
)
MERGE (firebaseStorage:GCP_Service
    {
        name: "Cloud Storage for Firebase",
        description: "Object Storage and serving"
    }
)
MERGE (crashlytics:GCP_Service
    {
        name: "Crashlytics",
        description: "Crash reporting and analytics"
    }
)
MERGE (firebaseABTesting:GCP_Service
    {
        name: "Firebase A/B Testing",
        description: "Create A/B test experiments"
    }
)
MERGE (firebaseAppDistribution:GCP_Service
    {
        name: "Firebase App Distribution",
        description: "Trusted tester early access"
    }
)
MERGE (firebaseAuth:GCP_Service
    {
        name: "Firebase Authentication",
        description: "Drop-in authentication"
    }
)
MERGE (firebaseCloudMessaging:GCP_Service
    {
        name: "Firebase Cloud Messaging",
        description: "Send device notifications"
    }
)
MERGE (firebaseDynamicLinks:GCP_Service
    {
        name: "Firebase Dynamic Links",
        description: "Link to app content"
    }
)
MERGE (firebaseExtensions:GCP_Service
    {
        name: "Firebase Extensions",
        description: "Pre-packaged development solutions"
    }
)
MERGE (firebaseHosting:GCP_Service
    {
        name: "Firebase Hosting",
        description: "Web hosting with CDN/SSL"
    }
)
MERGE (firebaseInAppMessaging:GCP_Service
    {
        name: "Firebase In-App Messaging",
        description: "Send in-app contextual messages"
    }
)
MERGE (firebasePerformanceMonitoring:GCP_Service
    {
        name: "Firebase Performance Monitoring",
        description: "App/web performance monitoring"
    }
)
MERGE (firebasePredictions:GCP_Service
    {
        name: "Firebase Predictions",
        description: "Predict user targeting"
    }
)
MERGE (firebaseRealtimeDatabase:GCP_Service
    {
        name: "Firebase Realtime Database",
        description: "Real-time data synchronization"
    }
)
MERGE (firebaseRemoteConfig:GCP_Service
    {
        name: "Firebase Remote Config",
        description: "Remotely configure installed apps"
    }
)
MERGE (firebaseTestLab:GCP_Service
    {
        name: "Firebase Test Lab",
        description: "Mobile testing device farm"
    }
)
MERGE (GoogleAnalyticsFirebase:GCP_Service
    {
        name: "Google Analytics for Firebase",
        description: "Mobile app analytics"
    }
)
MERGE (MlKitFirebase:GCP_Service
    {
        name: "ML Kit for Firebase",
        description: "ML APIs for Mobile"
    }
)

// Joining Mobile (Firebase) services to Mobile (Firebase) service family
MERGE (firebaseFirestore)-[:PART_OF]->(Mobile)
MERGE (firebaseFunctions)-[:PART_OF]->(Mobile)
MERGE (firebaseStorage)-[:PART_OF]->(Mobile)
MERGE (crashlytics)-[:PART_OF]->(Mobile)
MERGE (firebaseABTesting)-[:PART_OF]->(Mobile)
MERGE (firebaseAppDistribution)-[:PART_OF]->(Mobile)
MERGE (firebaseAuth)-[:PART_OF]->(Mobile)
MERGE (firebaseCloudMessaging)-[:PART_OF]->(Mobile)
MERGE (firebaseDynamicLinks)-[:PART_OF]->(Mobile)
MERGE (firebaseExtensions)-[:PART_OF]->(Mobile)
MERGE (firebaseHosting)-[:PART_OF]->(Mobile)
MERGE (firebaseInAppMessaging)-[:PART_OF]->(Mobile)
MERGE (firebasePerformanceMonitoring)-[:PART_OF]->(Mobile)
MERGE (firebasePredictions)-[:PART_OF]->(Mobile)
MERGE (firebaseRealtimeDatabase)-[:PART_OF]->(Mobile)
MERGE (firebaseRemoteConfig)-[:PART_OF]->(Mobile)
MERGE (firebaseTestLab)-[:PART_OF]->(Mobile)
MERGE (GoogleAnalyticsFirebase)-[:PART_OF]->(Mobile)
MERGE (MlKitFirebase)-[:PART_OF]->(Mobile)

// Joining Gaming services to Gaming service family
MERGE (gameServers)-[:PART_OF]->(Gaming)

// Healthcare services
MERGE (HealthcareAPI:GCP_Service
    {
        name: "Cloud Healthcare API",
        description: "Healthcare system Google Cloud interoperability"
    }
)
MERGE (HealthcareAPIx:GCP_Service
    {
        name: "Apigee Healthcare APIx",
        description: "Healthcare system Google Cloud interoperability"
    }
)
MERGE (naturalLanguageAI:GCP_Service
    {
        name: "Healthcare Natural Language AI",
        description: "Real-time insights from unstructured medical text"
    }
)
MERGE (lifeSciences:GCP_Service
    {
        name: "Cloud Life Sciences",
        description: "Manage, process, transform biomedical data"
    }
)

// Joining Healthcare services to Healthcare service family
MERGE (HealthcareAPI)-[:PART_OF]->(Healthcare)
MERGE (HealthcareAPIx)-[:PART_OF]->(Healthcare)
MERGE (naturalLanguageAI)-[:PART_OF]->(Healthcare)
MERGE (lifeSciences)-[:PART_OF]->(Healthcare)


// Joining Retail services to Retail service family
MERGE (visionProductSearch)-[:PART_OF]->(Retail)
MERGE (recommendationsAI)-[:PART_OF]->(Retail)
MERGE (visualInspectionAI)-[:PART_OF]->(Retail)

// Management Tools services
MERGE (vmManager:GCP_Service
    {
        name: "VM Manager",
        description: "Manage OS VM Fleets"
    }
)
MERGE (cloudAPIs:GCP_Service
    {
        name: "Cloud APIs",
        description: "APIs for cloud services"
    }
)
MERGE (cloudBillingAPI:GCP_Service
    {
        name: "Cloud Billing API",
        description: "Programmatically manage Google Cloud billing"
    }
)
MERGE (cloudBilling:GCP_Service
    {
        name: "Cloud Billing",
        description: "Billing and cost management tools"
    }
)
MERGE (cloudConsole:GCP_Service
    {
        name: "Cloud Console",
        description: "Web-based management console"
    }
)
MERGE (CloudDeploymentManager:GCP_Service
    {
        name: "Cloud Deployment Manager",
        description: "Templated infrastructure deployment"
    }
)
MERGE (cloudMobileApp:GCP_Service
    {
        name: "Cloud Mobile App",
        description: "iOS/Android Google Cloud manager app"
    }
)
MERGE (privateCatalog:GCP_Service
    {
        name: "Private Catalog",
        description: "Internal Solutions Catalog"
    }
)
MERGE (carbonFootprint:GCP_Service
    {
        name: "Carbon Footprint",
        description: "Report and reduce carbon emissions"
    }
)

// Joining Management Tools services to Management Tools service family
MERGE (vmManager)-[:PART_OF]->(ManagementTools)
MERGE (cloudAPIs)-[:PART_OF]->(ManagementTools)
MERGE (cloudBillingAPI)-[:PART_OF]->(ManagementTools)
MERGE (cloudBilling)-[:PART_OF]->(ManagementTools)
MERGE (cloudConsole)-[:PART_OF]->(ManagementTools)
MERGE (CloudDeploymentManager)-[:PART_OF]->(ManagementTools)
MERGE (cloudMobileApp)-[:PART_OF]->(ManagementTools)
MERGE (privateCatalog)-[:PART_OF]->(ManagementTools)
MERGE (carbonFootprint)-[:PART_OF]->(ManagementTools)

// Developer Tools services
MERGE (cloudCodeIntelliJ:GCP_Service
    {
        name: "Cloud Code for IntelliJ",
        description: "IntelliJ Google Cloud tools"
    }
)
MERGE (cloudCodeVSCode:GCP_Service
    {
        name: "Cloud Code for VS Code",
        description: "VS Code Google Cloud tools"
    }
)
MERGE (cloudCode:GCP_Service
    {
        name: "Cloud Code",
        description: "Cloud native IDE extensions"
    }
)
MERGE (cloudToolsEclipse:GCP_Service
    {
        name: "Cloud Tools for Eclipse",
        description: "Eclipse Google Cloud tools"
    }
)
MERGE (cloudToolsVisualStudio:GCP_Service
    {
        name: "Cloud Tools for Visual Studio",
        description: "Visual Studio Google Cloud tools"
    }
)
MERGE (AppEnginePlugins:GCP_Service
    {
        name: "App Engine Plugins",
        description: "Gradle/Maven App Engine plugin"
    }
)
MERGE (cloudSDK:GCP_Service
    {
        name: "Cloud SDK",
        description: "CLI for Google Cloud"
    }
)
MERGE (cloudShell:GCP_Service
    {
        name: "Cloud Shell",
        description: "Browser-based terminal/CLI"
    }
)

// Joining Developer Tools services to Developer Tools service family
MERGE (cloudCodeIntelliJ)-[:PART_OF]->(DeveloperTools)
MERGE (cloudCodeVSCode)-[:PART_OF]->(DeveloperTools)
MERGE (cloudCode)-[:PART_OF]->(DeveloperTools)
MERGE (cloudToolsEclipse)-[:PART_OF]->(DeveloperTools)
MERGE (cloudToolsVisualStudio)-[:PART_OF]->(DeveloperTools)
MERGE (AppEnginePlugins)-[:PART_OF]->(DeveloperTools)
MERGE (cloudSDK)-[:PART_OF]->(DeveloperTools)
MERGE (cloudShell)-[:PART_OF]->(DeveloperTools)
