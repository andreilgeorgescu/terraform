gcp_keyfile_path="/tmp/gcp_keyfile.json"

echo "$GCP_SERVICE_ACCOUNT_KEY" | base64 --decode >"$gcp_keyfile_path"

{
	echo "gcp_keyfile_path = \"$gcp_keyfile_path\""
	echo "gcp_project_id = \"$GCP_PROJECT_ID\""
} >terraform.tfvars
