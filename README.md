After creating AWS infra using Cloud formation
Standard flow would be ( FOR CLOUD FORMATION)
CLOUDTRIAL
CONFIG
VPC
EC2


access the EC2 instance and run these scripts

To run the script type 
First

#wget -O - https://raw.githubusercontent.com/ImmLearning/MediaWikiAWSCiCd/master/InstallMediaWikiEC2AWS.sh | bash
Second
#wget -O - hhttps://raw.githubusercontent.com/ImmLearning/MediaWikiAWSCiCd/master/secondscript.sh | bash

Create AMI of EC2 , then use 
ALB ( cloud formation )


ELSE ALTERNATIVE RUN
ALLinONE CLOUDFORMATION SCRIPT ( MIGHT BE WRONG )
MediaWiki.yml

all dependencies and cron would get installed 
however if you need to change the cron or if cron restart failed ( check status 0 run below command
service yum-cron restart
