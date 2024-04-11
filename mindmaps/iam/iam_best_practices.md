---
markmap:
  maxWidth: 300
---

# Cloud IAM Best Practices

- ## **Understanding Resource Hierarchy**
  - **Use Projects to Group Resources**: Group resources that share the same trust boundary into projects.
  - **Policy Inheritance**: Recognize that policies granted on each resource may inherit from higher up in the hierarchy.
  - **Principle of Least Privilege**: Always grant the minimum necessary roles to prevent excessive permissions.
  - **Audit Strategies**:
    - Use **Cloud Audit Logs** to review actions and changes.
    - Audit group memberships to ensure correct policy implementations.

- ## **Role Assignment to Groups**
  - **Use Groups for Roles**:
    - Assign roles to groups instead of individuals to simplify management.
    - Update group membership to change access rights, rather than IAM policies directly.
  - **Ownership and Membership Auditing**:
    - Regularly check who belongs to groups used in IAM policies.
    - Control the ownership of Google Groups involved in IAM to prevent unauthorized changes.
  - **Multiple Groups for Granular Control**:
    - Example: Separate groups for network admins, and read-write or read-only access to Cloud Storage.

- ## **Best Practices for Service Accounts**
  - **Careful Role Granting**:
    - Be cautious with the **Service Account User** role as it allows access to all resources the service account can access.
  - **Naming Conventions**:
    - Use clear, descriptive display names for service accounts that reflect their purpose based on established naming conventions.
  - **Key Management**:
    - Implement key rotation policies to maintain security.
    - Audit service account keys using the `serviceAccount.keys.list` method in IAM API.

- ## **Using Cloud Identity Aware Proxy (Cloud IAP)**
  - **Central Authorization Layer**:
    - Cloud IAP provides a centralized, application-level access control layer, reducing reliance on network-level firewalls.
  - **Application and Resource Access**:
    - Protect applications and resources with Cloud IAP to allow access only via the proxy, ensuring users and groups have appropriate roles.
  - **Authentication and Authorization**:
    - Cloud IAP performs necessary checks to validate user access requests to secured resources, facilitating secure and VPN-less entry.

- ## **Example Scenario: Role-Based Group Management**
  - **Network Admin Group**:
    - Members require varying access levels to Cloud Storage:
      - Some need read-write access.
      - Others need read-only access.
    - Manage access through membership in corresponding groups (`ReadWriteGroup`, `ReadOnlyGroup`).
