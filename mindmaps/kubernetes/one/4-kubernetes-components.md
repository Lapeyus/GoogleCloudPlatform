# Kubernetes Control Panel Overview

- **Introduction**
  - The Kubernetes control panel is a fleet of cooperating processes essential for the operation of a Kubernetes cluster.
  - Understanding the components and their roles is crucial for managing and interacting with the cluster.

- **Kubernetes Cluster Construction**
  - Opportunity to learn how a Kubernetes cluster is constructed, highlighting the ease of management in GKE compared to self-provisioned clusters.

- **Cluster Components**
  - **Computers**
    - Clusters require computers, typically virtual machines (always in GKE, but can also be physical).
  - **Control Plane**
    - One computer acts as the control plane, coordinating the entire cluster.
  - **Nodes**
    - Other computers are nodes, responsible for running Pods.

- **Control-Plane Components**
  - Critical Kubernetes components reside on the control plane.
    - **kube-APIserver**
      - The central component for 
        - cluster management
        - handling commands
        - authentication
        - authorization 
        - admission control.
    - **kubectl Command**
      - Facilitates communication with kube-APIserver using the Kubernetes API.
    - **etcd**
      - The cluster’s database, storing state and configuration data.
    - **kube-scheduler**
      - Schedules Pods onto nodes based on requirements and constraints.
    - **kube-controller-manager**
      - Monitors cluster state and works to achieve the desired state through controllers.
    - **kube-cloud-manager**
      - Manages integration with cloud providers, enabling features like load balancers and storage volumes.

- **Node Components**
  - **kubelet**
    - Acts as the agent of Kubernetes on each node, managing Pod lifecycles and reporting to kube-APIserver.
  - **Container Runtime**
    - The software for launching containers; GKE uses containerd.
  - **kube-proxy**
    - Maintains network connectivity among Pods, utilizing iptables for firewalling in open source Kubernetes.

- **GKE vs. Kubernetes**
  - GKE simplifies management by handling control plane components, offering managed infrastructure, and providing modes like Autopilot for further automation and management of the underlying infrastructure.
