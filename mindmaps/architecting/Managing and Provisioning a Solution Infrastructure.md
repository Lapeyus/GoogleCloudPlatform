## Role of a Professional Cloud Architect
- Understand available cloud services
- Configure services optimally for client's needs
- Select appropriate services for specific tasks

## Selected Resources
- Networking: Global HTTP(S) Load Balancer
- Compute: Google Kubernetes Engine (GKE), Compute Engine, Cloud Run
- Storage: Cloud Storage

## Configuration Strategy
- Start with broad service selection
- Focus on optimal implementation of selected products
- Avoid roles of implementation or data engineering unless required

## Issues and Solutions
- **Latency Issues in Drone Service**:
  - Initial Setup: DNS load balancing across regions
  - Problem: Traffic misrouted causing high latency
  - Solution: Switch to Global HTTP(S) Load Balancer with custom-mode network
  - Benefits: Lower latency due to regional traffic handling

## Networking Configuration
- **Custom Mode Networks**:
  - Avoid default/auto-mode to prevent high-latency region deployment
  - Use Global HTTP(S) Load Balancer for low-latency, global IP routing
- **Firewall Rules**:
  - Manually configure firewall; do not rely on default rules
- **Organization Policy Constraints**:
  - `compute.skipDefaultNetworkCreation`: Prevents default network creation
  - `compute.restrictSharedVpcSubnetworks`: Ensures deployment in approved subnets

## Compute Options and Configuration
- **Cloud Run**:
  - Deploy new containerized services
  - Configure with high minimum instances to reduce cold starts
- **Google Kubernetes Engine (GKE)**:
  - Lift and shift existing Kubernetes applications
  - Utilize autoscaling and preserve kubectl workflows
- **Compute Engine**:
  - Run stateful or monolithic apps on VMs
  - Use managed instance groups and Shielded VMs for enhanced security and scalability

## Storage Solutions
- **Choice of Storage**:
  - Filestore vs. Cloud Storage: Chose Cloud Storage for scalability and cost-effectiveness
- **Data Management**:
  - Implement lifecycle policies to delete old drone videos after 30 days
  - Option to transition infrequently accessed data to cheaper storage classes

## Key Takeaways
- Addressed pilot-reported latency using strategic networking tools
- Selected compute resources based on application needs and preferred workflows
- Optimized storage usage and cost with Cloud Storage and lifecycle management
