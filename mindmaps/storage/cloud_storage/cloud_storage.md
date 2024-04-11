---
markmap:
  maxWidth: 300
  initialExpandLevel: 3
---

# Google Cloud Storage Overview

## What is Cloud Storage?
- **Google Cloud’s object storage service** allows worldwide storage and retrieval of any amount of data at any time.
- You can use it for:
  - Serving website content
  - Data archival
  - Disaster recovery
  - Distributing large data objects via direct download

## Characteristics
- **High Availability**: Access times in milliseconds across all storage classes.
- **Single API Interface** for seamless integration across different storage classes.
- **Data Organization**: Data in Cloud Storage is organized into buckets, with "directories" being a navigational concept rather than actual folders.

## location types
 - single region is a specific geographic place, such as London.
 - Dual-region is a specific pair of regions, such as Finland and the Netherlands.
 - multi-region is a large geographic area, such as the United States, that contains two or more geographic places.

## Storage Classes
- **Standard Storage**
  - Ideal for "hot" data that's accessed frequently and/or stored briefly.
  - No minimum storage duration; no retrieval cost.
  - Use cases: Close to data compute resources like GKE clusters or Compute Engine instances.
- **Nearline Storage**
  - For infrequently accessed data, suitable for backups and long-tail multimedia.
  - Minimum storage duration of 30 days; lower cost at the expense of higher access costs.
- **Coldline Storage**
  - Very low cost; for data accessed infrequently, such as less than once a quarter.
  - 90-day minimum storage duration; higher costs for data access.
- **Archive Storage**
  - Lowest cost; for data rarely accessed, suitable for long-term archiving and online backup.
  - 365-day minimum storage duration; accessible within milliseconds, not hours or days.
 
## Data Durability and Availability
- **11 Nines Durability**: Extremely high reliability, virtually no data loss.
- **Availability Variance**: Depending on the storage class and whether the data is stored regionally, dual-regionally, or multi-regionally.

## Implementation Details
- **Buckets**: Containers for storage, need globally unique names, can't be nested.
- **Objects**: Files or blobs stored within buckets; inherit bucket’s storage class but can be changed.
- **Access Methods**:
  - `gcloud storage` commands
  - JSON or XML APIs

## Managing Data Storage
- **Changing Storage Classes**:
  - Can change an object’s class to manage costs (e.g., moving to Nearline if access frequency decreases).
- **Object Lifecycle Management**:
  - Automate transitions of objects to colder storage classes based on rules defined (e.g., age, frequency of access).

## Access Controls
- **IAM Roles**:
  - Control at the project level what users or service accounts can do with buckets and objects.
- **Access Control Lists (ACLs)**:
  - Fine-grained access control, specifying who can access what at the bucket or object level.
  - Max 100 ACL entries per bucket or object.
- **Signed URLs and Policy Documents**:
  - Provide time-limited read or write access to a specific resource via a URL signed with a service account’s private key.
  - Ensures temporary, secure access without needing a Google account.

## Use Cases for Signed URLs
- Distribute large files without requiring user authentication.
- Allow temporary upload access to a bucket for users without a Google account.


