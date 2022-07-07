terraform{
    backend "s3" {
        bucket = "dxz-aws-cicd-pipeline"
        encrypt = true
        key = "terraform.tfstate"
        region = "ca-central-1"
    }
}

provider "aws" {
    region = "ca-central-1"
}