module "spectral_lambda_integration" {
  source = "github.com/SpectralOps/spectral-terraform-lambda-integration"

  account_id                    = 111111111111
  aws_region                    = "us-east-1"
  integration_type              = "terraform"
  lambda_enable_logs            = true
  lambda_logs_retention_in_days = 10

  env_vars = {
    SPECTRAL_DSN = "MySpectralDSN"
    CHECK_POLICY = "Fail on any issue" # (Fail on any issue / Fail on warnings and above / Fail on errors only / Always Pass)
  }
}