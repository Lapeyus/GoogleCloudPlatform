# IAM

## Members Definition
- ### Members
  - Describes "who" can do "what" on which resource
  - #### Types of Members
    - ##### Google Accounts
      - Represents developers, administrators, etc.
      - Identity via any email associated with Google accounts
    - ##### Service Accounts
      - Belongs to applications, not end users
      - Used to run code on Google Cloud
      - Create multiple for different application components
    - ##### Google Groups
      - Named collection of Google accounts and service accounts
      - Has unique email address
      - Convenient for applying access policies collectively
    - ##### Google Workspace Domains
      - Represents all Google accounts in an organization's Workspace
      - Virtual group of users, e.g., `username@example.com`
    - ##### Cloud Identity Domains
      - Manage users and groups via Google Admin Console
      - No access to Workspace’s products like Gmail, Docs

## Policy Management
- #### Policies
  - ###### Definition
    - A list of bindings that bind members to roles
  - ###### Roles
    - Named list of permissions defined by IAM
  - ###### Hierarchy
    - Access statements attached to a resource
    - Inherits policies from parent resources
    - Policy changes follow resource hierarchy changes

## Access Controls
- #### Allow Policies
  - Defines access via role bindings
  - Example: 
    - `Jie@example.com` as Organization Admin
    - `Jie@example.com` & `Raha@example.com` as Project Creators
- #### Deny Policies
  - Set guardrails to prevent access
  - Specify principals and denied permissions
  - IAM checks deny policies before allow policies

## Conditional Access
- #### IAM Conditions
  - Grant access based on attributes and conditions
  - Conditions specified in role bindings
  - Access granted if condition expressions evaluate to true

## Organizational Controls
- #### Organization Policies
  - Configure constraints and restrictions for an organization
  - Applied to organization node and inherited by descendants
- #### Integration with Corporate Directories
  - ###### Google Cloud Directory Sync
    - Syncs with Active Directory or LDAP
    - One-way synchronization
  - ###### Single Sign-On (SSO)
    - Use existing identity systems (supports SAML2)
    - Integration with ADFS, Ping, Okta
