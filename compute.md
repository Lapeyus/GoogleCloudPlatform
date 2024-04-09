---
markmap:
  initialExpandLevel: 2
  maxWidth: 300
  embedAssets: true
---
# [Google Cloud Computing Services](https://lapeyus.github.io/GoogleCloudPlatform/)

## Choosing the Right Compute Service: Key Questions

* **Level of control:** How much control do you need over the underlying infrastructure? (Compute Engine offers maximum control, while Cloud Functions offer the least)
* **Application architecture:** Do you use containers or plan to containerize your applications? (GKE and Cloud Run are ideal for containerized workloads)
* **Operational overhead:** How much infrastructure management do you wish to handle? (App Engine and Cloud Functions offer a more managed experience)
* **Event-driven:** Does your application react to specific triggers? (Cloud Functions are built with event-driven architectures in mind)
* **Legacy workload migration:** Do you need to move existing on-premises workloads to the cloud? (Compute Engine is well-suited for this)

## Additional Considerations

* **Cost:**  Evaluate pricing models based on your expected usage patterns.
* **Integration:** Consider how the service will integrate with other cloud services or your existing systems. 


## Compute Services

### **Compute Engine**
  - **Type:** IaaS (Infrastructure as a Service)
  - **Features:**
    - Flexible virtual machines (VMs) with predefined or custom configurations.
    - Diverse compute, memory, and storage options (including high-performance SSDs).
    - Global load balancing and autoscaling capabilities.
    - Pay-per-second billing and preemptible VMs for cost optimization.
  - **Ideal for:**
    - Workloads requiring full control over the operating system and environment.
    - Migrating existing applications from on-premises infrastructure. 

### **Google Kubernetes Engine (GKE)**
  - **Type:** PaaS (Platform as a Service)
  - **Features:**
    - Managed Kubernetes environment for deploying and managing containerized applications.
    - Automatic scaling, self-healing, and integration with other Google Cloud services.
    - Portable and consistent experience across on-premises and cloud environments (based on Knative).
  - **Ideal for:**
    - Microservices architectures.
    - Cloud-native applications.
    - Hybrid cloud deployments or apps requiring high levels of customization. 

### **App Engine**
  - **Type:** PaaS (Platform as a Service)
  - **Features:**
    - Fully managed platform for deploying web apps, mobile backends, and APIs.
    - Supports various popular languages (Java, Python, Node.js, PHP, C#, .NET, Ruby, Go) and custom runtimes (containers).
    - Automatic scaling and load balancing.
    - Integrated with Google Cloud's developer tools (Monitoring, Logging, etc.).
  - **Ideal for:**
    - Apps prioritizing developer productivity and minimal infrastructure management.

### **Cloud Functions**
  - **Type:** FaaS (Function as a Service)
  - **Features:**
    - Event-driven compute platform for running single-purpose functions.
    - Supports Node.js, Python, Go, Java, .Net Core, Ruby, and PHP.
    - Automatic scaling based on demand, and pay only per execution.
    - Perpetual free tier for lightweight usage. 
  - **Ideal for:**
    - Microservices and event-driven architectures.
    - Real-time processing and stream analytics.
    - Integrating with third-party systems and cloud events.

### **Cloud Run**
  - **Type:** PaaS (Platform as a Service)
  - **Features:**
    - Serverless platform for running stateless containers.
    - Handles infrastructure management and scales automatically, including scaling down to zero.
    - Pay-as-you-go pricing based on actual resource consumption.
    - Built on Knative for portability and a consistent experience.
  - **Ideal for:** 
    - Web applications and APIs responding to HTTP requests.
    - Event-driven workloads triggered by Pub/Sub messages or other events.
    - Deployments emphasizing developer velocity without server management.


