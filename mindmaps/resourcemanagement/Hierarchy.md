# Google Cloud Resource Hierarchy and Project Overview

- ## Hierarchy
  - Every Google Cloud resource belongs to a project.
  - A project organizes resources, manages billing, and controls access, with a unique identifier.

- ## Google Cloud's Resource Hierarchy
  - **Levels**:
    - **Resources**: Base level, includes VMs, containers, BigQuery tables, etc.
    - **Projects**: Second level, containers for resources.
    - **Folders**: Third level, organize projects into folders/subfolders.
    - **Organization Node**: Top level, encompasses all projects, folders, and resources.
  - **Policy Management**:
    - Policies can be defined at
      - project level
      - folder level
      - organization level
      - some reources level
    - Policies are inherited downward.

- ## Projects in Detail
  - **Functionality**:
    - Basis for enabling Google Cloud services.
    - Manage APIs, billing, collaborators, and services.
  - **3 Identifiers**:
    - **Project ID**: Globally unique, immutable.
    - **Project Name**: User-created, mutable, non-unique.
    - **Project Number**: Google-generated, unique.
  - **Billing and Management**:
    - Projects are billed and managed separately.
    - Can have different owners and users.

- ## Using Folders and Organization Nodes
  - **Folders**:
    - Group projects under an organization.
    - Useful for departmental organization and administrative delegation.
  - **Organization Node**:
    - Administrative control over all resources.

- ## Security and Access Management
  - **Identity and Access Management (IAM)**:
    - Define who (principals) can do what (roles) on resources.
    - Principals include Google accounts, groups, service accounts, or domains.
    - Roles are collections of permissions.
  - **Shared Responsibility for Security**:
    - Cloud provider secures the cloud infrastructure.
    - Customers secure their configurations, policies, and data.
    - Emphasizes the collaborative nature of cloud security.