# EPAM University Programs : Cloud&DevOps Fundamentals Autumn 2022


# ✅ 1. Read the terms of Using the [AWS Free Tier](https://docs.aws.amazon.com/en_us/awsaccountbilling/latest/aboutv2/billing-free-tier.html) and the ability to control their own costs.

# ✅ 2. [Register with AWS](https://portal.aws.amazon.com/billing/signup?redirect_url=https%3A%2F%2Faws.amazon.com%2Fregistration-confirmation#/start) (first priority) or alternatively, you can request access to courses in [AWS Academy](https://aws.amazon.com/training/awsacademy/member-list/) if you are currently a student of certain University.

# ✅ 3. Find the [hands-on tutorials](https://aws.amazon.com/ru/getting-started/hands-on/?awsf.getting-started-category=category%23compute&awsf.getting-started-content-type=content-type%23hands-on&?e=gs2020&p=gsrc&awsf.getting-started-level=*all) and [AWS Well-Architected Labs](https://www.wellarchitectedlabs.com/) for your AWS needs. Explore list of step-by-step tutorials for deferent category. Use, repeat as many as you can and have fun))
![Certificate](./screenshots/aws_well_architected.png)

# ✅ 4. Register and pass courses on [AWS Educate](https://www.awseducate.com/). Filter by checking Topic Cloud Computing and Foundational Level. Feel free to pass more.
![Certificate](./screenshots/aws-educate-getting-started-with-compute.png)
![Certificate](./screenshots/aws-educate-getting-started-with-storage.png)

# ✅ 5. Register and pass free courses on [AWS Skill Builder](https://explore.skillbuilder.aws/learn). AWS Cloud Practitioner Essentials: Core Services, AWS Cloud Practitioner Essentials: Cloud Concepts. Try AWS Cloud Quest: Cloud Practitioner.
![Certificate](./screenshots/aws_cloud_practitioner_essentials.png)
![Certificate](./screenshots/aws-cloud-quest-cloud-practitioner.png)

# ⏳ 6. Pass free courses on [Amazon qwiklabs](https://amazon.qwiklabs.com/)


# ✅ 7. Review [Getting started with Amazon EC2](https://aws.amazon.com/ec2/getting-started/?nc1=h_ls). Log Into Your AWS Account, Launch, Configure, Connect and Terminate Your Instance. Do not use Amazon Lightsail. It is recommended to use the t2 or t3.micro instance and the CentOS operating system.
![Screenshot](./screenshots/ec2_instance.png)

# ✅ 8. Create a snapshot of your instance to keep as a backup.
![Screenshot](./screenshots/snapshot_1.png)
![Screenshot](./screenshots/snapshot_2.png)
![Screenshot](./screenshots/snapshot_3.png)

# ✅ 9. Create and attach a Disk_D (EBS) to your instance to add more storage space. Create and save some file on Disk_D.
![Screenshot](./screenshots/volume_1.png)
![Screenshot](./screenshots/volume_2.png)
![Screenshot](./screenshots/volume_3.png)
![Screenshot](./screenshots/volume_4.png)
![Screenshot](./screenshots/volume_5.png)
![Screenshot](./screenshots/volume_6.png)

# ✅ 10. Launch the second instance from backup.
![Screenshot](./screenshots/instance_from_backup.png)
![Screenshot](./screenshots/instance_from_backup_2.png)

# ✅ 11. Detach Disk_D from the 1st instance and attach disk_D to the new instance.
![Screenshot](./screenshots/detach_1.png)
![Screenshot](./screenshots/detach_2.png)
![Screenshot](./screenshots/detach_3.png)
![Screenshot](./screenshots/detach_4.png)

# ✅ 12. Review the 10-minute [example](https://aws.amazon.com/getting-started/hands-on/get-a-domain/?nc1=h_ls). Explore the possibilities of creating your own domain and domain name for your site. Note, that Route 53 not free service. Alternatively you can free register the domain name *.PP.UA and use it.
![Screenshot](./screenshots/dns.png)
![Screenshot](./screenshots/dns2.png)

# ✅ 13. Launch and configure a WordPress instance with Amazon Lightsail [link](https://aws.amazon.com/getting-started/hands-on/launch-a-wordpress-website/?trk=gs_card)
## Launching a wordpress instance
![Screenshot](./screenshots/lighsail_1.png)
![Screenshot](./screenshots/lighsail_2.png)
![Screenshot](./screenshots/lighsail_3.png)
![Screenshot](./screenshots/lighsail_4.png)
![Screenshot](./screenshots/lighsail_5.png)
![Screenshot](./screenshots/lighsail_6.png)
## Creating a statip IP
![Screenshot](./screenshots/lighsail_7.png)
![Screenshot](./screenshots/lighsail_8.png)
![Screenshot](./screenshots/lighsail_9.png)
## Domain menu and deleting an instance
![Screenshot](./screenshots/lighsail_10.png)
![Screenshot](./screenshots/lighsail_11.png)
![Screenshot](./screenshots/lighsail_12.png)

# ✅ 14. Review the 10-minute [Store and Retrieve a File](https://aws.amazon.com/getting-started/hands-on/backup-files-to-amazon-s3/). Repeat, creating your own repository.
![Screenshot](./screenshots/s3_1.png)
![Screenshot](./screenshots/s3_2.png)
![Screenshot](./screenshots/s3_3.png)
![Screenshot](./screenshots/s3_4.png)
![Screenshot](./screenshots/s3_5.png)
![Screenshot](./screenshots/s3_6.png)
My repository in Amazon S3
![Screenshot](./screenshots/s3_7.png)

# ✅ 15. Review the 10-minute [example](https://aws.amazon.com/getting-started/hands-on/backup-to-s3-cli/?nc1=h_ls)Batch upload files to the cloud to Amazon S3 using the AWS CLI. Create a user AWS IAM, configure CLI AWS and upload any files to S3.

## Current Path is: C:\\users\\user
![Screenshot](./screenshots/batch_1.png)
![Screenshot](./screenshots/batch_2.png)
![Screenshot](./screenshots/batch_3.png)
![Screenshot](./screenshots/batch_4.png)
![Screenshot](./screenshots/batch_5.png)
![Screenshot](./screenshots/batch_6.png)

```
aws configure
```
![Screenshot](./screenshots/batch_7.png)

Creating a bucket with name "backup-bucket-fecton-at-epam"
```
aws s3 mb s3://backup-bucket-fecton-at-epam
```
![Screenshot](./screenshots/batch_8.png)

```
aws s3 cp "C:\users\user\top-secret.zip" s3://backup-bucket-fecton-at-epam
```
![Screenshot](./screenshots/batch_9.png)

```
aws s3 cp s3://backup-bucket-fecton-at-epam/top-secret.zip C:\users\user
```
![Screenshot](./screenshots/batch_10.png)
![Screenshot](./screenshots/batch_11.png)

```
aws s3 rm s3://backup-bucket-fecton-at-epam/top-secret.zip
```
![Screenshot](./screenshots/batch_12.png)

# ✅ 16. Review the 10-minute [example](https://aws.amazon.com/getting-started/hands-on/deploy-docker-containers/?nc1=h_ls) Deploy Docker Containers on Amazon Elastic Container Service (Amazon ECS). Repeat, create a cluster, and run the online demo application or better other application with custom settings.
![Screenshot](./screenshots/ecs_1.png)
![Screenshot](./screenshots/ecs_2.png)
![Screenshot](./screenshots/ecs_3.png)
![Screenshot](./screenshots/ecs_4.png)
![Screenshot](./screenshots/ecs_5.png)
![Screenshot](./screenshots/ecs_6.png)
![Screenshot](./screenshots/ecs_7.png)
![Screenshot](./screenshots/ecs_8.png)
![Screenshot](./screenshots/ecs_9.png)
![Screenshot](./screenshots/ecs_10.png)


# ✅ 17. [Run a Serverless "Hello, World!"](https://aws.amazon.com/getting-started/hands-on/run-serverless-code/?nc1=h_ls) with AWS Lambda.
![Screenshot](./screenshots/lambda_1.png)
![Screenshot](./screenshots/lambda_2.png)
![Screenshot](./screenshots/lambda_3.png)
![Screenshot](./screenshots/lambda_4.png)
![Screenshot](./screenshots/lambda_5.png)
![Screenshot](./screenshots/lambda_6.png)
![Screenshot](./screenshots/lambda_7.png)

# 18. Create a static website on Amazon S3, publicly available ([link1](https://docs.aws.amazon.com/AmazonS3/latest/dev/HostingWebsiteOnS3Setup.html) or [link2](https://docs.aws.amazon.com/AmazonS3/latest/dev/website-hosting-custom-domain-walkthrough.html) - using a custom domain registered with Route 53). Post on the page your own photo, the name of the educational program (EPAM Cloud&DevOps Fundamentals Autumn 2022), the list of AWS services with which the student worked within the educational program or earlier and the full list with links of completed labs (based on [tutorials](https://aws.amazon.com/getting-started/hands-on/?awsf.getting-started-content-type=content-type%23hands-on&?e=gs2020&p=gsrc) or [qwiklabs](https://amazon.qwiklabs.com/)). Provide the link to the website in your report and СV.

alytvynenko.pp.ua - main domain (bucket with site's files)
log.alytvynenko.pp.ua - logs of file
www.alytvynenko.pp.ua - redirect from www.* to @
![Image](./static-website/Screenshot_1.png)
Our simple site works than let's load my simple page
![Image](./static-website/Screenshot_2.png)
Page on a local machine
![Image](./static-website/Screenshot_3.png)
DNS Nameserver configuration
![Image](./static-website/Screenshot_4.png)
Place logs in the bucket "logs.alytvynenko.pp.ua"
![Image](./static-website/Screenshot_5.png)
Yeah, here are a lot of logs xD
![Image](./static-website/Screenshot_6.png)
![Image](./static-website/Screenshot_7.png)
Uploaded site
![Image](./static-website/Screenshot_8.png)
alytvynenko.pp.ua works properly
![Image](./static-website/Screenshot_9.png)

# Note: I've already had a website with custom domain: https://alytvynenko.online
# But this task will be avaliable here: https://alytvynenko.pp.ua 

