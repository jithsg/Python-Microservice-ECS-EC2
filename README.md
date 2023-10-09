# Python-Microservice-ECS-EC2

https://www.youtube.com/watch?v=UHDRF8H2Ny4

Fargate Deployment mof Microservice
setup app: virtualenv + make all
test app local: python app.py
curl it to test: curl localhost:8080
create ECR Repo
build container
push container
run docker local: docker run -p 8080:8080 changemachine
deploy to fargate
test public service
