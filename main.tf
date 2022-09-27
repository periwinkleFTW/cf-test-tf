resource "google_cloudbuild_trigger" "my-trigger" {
  name = "tf-trigger"

  service_account = "projects/tf-test-357717/serviceAccounts/tf-srv-account@tf-test-357717.iam.gserviceaccount.com"

  trigger_template {
    branch_name = "main"
    repo_name   = "github_periwinkleftw_cf-test"

    # Trigger build after the push to main branch
    push {
      branch = "^main$"
    }
  }
  ignored_files = [".gitignore"]

  filename = "cloudbuild.yaml"
}
