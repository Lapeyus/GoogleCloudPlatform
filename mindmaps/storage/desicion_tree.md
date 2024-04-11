---
markmap:
  maxWidth: 300
---

# Decision Tree: Choosing the Right Data Storage Solution

- ## **Is your data structured?**
  - **No: Unstructured Data**
    - **Do you need a shared file system?**
      - **Yes:** Use **Filestore** for shared file system needs.
      - **No:** Use **Cloud Storage** for blob storage, perfect for storing unstructured data.

  - **Yes: Structured Data**
    - **Does your workload focus on analytics?**
      - **Yes: Analytical Workload**
        - **BigQuery**:
          - Optimal as a data warehouse.
          - Ideal for ad-hoc SQL-based analysis and reporting.          
          - Has a built-in cache, best for situations where **data doesn’t change frequently**.
        - **Bigtable**:
          - NoSQL wide-column database
          - great for **low latency tasks**.
          - Handles large-scale reads and writes efficiently.
          - Suitable for use cases like IoT and financial technology where quick data retrieval is crucial.

      - **No: Non-Analytical Workload**
        - **Is your data relational?**
          - **No: Non-Relational Data**
            - **Do you need application caching?**
              - **Yes:** Choose **Memorystore** for in-memory data caching.
              - **No:** Choose **Firestore** for document-based storage.
          - **Yes: Relational Data**
            - **Do you need HTAP (Hybrid Transaction/Analytical Processing)?**
              - **Yes:** Use **AlloyDB** for scenarios requiring HTAP capabilities.
              - **No:**
                - **Do you need global scalability?**
                  - **Yes:** Use **Spanner** for global scale relational database needs.
                  - **No:** Use **Cloud SQL** for standard relational database requirements without the need for global scalability.

