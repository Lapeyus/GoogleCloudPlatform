Now that we know that a project accumulates the consumption of all its resources, let's talk about quotas.

All resources in Google Cloud are subject to project quotas or limits.

These typically fall into one of the three categories shown here.

How many resources you can a project create?

For example, you can only have fifteen VPC networks per project.

How quickly you can make API requests in a project or rate limits.

For example, by default, you can only make five administrative actions per second per project when using the Cloud Spanner API.

And three - Regional quotas For example, by default, you can only have 24 CPUs per region.

Given these quotas, you may be wondering, how do I spin up one of those 96 Core VMs.

As your use of Google Cloud expands over time, your quotas may increase accordingly.

If you expect a notable upcoming increase in usage, you can proactively request quota adjustments from the quotas page in the Cloud console.

This page will also display your current quotas.

If quotas can be changed, why do they exist?

Project quotas prevent runaway consumption in case of error or malicious attack.

For example, imagine you accidentally create 100 instead of 10 Compute Engine instances using the G Cloud command line.

Quotas also prevent billing spikes or surprises.

Quotas are related to billing, but we will go through how to set up budgets and alerts later, which will really help you manage billing.

Finally, quotas for sizing consideration and periodic review.

For example, do you really need a 96 Core instance?

Or can you go with a smaller and cheaper alternative?

It is also important to mention the quotas are the maximum amount of resources you can create for that resource type as long as those resources are available.

Quotas do not guarantee that resources will be available at all times.

For example, if a region is out of local SSDs, you cannot create local SSDs in that region, even if you still hae quota for local SSDs.
