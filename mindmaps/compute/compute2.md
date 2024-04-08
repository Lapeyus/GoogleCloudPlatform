# Computing Options in GCP

## Introduction
- Comparison of computing choices in GCP, focusing on containers.

## Compute Engine
- **Features**:
  - Virtual Machines on GCP with predefined or custom configurations.
  - Supports block storage and local SSDs.
  - Managed instance groups and global load balancers for auto-scaling.
  - Per second billing and preemptible VMs for cost efficiency.
- **Why Choose**:
  - Complete control over infrastructure, ideal for lifting and shifting on-premises workloads.

## App Engine
- **Features**:
  - Fully managed application platform with zero server management.
  - Supports popular programming languages and container workloads.
  - Integrated monitoring, logging, version control, and traffic splitting.
- **Why Choose**:
  - Focuses on code development without the hassle of managing infrastructure. Ideal for websites, mobile apps, and RESTful API services.

## Google Kubernetes Engine (GKE)
- **Features**:
  - Managed Kubernetes service for containerized applications.
  - Supports cluster scaling, persistent disks, auto-updates, and auto-repair.
  - Integrated with Cloud Build, Container Registry, and Stackdriver.
- **Why Choose**:
  - Suited for containerized applications, cloud-native systems, and hybrid apps. Offers no vendor lock-in and easy migration from on-premises clusters.

## Cloud Run
- **Features**:
  - Managed compute platform for running stateless containers.
  - Abstracts infrastructure management, automatically scales, and charges for actual use.
  - Based on Knative, offers a consistent developer experience across environments.
- **Why Choose**:
  - Ideal for developers focusing on writing code for stateless applications without managing servers.

## Cloud Functions
- **Features**:
  - Event-driven serverless compute service for running simple, single-purpose functions.
  - Automatically scaled and fault-tolerant design with a perpetual free tier.
- **Why Choose**:
  - Suitable for microservices architecture, serverless backends, or integrating with third-party services. Offers real-time processing for events.

## Choosing the Right Compute Service
- **Path to Cloud**:
  - **Compute Engine**: Best for applications on physical servers or long-lived VMs.
  - **App Engine & Cloud Functions**: Ideal for operations-free development.
  - **GKE**: Offers control over containerized workloads and efficient resource use.
  - **Cloud Run**: Focuses on stateless containers with minimal management.
