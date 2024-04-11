If you don’t require transactional consistency, you might want to consider Cloud Bigtable.

Cloud Bigtable is a fully managed NoSQL database with petabyte-scale and very low latency.

It seamlessly scales for throughput and it learns to adjust to specific access patterns.

Cloud Bigtable is actually the same database that powers many of Google’s core services, including Search, Analytics, Maps, and Gmail.

Cloud Bigtable is a great choice for both operational and analytical applications, including IoT, user

analytics, and financial data analysis, because it supports high read and write throughput at low latency.

It’s also a great storage engine for machine learning applications.

Cloud Bigtable integrates easily with popular big data tools like Hadoop, Cloud Dataflow, and Cloud Dataproc.

Plus, Cloud Bigtable supports the open source industry standard HBase API, which makes it easy for your development teams to get started.

Cloud Dataflow and Cloud Dataproc are covered late in the course series.

For more information on the HBase API, see the links section of this video.

Cloud Bigtable stores data in massively scalable tables, each of which is a sorted key/value map.

The table is composed of rows, each of which typically describes a single entity, and columns, which contain individual values for each row.

Each row is indexed by a single row key, and columns that are related to one another are typically grouped together into a column family.

Each column is identified by a combination of the column family and a column qualifier, which is a unique name within the column family.

Each row/column intersection can contain multiple cells, or versions, at different timestamps, providing a record of how the stored data has been altered over time.

Cloud Bigtable tables are sparse; if a cell does not contain any data, it does not take up any space.

The example shown here is for a hypothetical social network for United States presidents, where each president can follow posts from other presidents.

family, the follows family.

This family contains multiple column qualifiers.

* Column qualifiers are used as data.

This design choice takes advantage of the sparseness of Cloud Bigtable tables, and the fact that new column qualifiers can be added as your data changes.

. * The username is used as the row key.

Assuming usernames are evenly spread across the alphabet, data access will be reasonably uniform across the entire table.

This diagram shows a simplified version of Cloud Bigtable’s overall architecture.

It illustrates that processing, which is done through a front-end server pool and nodes, is handled separately from the storage.

A Cloud Bigtable table is sharded into blocks of contiguous rows, called tablets, to help balance the workload of queries.

Tablets are similar to HBase regions, for those of you who have used the HBase API.

Tablets are stored on Colossus, which is Google's file system, in SSTable format.

An SSTable provides a persistent, ordered immutable map from keys to values, where both keys and values are arbitrary byte strings.

As I mentioned earlier, Cloud Bigtable learns to adjust to specific access patterns.

If a certain Bigtable node is frequently accessing a certain subset of data... … Cloud Bigtable

will update the indexes so that other nodes can distribute that workload evenly, as shown here.

That throughput scales linearly, so for every single node that you do add, you're going to see a linear scale of throughput performance, up to hundreds of nodes.

In summary, if you need to store more than 1 TB of structured data, have very high volume of writes, need read/write latency of

less than 10 milliseconds along with strong consistency, or need a storage service that is compatible with the HBase API, consider using Cloud Bigtable.

If you don’t need any of these and are looking for a storage service that scales down well, consider using Firestore.

Speaking of scaling, the smallest Cloud Bigtable cluster you can create has three nodes and can handle 30,000 operations per second.

Remember that you pay for those nodes while they are operational, whether your application is using them or not.