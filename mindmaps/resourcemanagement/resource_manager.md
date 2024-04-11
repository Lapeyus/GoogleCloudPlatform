---
markmap:
---

# Google Cloud Resource Management Overview

## Hierarchical Structure of Resources

- Google Cloud Platform (GCP) allows you to manage resources hierarchically using projects, folders, and an organization as the root node. This structure helps in organizing resources, managing permissions, and handling billing efficiently.

### Key Concepts

- **Organization Node**: The top-level container in GCP that contains all resources. An organization node is associated with the domain of the company and is managed by the organization admin (e.g., Bob).

- **Folders**: Subdivisions within an organization used to group projects that have common business attributes, policies, or permissions.

- **Projects**: Containers that organize all GCP resources. Each project is a separate billing unit and has its own set of permissions and credentials provided through Cloud IAM roles.

### Resource and Policy Management

- **IAM Policies**: 
  - **Allow Policies**: Inherit from the parent (organization or folder) to the child (project or resource), allowing specific roles and permissions.
  - **Deny Policies**: Can override inherited permissions by explicitly denying certain permissions to principals, regardless of their granted roles.

- **Billing**:
  - Accumulates from the bottom up; each project collects the consumption data of all its resources and associates these costs with a single billing account.
  - An organization can contain multiple billing accounts, each linked to one or more projects.

### Managing Resources

- **Resource Consumption**:
  - Measured based on usage rates, item counts, or specific feature uses.
  - Since resources are exclusive to a project, tracking and billing are streamlined at the project level.

- **Identifying Projects**:
  - **Project Name**: A human-readable identifier, not used in API calls.
  - **Project ID**: A unique identifier for the project, used extensively by Google APIs.
  - **Project Number**: A unique number automatically assigned by GCP, used internally for provisioning resources.

### Resource Hierarchy and Types

#### **Global Resources**: Such as Compute Engine resource policies, are available across all regions.
#### **Regional Resources**: Such as external IP addresses, are restricted to a specific region.
#### **Zonal Resources**: Such as compute instances and disks, are confined to a specific zone within a region.

#### Example Diagram
```
[Organization: example.com]
   │
   ├── [Folder: Engineering]
   │      ├── [Project: App Development]
   │      │       ├── [Compute Instance: app-server] (Zonal Resource)
   │      │       └── [Cloud SQL Instance: app-db] (Regional Resource)
   │      │
   │      └── [Project: Data Analysis]
   │              └── [BigQuery Dataset: traffic_data] (Global Resource)
   │
   └── [Folder: Marketing]
          └── [Project: Campaigns]
                  └── [Pub/Sub Topic: ad_events] (Global Resource)
```
### Use Cases

- **Resource Isolation**: Each project serves as an isolated environment, making it ideal for managing separate environments for development, testing, and production within the same organization.

- **Permission Management**: Granular IAM roles can be assigned at different levels (organization, folder, project) to control access and operations effectively.

- **Budget Control**: With each project linked to a separate billing account, it’s easier to allocate costs and manage budgets for different departments or teams.


