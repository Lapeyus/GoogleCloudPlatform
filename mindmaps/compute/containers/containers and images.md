# Containerization Mind Map

## Introduction to Containers and Images
- **Application Packaging**
  - An application and its dependencies are packaged as an image.
- **Containers**
  - A container is a running instance of an image.

## Building Container Images
- **Software Requirements**
  - Specific software is needed to build container images and to run them.
- **Docker**
  - Docker is a tool that builds and runs containers but does not orchestrate at scale.

## Docker and Kubernetes
- **Orchestration**
  - Kubernetes orchestrates containers at scale, unlike Docker.

## Google's Cloud Build
- **Usage**
  - In this course, we will use Google’s Cloud Build for creating Docker-formatted container images.

## Container Technologies
- **Linux Processes**
  - Each Linux process has its own virtual memory address space.
- **Namespaces and Cgroups**
  - Linux namespaces isolate workloads.
  - Cgroups control resource consumption.
- **Union File Systems**
  - Used for encapsulating applications and their dependencies.

## Container Images
- **Layers**
  - Container images are structured in layers based on the Dockerfile.
- **Dockerfile Commands**
  - `FROM`, `COPY`, `RUN`, and command specification for container launch.
- **Best Practices**
  - Modern practices use multi-stage builds for efficiency and security.

## Running Containers
- **Writable Container Layer**
  - When a container runs, it adds a new writable layer on top.
- **Data Storage**
  - Permanent data storage should be external to the container.

## Sharing and Storing Images
- **Shared Base Images**
  - Multiple containers can share the same base image.
- **Artifact Registry**
  - Central place to store container images and integrate with other Google Cloud services.

## Cloud Build
- **Managed Service**
  - Google’s Cloud Build is a managed service for building container images, integrated with IAM.
- **Build Steps**
  - Configurable steps for building images, including fetching dependencies and compiling source code.
