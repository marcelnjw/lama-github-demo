Link: https://www.youtube.com/watch?v=JwTP3wZHYnU

     TASK TO PERFORM    

Git Repository,
S3 Bucket(TF State file),
Duckerhub Credentail,
Codestar Connector
Dev. Environment
=============================================================


            Git Repository CREATION

GIT-HUB ACCT:			
			Usname  :   Your-github-Usr-name
			Ps      :   your-github-password
			Email   :   your-github-email@yahoo.com
			Source(src) Code management Directory: /c/Users/John/Documents/src


Create a pulic Repository, give it any name Eg: Terraform-AWS_CodePipeline-S3
https://github.com/your_githubname/Terraform-AWS_CodePipeline-S3.git


======================================================
         S3 Bucket(TF State file) CREATION

Create and S3 bucket for storing ".tfstate file"
Name: dxzaws-cicd-pipeline
Enable bkt versioning
//     encription---s3 key

==========================================================
           AWS Secrete Manager

Create a secrete credential for dockerhub credentails for the pipeline
Open AWS SECRETE MANAGER
Set-new-secrete---Other-type-of-scretes
Secrete key/value (we need two as below):
    Username:Your-Dockerhub-Usr-name
    Password:your-dockerhub-password
Copy&Save the ARN: arn:aws:secretsmanager:ca-central-1:aaccount_id:secret:codepipeline-dockerhub-credential-ZHoTMK


GOTO : DockerHub and sign up for free acct.
DOCKER ACC:
ID: Your-Dockerhub-Usr-name
email: your-dockerhub-email@yahoo.com
ps:    your-dockerhub-password
================================================================

            AWS CodePipeline

Open Codepipeline---Settings---connections---create-connection
Select a provider: GitHub
connection name: github-awscdepiplnconnt
Click: connect to Github ( for the first time you will need to authorize AWS to have access)
Then select: install new app
Install ---(AWS Connection to your Github account)
Copy&Save the code given: 19633500
ARN:
arn:aws:codestar-connections:ca-central-1:aaccount_id:connection/d0721bbc-c802-4b91-a4d0-421da0f1e6bf
==============================================================

              SET-UP Dev-Environment

Clone ur github repository into ur local machine
https://github.com/alainhenryt/Terraform-AWS_CodePipeline-S3.git

GETTING STARTED:
Define Provider and version
Define variables
Run terraform init
https://github.com/davoclock/aws-cicd-pipeline.git

=========================================================================
# Generating a new SSH key
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

# 1.
ssh-keygen -t ed25519 -C "your_email@example.com"

