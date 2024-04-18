# Cloud Architecture Mindmap for Cymbal Direct

## Role of Professional Cloud Architect
- Assess current environment
- Define business and technical requirements
- Design cloud solutions focusing on:
  - Compute
  - Networking
  - Storage
- Plan migrations
- Envision future improvements

## Assessment and Planning
- Understand the current infrastructure and goals
- **Migration Strategies:**
  - Lift and shift
  - Move to Google Cloud from another cloud
  - Migrate to a more modern architecture
- Post-migration optimization

## Current Challenges at Cymbal Direct
- Scaling issues in the existing environment
- Desire to migrate on-premises projects to Google Cloud

## Environment and Requirements Overview
- **Current Infrastructure:**
  - Delivery by drone: Kubernetes
  - Partner and product APIs: Ubuntu Linux VMs
  - Social media highlighting: SuSE Linux VM, MySQL, Redis
- **Requirements Gathering:**
  - Talk to environment managers
  - Define business and technical requirements

## Key Projects and Their Needs
- **Delivery by Drone:**
  - Frontend, pilot, and truck management on Kubernetes
  - Positional data on MongoDB
  - Drones connected to VMs using RTMP
- **Partner and Product APIs:**
  - Monolithic apps on Ubuntu VMs
- **Social Media Highlighting Service:**
  - Proof of concept on SuSE Linux VM

## Solutions Consideration
- **Redis Alternatives:**
  - Lift and shift Redis on VM
  - Migrate to Google Memorystore (Managed Redis)
- **Business Requirements:**
  - Scalability for testing new markets
  - Streamline development
  - Direct partner API interactions
  - Launch production-ready social media service
- **Technical Requirements:**
  - Prefer managed services
  - Deploy container-based workloads
  - Maintain some existing virtualization infrastructure

## Proposed Google Cloud Solutions
- **Global Load Balancers**
- **Google Kubernetes Engine (GKE)**
- **Managed Services Consideration:**
  - Compute Engine and App Engine for non-container needs
  - Cloud Run and GKE for container-based solutions

## Decision Flow Diagram Evaluation
- **Eliminate Non-Container Solutions:**
  - Compute Engine
  - App Engine
- **Potential Fits:**
  - Cloud Run
  - GKE (chosen due to existing Kubernetes use)

## Architectural Visualization
- Separate projects for development, testing, staging, and production environments
- High availability with multi-regional setup
- Simplified access control with IAM and folders

## Migration and Future Planning
- Create a detailed migration plan
- Envision future business transformations
- Potential future use of Cloud Run for improvements

 