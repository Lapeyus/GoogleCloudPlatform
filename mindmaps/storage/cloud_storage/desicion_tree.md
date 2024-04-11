---
markmap:
  maxWidth: 300
---

# Decision Tree for Selecting Cloud Storage Classes

## Determining the Right Storage Class

1. **Frequency of Data Access**
   - **Archive Storage**: If you will access data **less than once a year**.
     - Lowest cost, suitable for long-term archiving where data is rarely accessed.
   - **Coldline Storage**: If you will access data **less than once per 90 days**.
     - Very low cost, ideal for data that you access infrequently and can tolerate slightly lower availability.
   - **Nearline Storage**: If you will access data **less than once per 30 days**.
     - Low cost, good for data that is accessed occasionally, such as monthly backups.
   - **Standard Storage**: If you will access data **more frequently** than once per 30 days.
     - Higher cost, but optimized for frequent access, suitable for active database storage and content delivery.

## Choosing the Right Location Type

2. **Location of Data Consumers**
   - **Region**:
     - Use when data consumers (e.g., analytics pipelines) are located in the same region.
     - Minimizes latency and network bandwidth costs.
   - **Dual-Region**:
     - Use when you want similar performance benefits as a single region but with higher availability.
     - Data is stored in two geographic locations, offering improved disaster recovery capabilities.
   - **Multi-Region**:
     - Use when serving content to data consumers distributed across large geographic areas outside of the Google network.
     - Provides the highest level of data availability and redundancy.

## Autoclass: Automated Storage Management

3. **Autoclass Feature**
   - **Unpredictable Access Patterns**:
     - Ideal if the access frequencies of your data vary widely or are unpredictable.
     - Automatically transitions objects to the most cost-effective storage class based on how frequently each object is accessed.
   - **Cost Optimization**:
     - Begins with all objects in Standard storage.
     - Moves less frequently accessed objects to colder storage classes (Nearline, Coldline, Archive) to reduce costs.
     - Frequently accessed objects are moved to or retained in Standard storage to optimize access times.
   - **Charges and Fees**:
     - No early deletion charges, no retrieval charges, and no charges for storage class transitions when Autoclass is enabled.


## Example Use Case Scenarios

1. **Digital Media Company**
   - Stores large video files infrequently accessed.
   - Uses Coldline for storing completed projects, and Standard storage for active projects.
   - Employs Autoclass to automatically manage transitions between these classes based on access patterns.

2. **Financial Data Archives**
   - Archive transaction records accessed less than once a year.
   - Uses Archive Storage to minimize costs while ensuring data longevity and compliance.

3. **Content Delivery Network**
   - Delivers multimedia content across the globe.
   - Uses Multi-Region in Standard Storage to optimize for latency and availability.

4. **Research Data**
   - Stores large datasets for periodic analysis.
   - Uses Nearline for monthly access during ongoing research and Coldline for completed projects.

