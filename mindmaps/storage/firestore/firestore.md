If you are looking for a highly scalable NoSQL database for your applications, consider using Cloud Firestore.

Cloud Firestore is a fast, fully managed, serverless, cloud native, NoSQL, document database that simplifies storing, synking and querying data for your mobile web and IOT apps at global scale.

Its client libraries provide live synchronization and offline support and it's security features and integrations with Firebase and GCP accelerate building truly serverless apps.

Cloud Firestore also supports ACID transactions so if any of the operations in the transaction fail and cannot be retried, the whole transaction will fail.

Also with automatic multi region replication and strong consistency, your data is safe and available even when disasters strike.

Cloud Firestore even allows you to run sophisticated queries against your NoSQL data without any degradation in performance.

This gives you more flexibility in the way you structure your data.

Cloud Firestore is actually the next generation of Cloud Datastore.

Cloud Firestore can operate in Datastore mode, making it backwards compatible with Cloud Datastore.

By creating a Cloud Firestore database in Datastore mode, you can access Cloud Firestore's improveD storage layer while keeping Cloud Datastore system behavior.

This removes the following Cloud Datastore limitations.

Queries are no longer eventually consistent instead, they are all strongly consistent.

Transactions are no longer limited to 25 entity groups, rights to an entity group are no longer limited to 1 per second.

Cloud Firestore in native mode introduces new features such as a new, strongly consistent storage layer, a collection and document data model, real time updates, mobile and web client libraries.

Cloud Firestore is backward compatible with Cloud Datastore but the new data model, real time updates in mobile and web client library features are not.

To access all of the new Cloud Firestore features, you must use Cloud Firestore in native mode.

A general guideline is to use Cloud Firestore in Datastore mode for new server projects and native mode for new mobile and web apps.

As the next generation of Cloud Datastore, Cloud Firestore is compatible with all Cloud Datastore, APIs and client libraries.

Existing Cloud Datastore users will be live upgraded to Cloud Firestore automatically at a future date.

For more information, see the link section of this video, to summarize, let's explore this decision tree.

To help you determine whether Cloud Firestore is the right storage service for your data.

If your schema might change and you need an adaptable database, you need to scale

to zero or you want low maintenance overhead scaling up to terabytes consider using Cloud Firestore.

Also, if you don't require transactional consistency, you might want to consider Cloud Bigtable.

Depending on the cost or size, I will cover Cloud Bigtable next.
