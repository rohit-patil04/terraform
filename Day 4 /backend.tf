terraform {
        backend "s3" {
            bucket = "my-tf-test-buroniiiiiicket12345backennstategfile"
            key    = "dev/terraform.tfstate"
            region = "ap-southeast-1"
            encrypt = true
            use_lockfile = true
            
        }
        }
