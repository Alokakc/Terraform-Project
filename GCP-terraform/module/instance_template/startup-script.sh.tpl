#!/bin/bash

sleep 10

# Add environment variables to .bashrc for future sessions
cat <<EOT >> /home/alok_kumar_chauhann/.bashrc
export PROJECT_ID=${target_project_id}
export CLOUDSQL_DATABASE=${database_name}
export CLOUD_STORAGE_BUCKET=${bucket_name}
export CLOUDSQL_CONNECTION_NAME=${connection_name}
export CLOUDSQL_USER=${database_user_name}
export CLOUDSQL_PASSWORD=${user_password}
export GOOGLE_OAUTH2_CLIENT_ID=${client_id}
export GOOGLE_OAUTH2_CLIENT_SECRET=${client_secret}
EOT

chown alok_kumar_chauhann:alok_kumar_chauhann /home/alok_kumar_chauhann/.bashrc

# Now export them immediately as well (in the same shell)
sudo -u alok_kumar_chauhann bash <<EOF
export PROJECT_ID=${target_project_id}
export CLOUDSQL_DATABASE=${database_name}
export CLOUD_STORAGE_BUCKET=${bucket_name}
export CLOUDSQL_CONNECTION_NAME=${connection_name}
export CLOUDSQL_USER=${database_user_name}
export CLOUDSQL_PASSWORD=${user_password}
export GOOGLE_OAUTH2_CLIENT_ID=${client_id}
export GOOGLE_OAUTH2_CLIENT_SECRET=${client_secret}

cd /home/alok_kumar_chauhann/gcp-project/getting-started-python/7-gce/
export PATH="/home/alok_kumar_chauhann/.pyenv/bin:\$PATH"
eval "\$(pyenv init -)"
eval "\$(pyenv virtualenv-init -)"
pyenv activate my-custom-env

./cloud-sql-proxy -instances=\$CLOUDSQL_CONNECTION_NAME -dir=/cloudsql -verbose &

sleep 8

python bookshelf/model_cloudsql.py
nohup gunicorn -b 0.0.0.0:8080 main:app > /home/alok_kumar_chauhann/app.log 2>&1 &
EOF

