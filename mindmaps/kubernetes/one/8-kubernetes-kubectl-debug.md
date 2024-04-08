# Debugging Kubernetes Applications with kubectl

- ## **Introduction to kubectl**
  - The primary tool for specifying actions on a Kubernetes cluster.

- ## **Introspection**
  - Act of gathering information about the containers, pods, services, etc., within the cluster.

- ## **Key Commands for Gathering App Information**
  - `get`
    - Begins with Pods, the basic units of Kubernetes.
    - `kubectl get pods` shows if a Pod is running and its phase status.
  - `describe`
    - Provides detailed information about Pods and their containers.
  - `exec`
    - Executes a single command inside a container.
  - `logs`
    - Shows what's happening inside a Pod; useful for troubleshooting.

- ## **Understanding Pod Phases**
  - `Pending`
    - Kubernetes has accepted the Pod, but it's still being scheduled.
  - `Running`
    - The Pod is attached to a node and its containers are created.
  - `Succeeded`
    - All containers in the Pod finished running successfully.
  - `Failed`
    - A container terminated with a failure.
  - `Unknown`
    - The state of the Pod cannot be retrieved.
  - `CrashLoopBackOff`
    - A container in the Pod exited unexpectedly and has been restarted at least once.

- ## **Detailed Investigation with `describe`**
  - Provides information on Pods and containers including labels, resource requirements, and volumes.

- ## **Executing Commands with `exec`**
  - Runs a command inside a container, useful for quick checks.

- ## **Viewing Logs with `logs`**
  - Essential for troubleshooting, showing errors or debugging messages from applications within the containers.

- ## **Interactive Shell for In-Pod Work**
  - `kubectl exec -it` launches an interactive shell inside a container.
  - Important for tasks requiring direct interaction, like installing a package for troubleshooting.

- ## **Best Practices and Recommendations**
  - Avoid installing software directly into containers at runtime.
  - Integrate necessary changes into container images and redeploy.
Introduction to kubectl**
  - The primary tool for specifying actions on a Kubernetes cluster.

- ## **Introspection**
  - Act of gathering information about the containers, pods, services, etc., within the cluster.

- ## **Key Commands for Gathering App Information**
  - `get`
    - Begins with Pods, the basic units of Kubernetes.
    - `kubectl get pods` shows if a Pod is running and its phase status.
  - `describe`
    - Provides detailed information about Pods and their containers.
  - `exec`
    - Executes a single command inside a container.
  - `logs`
    - Shows what's happening inside a Pod; useful for troubleshooting.

- ## **Understanding Pod Phases**
  - `Pending`
    - Kubernetes has accepted the Pod, but it's still being scheduled.
  - `Running`
    - The Pod is attached to a node and its containers are created.
  - `Succeeded`
    - All containers in the Pod finished running successfully.
  - `Failed`
    - A container terminated with a failure.
  - `Unknown`
    - The state of the Pod cannot be retrieved.
  - `CrashLoopBackOff`
    - A container in the Pod exited unexpectedly and has been restarted at least once.

- ## **Detailed Investigation with `describe`**
  - Provides information on Pods and containers including labels, resource requirements, and volumes.

- ## **Executing Commands with `exec`**
  - Runs a command inside a container, useful for quick checks.

- ## **Viewing Logs with `logs`**
  - Essential for troubleshooting, showing errors or debugging messages from applications within the containers.

- ## **Interactive Shell for In-Pod Work**
  - `kubectl exec -it` launches an interactive shell inside a container.
  - Important for tasks requiring direct interaction, like installing a package for troubleshooting.

- ## **Best Practices and Recommendations**
  - Avoid installing software directly into containers at runtime.
  - Integrate necessary changes into container images and redeploy.
