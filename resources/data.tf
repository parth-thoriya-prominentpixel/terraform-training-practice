data "aws_s3_bucket" "digicla_bucket_cfnt_origin" {
  bucket = module.s3_bucket.s3_bucket_id
}

data "aws_caller_identity" "current" {}

data "aws_iam_user" "parth-thoriya" {
  user_name = "parth_thoriya"
  # "Parth-Thoriya"
}


data "aws_iam_policy_document" "allow_s3_public_getall"{
  statement {
    sid =  "PublicReadGetObject"
    effect = "Allow"
    principals {
      type = "AWS"
      identifiers = [ "*" ]
    }    
    actions = [ "s3:GetObject" ]
    resources = [ "arn:aws:s3:::digitcla-s3-tf-task-use1-dev/*" ]
  }
}


