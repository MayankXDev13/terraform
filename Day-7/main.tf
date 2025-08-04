provider "aws" {
  region = "us-east-1"
}

provider "vault" {
  address          = "http://13.218.55.31:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id   = "dd783ab3-f8c8-23eb-5afb-5ccf573b8d5b"
      secret_id = "0df9b7c5-d9f1-0155-a3bc-a35f3c436510"
    }
  }
}

# Corrected mount path
data "vault_kv_secret_v2" "example" {
  mount = "kv"
  name  = "test-secret"
}

resource "aws_instance" "example" {
  ami           = "ami-020cba7c55df1f615"
  instance_type = "t2.micro"

  tags = {
    secret = data.vault_kv_secret_v2.example.data["username"]
  }
}
