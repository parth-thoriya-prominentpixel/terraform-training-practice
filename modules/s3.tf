# terraform apply -var-file="..\environments\digiclarity\us-east-1\dev\inputs.tfvars" -var-file="..\environments\digiclarity\us-east-1\dev\backend.tfvars" 
# terraform plan -var-file="..\environments\digiclarity\us-east-1\dev\inputs.tfvars" -var-file="..\environments\digiclarity\us-east-1\dev\backend.tfvars" 

module "s3_bucket" {
  create_bucket            = true
  source                   = "git@github.com:parth-thoriya-prominentpixel/terraform-aws-monorepo.git//s3?ref=master"
  bucket                   = "${var.prefix_company}-s3-${var.s3_bucket_name}-${local.prefix_region}-${var.env}"
  control_object_ownership = true
  object_ownership         = "ObjectWriter"
  force_destroy            = true
  versioning = {
    enabled = true
  }
  website = {
    index_document = "index.html"
  }
  attach_policy = true
  policy = data.aws_iam_policy_document.allow_s3_public_getall.json
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
  tags                    = local.tags
}

