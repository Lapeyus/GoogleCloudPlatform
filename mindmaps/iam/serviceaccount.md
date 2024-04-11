# Service Accounts Overview

- ## **Introduction to Service Accounts**
  - A **service account** is an account used specifically by an application, not individual end users.
  - Provides an identity for applications to interact with services without using personal credentials.

- ## **Use Cases for Service Accounts**
  - For example, an application interacting with Google Cloud Storage would use a service account to authenticate via the XML or JSON API.

- ## **Setting Up Service Accounts**
  - Enable service accounts in the cloud console.
  - Grant the necessary IAM roles and access permissions.
  - Configure the application to use service account credentials for authenticating with APIs.

- ## **Types of Service Accounts**
  - ### **Default Service Accounts**
    - **Compute Engine Default Service Account**
      - Automatically created for new projects.
      - Has the Editor role.
      - Identified by: `project-number-compute@developer.gserviceaccount.com`.
    - **Google Cloud APIs Service Account**
      - Runs internal Google processes.
      - Automatically has the Editor role.
  
  - ### **Custom Service Accounts**
    - Provide flexibility and are user-managed.
    - Require specifying access scopes or IAM roles.
    - Used by assigning to VM instances during or after creation.

- ## **Scopes and Roles**
  - ### **Authorization and Scopes**
    - **Scopes** determine permissions for service accounts (legacy method).
    - Examples:
      - **Read-Only:** Can only view data.
      - **Read-Write:** Can view and modify data.
  
  - ### **IAM Roles**
    - Modern method using IAM roles instead of scopes.
    - **Example Roles:**
      - **InstanceAdmin:** Manage VM instances and disks.
      - **Service Account User:** Operate as the service account.

- ## **Managing Service Accounts**
  - ### **Authentication Methods**
    - **Google-Managed Keys:** Automatically handled and rotated by Google.
    - **User-Managed Keys:** Managed by the user, with up to 10 keys per account for rotation.

  - ### **Key Management**
    - Use the IAM API, `gcloud` CLI, or the console to manage keys.
    - Important to securely manage and rotate user-managed keys.

- ## **Best Practices**
  - Consider using short-lived credentials or impersonation for enhanced security.
  - Be cautious when granting the Service Account User role due to its broad access.
