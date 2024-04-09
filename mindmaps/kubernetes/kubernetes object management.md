# Kubernetes Object Management

## Key Concepts

### Kubernetes Objects
- Identified by a unique name and UID.
- Defined through manifest files in YAML or JSON format.

### Manifest File Fields
- `apiVersion`: Specifies the Kubernetes API version.
- `kind`: Defines the type of object (e.g., Pod, Deployment).
- `metadata`: Provides identifying information (name, UID, optional namespace).

### Best Practices
- Group related objects in the same YAML file for easier management.
- Use Cloud Source Repositories for version control and permission management.

### Object Naming
- Names must be unique within a namespace, allowing for re-use after deletion.
- Alphanumeric, hyphens, and periods are permitted (up to 253 characters).

### Labels and Selectors
- Key-value pairs that tag objects for organization and selection.
- `kubectl` can filter objects based on label selectors.

## Managing Workloads

### Deployments
- Manages a set of replica Pods.
- Ensures a specified number of Pods are running.
- Controllers monitor and maintain the desired state of Pods.

### Resource Management
- Specify CPU and memory requirements to avoid resource contention.
- Resource quotas can be set at the namespace level for control.

## Namespaces

### Purpose
- Abstract a physical cluster into multiple virtual clusters.
- Scope for naming resources and implementing resource quotas.

### Default Namespaces
- `default`: For objects with no other namespace.
- `kube-system`: For objects created by the Kubernetes system.
- `kube-public`: For objects that should be publicly accessible.

### Usage
- Namespaces help avoid name collisions and organize resources.
- Apply namespaces via the command line or in the YAML manifest.

## Practical Tips

- Prefer using labels and namespaces to organize and manage resources efficiently.
- Embed namespace names in YAML files with caution to maintain flexibility.
- Utilize resource quotas within namespaces to manage and control resource consumption effectively.

Understanding and applying these concepts will help you effectively manage and scale your Kubernetes workloads with precision and control.
