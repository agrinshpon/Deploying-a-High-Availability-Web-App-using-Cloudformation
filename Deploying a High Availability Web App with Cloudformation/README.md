# Deplying a High Availability Web App using Cloudformation

## The Task:

Your company is creating an Instagram clone called Udagram. Developers pushed the latest version of their code in a zip file located in a public S3 Bucket.

You have been tasked with deploying the application, along with the necessary supporting software into its matching infrastructure.

This needs to be done in an automated fashion so that the infrastructure can be discarded as soon as the testing team finishes their tests and gathers their results.

## My Solution

### Architecture Diagram

![Architecture Diagram](architecturediagram.png)

### Instructions

**1.** Create an S3 bucket and upload the index.zip file. Change the index.zip file's location in the launch configuration's user script.

**2.** Create a key pair for your Bastion Hosts and change the '<KeyPair>'' parameter in the server-parameters.json file to your newly created key pair.

**3.** Open up a terminal window and run '<create INSERTNAME network.yml network-parameters.json>'. This will create a Cloudformation stack named INSERTNAME for your network architecture.

**4.** In the same terminal window run '<create INSERTNAME2 servers.yml server-parameters.json>'. This will create a Cloudformation stack named INSERTNAME2 for your application servers, jump boxes, security groups, auto scaling group, and load balancer.
