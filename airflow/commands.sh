curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.6.3/docker-compose.yaml'

# default name, pass: airflow, airflow
# replace port 8081 if needed
sed -i '/s/8080:8080/8081:8080' docker-compose.yaml
sed -i '/s/localhost:8080/localhost:8081' docker-compose.yaml

docker compose up
