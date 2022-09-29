# AWS cloud watch Metrics

- cloud watch provides metrics for each service

- metric is **variable** to monitor(cpu,network)

- metric belongs to namespace

- **Dimension** is an attribute of metric(instance-id,tags)

- upto  10 metric per metric

- ### Ec2 Detailed Monitoring

  - ec2 instance gives metric after **5 minutes**
  - with detailed monitoring you get data after **1 minute**
  - use detailed monitoring if you want scale in and out of your ASG

# Cloud watch custom Metrics

- you can use custom metrics like **Ram,disk**
- Use API call **putMetricData**
- Metric resolution has two parameter
  - Standard(1 minute)
  - high resolution(1/5/10/30 seconds metric data)

- **Important**: Accept metric data point **2 weeks previous and 2 hours in the future**(make sure your ec2 config time properly correct)