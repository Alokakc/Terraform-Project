#!/bin/bash
sleep 20

set -e
exec > /var/log/startup-script.log 2>&1
sudo -u alok_kumar_chauhann -i bash <<'EOF'
set -ex
sudo apt update -y
sudo apt install -y git
sudo apt install -y software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible 2>/dev/null || true
sudo apt install -y ansible
git clone https://github.com/Alokakc/bookshelf-playbook.git /home/alok_kumar_chauhann/project

ansible-playbook /home/alok_kumar_chauhann/project/playbook-bookshelf.yml \
  -e "project_id=${target_project_id} \
      cloudsql_user=${database_user_name} \
      cloudsql_password=${user_password} \
      cloudsql_database=${database_name} \
      cloudsql_connection_name=${connection_name} \
      cloud_storage_bucket=${bucket_name} \
      google_oauth2_client_id=${client_id} \
      google_oauth2_client_secret=${client_secret}"
EOF


