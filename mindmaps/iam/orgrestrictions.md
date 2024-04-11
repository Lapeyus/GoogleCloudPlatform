---
markmap:
  maxWidth: 300
---

# Organization Restrictions in Google Cloud

- ## **Overview of Organization Restrictions**
  - Designed to prevent data exfiltration through:
    - **Phishing attacks**
    - **Insider attacks**
  - Restricts device access to resources within authorized Google Cloud organizations only.

- ## **Key Stakeholders**
  - **Google Cloud Administrators**
    - Manage Google Cloud resources and permissions.
  - **Egress Proxy Administrators**
    - Configure proxies to enforce organization restrictions.

- ## **Implementation of Organization Restrictions**
  - ### **Managed Devices**
    - Devices under organizational control via policies.
    - Used by employees to access organizational resources.

  - ### **Proxy Configuration**
    - An egress proxy admin adds organization restriction headers to requests from managed devices.
    - This configuration blocks access to resources outside the authorized organizations.

- ## **Operation of Organization Restrictions**
  - Google Cloud inspects incoming requests for organization restrictions headers.
  - Requests are allowed or denied based on the specified organization in the header.

- ## **Use Cases for Organization Restrictions**
  - **Resource-Specific Access**
    - Example: Employees can read from Cloud Storage but only within your Google Cloud organization.
  - **Cross-Organization Access**
    - Example: Employees can access resources in a vendor’s Google Cloud organization alongside your own.

- ## **Benefits of Implementing Organization Restrictions**
  - Ensures that employees access only those resources that are within approved organizations.
  - Helps in safeguarding sensitive data and preventing unauthorized data access.
