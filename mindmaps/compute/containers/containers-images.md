# Container Images and Docker Basics

## Concept of Container Images
- **Image vs. Container**: An image is a static definition that includes an application and its dependencies. A container is a running instance of this image.
- **Purpose**: Container images package software for consistent execution across environments.

## Building and Running Container Images
- **Docker**: A popular tool for creating and running container images, but lacks built-in orchestration.
- **Cloud Build**: Google's service for building Docker-formatted container images.

## Container Isolation Technologies
- **Linux Processes**: Provide each container with its own virtual memory and execution space.
- **Linux Namespaces**: Isolate containers' view of the operating system, including process trees and network interfaces.
- **Linux cgroups (Control Groups)**: Limit resource usage per container to ensure fair resource distribution.
- **Union File Systems**: Enable layered storage for container images, making them lightweight and efficient.

## Dockerfile and Image Layers
- **Dockerfile**: A script containing instructions to build a container image, defining environment, dependencies, and runtime configurations.
- **Image Layers**: Each Dockerfile command creates a layer, optimizing storage and changes.

## Best Practices for Container Images
- **Multi-stage Builds**: Separate build and runtime environments to reduce image size and security risks.
- **Layer Ordering**: Arrange instructions from least to most likely to change to leverage Docker's caching mechanism.

## Container Runtime
- **Writable Container Layer**: A temporary, writeable layer added to the container at runtime for ephemeral data storage.
- **Data Persistence**: Important data should be stored outside of the container to ensure durability.

## Advantages of Container Architecture
- **Efficiency**: Containers share the host OS kernel, making them lightweight compared to VMs.
- **Portability**: Containers include all dependencies, ensuring consistent execution across environments.
- **Scalability**: Containers can be easily replicated and managed across multiple environments.

## Managing Container Images
- **Public Repositories**: Sources for base images or for sharing, e.g., Docker Hub, GitLab, and Google's Artifact Registry.
- **Cloud Build**: Automates the build process, integrating with IAM for security and supporting various build steps and tools.
 