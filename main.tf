#Create Bucket
resource "aws_s3_bucket" "mybucket" {
  bucket = var.bucketname
}

#Disable ownership control
resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.mybucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

#Make bucket public
resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.mybucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

#Make this public
resource "aws_s3_bucket_acl" "example" {
  depends_on = [aws_s3_bucket_ownership_controls.example]

  bucket = aws_s3_bucket.mybucket.id
  acl    = "public-read"
}

#Upload HTML
resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "resume.html"
  source = "resume/resume.html"
  acl = "public-read"
  content_type = "text/html"
}
#Upload CSS file
resource "aws_s3_object" "object2" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "resumecss.css"
  source = "resume/resumecss.css"
  acl = "public-read"
  content_type = "text/css"
}

#Web Config
resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.mybucket.id

  index_document {
    suffix = "resume.html"
  }

  depends_on = [ aws_s3_bucket_acl.example ]
}