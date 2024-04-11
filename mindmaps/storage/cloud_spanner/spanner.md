---
markmap:
  maxWidth: 300
---

# Cloud Spanner: Managed Relational Database with Horizontal Scalability
Cloud Spanner is Google Cloud's fully managed database service that uniquely combines the benefits of relational database structure with non-relational horizontal scalability. This service provides high transactional consistency at a global scale, automatic synchronous replication, and schemas with standard SQL support.

## Key Features

- **Horizontal Scalability**: Unlike traditional relational databases, Cloud Spanner scales horizontally to provide petabytes of capacity, accommodating massive, global-scale applications.
- **Global Transactional Consistency**: Ensures strong consistency across all regions with atomic clocks and synchronous replication, crucial for financial and inventory applications.
- **High Availability**: Configurable replication across multiple cloud zones and regions enhances the reliability and uptime of applications.
- **SQL and Schema Support**: Maintains familiar SQL queries and schema setups, facilitating easier migration from traditional relational databases.

## Use Cases

- **Financial Services**: Ideal for applications requiring consistent, high-throughput and low-latency transactions across globally distributed assets.
- **Retail and Inventory Management**: Supports complex, multi-level inventory systems with real-time access and updates.
- **Global Applications**: Provides a single database solution that spans across multiple regions without compromising performance and data consistency.

## Architecture

- **Data Replication**: Cloud Spanner instances replicate data in multiple zones, which can be within a single region or across multiple regions, to ensure data availability and durability.
- **Global Network Utilization**: Leverages Google's robust global fiber network to synchronize data across geographies efficiently.
- **Atomicity with Timestamps**: Uses precise atomic clocks to timestamp and order transactions, ensuring global consistency.

## Comparison with Other Databases

- **Relational vs. Non-Relational**:
  - Like relational databases, it supports SQL and schemas.
  - Like non-relational databases, it provides horizontal scalability and high availability through configurable replication.

## Decision Tree: When to Use Cloud Spanner

1. **Requirement for Horizontal Scalability**:
   - If your current relational database can't scale horizontally to meet demand, consider Cloud Spanner.

2. **Global Consistency Needs**:
   - For applications that require consistent and synchronized data across multiple regions.

3. **High Throughput and Performance**:
   - If your application demands high throughput without sacrificing performance, regardless of scale.

4. **Use Case Specific**:
   - Financial systems that need atomicity in transactions across the globe.
   - Large-scale inventory applications requiring real-time accuracy and reliability.

## Alternatives

- **Cloud Firestore**:
  - Consider using Cloud Firestore for applications that do not require strong SQL support or complex transactions but need flexible, scalable document storage with real-time data syncing.

- **Migration Path**:
  - For businesses transitioning from traditional SQL databases like MySQL, Cloud Spanner offers a compelling upgrade path with tools and documentation to support migration efforts effectively.
  