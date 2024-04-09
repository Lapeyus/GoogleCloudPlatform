## kubectl Overview

- **What is kubectl?**
  - Utility for Kubernetes cluster management
  - Communicates with Kube API server
  - Transforms CLI entries into API calls
- **Configuration**
  - Requires cluster location and credentials
  - Configuration stored in `.kube` directory
- **Usage**
  - View configuration: `kubectl config view`
  - Connect to GKE cluster: `gcloud get-credentials`
- **Commands Syntax**
  - Composed of command, type, name, and flags
  - Examples
    - List pods: `kubectl get pod`
    - View pod state: `kubectl get pod my-test-app -o=yaml`
