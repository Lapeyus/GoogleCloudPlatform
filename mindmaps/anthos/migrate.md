---
markmap:
  colorFreezeLevel: 7
  maxWidth: 300
  embedAssets: true
  initialExpandLevel: 3
---

# Kubernetes Migration with Google Cloud and Migrate for Anthos

## Introduction to Migration
- **Challenges**
  - Existing applications not in containers or cloud.
- **Solution**
  - Google Cloud with Migrate for Anthos.

## Migrate for Anthos Overview
- **Purpose**: Automate the migration of workloads to containerized deployments.
- **Features**:
  - Automated process.
  - Supports on-premises and other cloud providers.
  - Fast migration, often under 10 minutes.
  - Flexible data migration options.

## Migration Architecture
1. **Data Migration Pipeline**
   - Migrate for Compute Engine creates a pipeline.
   - Migrates data from on-premises or other clouds to Google Cloud.
2. **Migrate for Anthos Installation**
   - Installed on a GKE processing cluster.
   - Composes of Kubernetes resources to generate deployment artifacts.
3. **Deployment Artifacts**
   - Kubernetes configurations, Dockerfile for VM wrapping container.
   - Container stored in Cloud Storage, images in Container Registry.
4. **Deployment**
   - Apply generated configuration to target cluster.

## Migration Process Using Migrate for Anthos
1. **Create Processing Cluster**
   - Setup requirements: GKE admin, firewall rules.
2. **Install Migrate for Anthos**
   - Use `migctl` command.
   - Specifies migration source location.
3. **Create Migration Plan**
   - `migctl migration create` command.
   - Generates a plan template in YAML.
4. **Generate Artifacts**
   - `migctl migration generate-artifacts` command.
   - Generates container images and YAML files for deployment.
5. **Test Migration Artifacts**
   - Test container images and deployments.
6. **Deploy Application**
   - Use generated artifacts for production deployment.

## Worked Example
1. **Setup Processing Cluster**
   - Ensure GKE admin status and firewall setup.
   - Create VPC-native cluster.
2. **Install Required Tools**
   - Install Migrate for Anthos on the cluster.
3. **Migration Plan Creation**
   - Define source VM and data to exclude.
   - Specify migration intents.
4. **Artifact Generation**
   - Generate runnable and non-runnable images.
   - Create configuration YAML files for GKE deployment.
5. **Deployment**
   - Customize deployment through YAML edits.
   - Use `kubectl apply` to deploy on target cluster.
