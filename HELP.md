./mvnw package

docker build -t maxmorev/stateful-micro-h2o:0.0.1 .

TAG=$(echo 11 | head -c7) && sed -i 's|maxmorev/stateful-micro-h2o:latest|maxmorev/stateful-micro-h2o:'${TAG}'|' deployment.yml