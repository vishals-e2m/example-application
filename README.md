# Terraform Backend Configuration For Scalr.io

## 1. Set Env Variable For AWS API access

- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- AWS_DEFAULT_REGION

## 2. Set Env Variable For Scalr.io (To Execute OR Run on Local Machine)

- SCALR_HOSTNAME
- SCALR_ACCOUNT
- SCALR_TOKEN

## 3. Set The Workspace and Env on Local Machine For Local Execution Terraform Code

scalr update-workspace -environment-id=  -workspace= -name= -execution-mode=local
