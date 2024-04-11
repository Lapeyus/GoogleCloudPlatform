---
markmap:
  maxWidth: 300
---

# Advanced Features of Google Cloud Storage

## Customer-Supplied Encryption Keys
- **Custom Encryption**: Users can supply their own encryption keys for Cloud Storage, enhancing security by managing encryption themselves instead of using Google-managed keys.

## Object Lifecycle Management
- **Automatic Management**: Automatically delete or archive objects based on rules you set.
  - **Examples of Rules**:
    - Delete objects older than a certain date (e.g., Jan 1, 2017).
    - Archive objects to colder storage classes after a specified period.
    - Maintain only the 3 most recent versions of each object in versioned buckets.
- **Effect Delay**: Changes to lifecycle rules might take up to 24 hours to apply.

## Object Versioning
- **Immutable Objects**: Once uploaded, objects cannot be altered.
- **Version Control**:
  - Each version is identified by a generation number.
  - Enables 
    - listing of specific versions.
    - restoration to previous versions 
    - deletion of specific versions.
- **Versioning Toggle**: Can be enabled or disabled at any time for a bucket.

## Directory Synchronization
- **VM Directory Sync**: Synchronize directories from a VM to a bucket, streamlining data management between compute resources and storage.

## Object Change Notifications
- **Integration with Pub/Sub**: Configure notifications for object changes, leveraging Google Cloud Pub/Sub for real-time alerting and actions.

## Autoclass
- **Storage Class Management**: Autoclass manages the storage classes of objects within a bucket to optimize cost and access needs automatically.

## Data Transfer Solutions
- **Transfer Appliance**:
  - Use the Transfer Appliance for migrating entire data centers or large datasets efficiently.
  - Use physical devices to transfer large volumes (up to 1 petabyte) of data to Google Cloud.
  - Ideal for data center migrations without interrupting business operations.
- **Storage Transfer Service**:
  - Leverage the Storage Transfer Service for continuous synchronization between Cloud Storage and other cloud providers.
  - Facilitates online data imports from other clouds (e.g., AWS S3) or HTTP/HTTPS locations quickly and efficiently.
- **Offline Media Import**:
  - A service for importing data via physical media (e.g., HDDs, USBs) handled by a third-party provider.

## Consistency and Availability
- **Strong Consistency**:
  - Uploads and deletions of objects are immediately consistent.
  - No stale reads; actions like upload, update, or delete are reflected instantly across all locations.
- **Immediate Availability**:
  - Objects are available for download and metadata operations right after a successful upload response.
- **Consistent Listings**:
  - Bucket and object listings are immediately updated to reflect new or deleted items.

## Example Use Cases for Object Management
1. **Media Company**:
   - Use Cloud Storage to archive media files.
   - Enable object versioning to keep multiple edits of media files.
   - Set lifecycle rules to archive projects older than 5 years automatically to Coldline Storage.
2. **Financial Data Analysis**:
   - Store transaction data in Cloud Storage using customer-supplied encryption keys for enhanced security.
   - Employ Autoclass to automatically move less frequently accessed data to Nearline or Coldline Storage.
3. **Software Development**:
   - Sync development assets and build directories from VMs to Cloud Storage for backup and distribution.
   - Configure object change notifications to trigger workflows or alerts when new builds are uploaded.
