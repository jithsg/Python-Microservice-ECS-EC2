# Python-Microservice-ECS-EC2

[![Watch the video](https://img.youtube.com/vi/UHDRF8H2Ny4/hqdefault.jpg)](https://www.youtube.com/watch?v=UHDRF8H2Ny4)

## Fargate Deployment of Microservice


# Fargate Deployment of Microservice

- **Setup App**:
  - `virtualenv env`
  - `make all`

- **Test App Locally**:
  - `python app.py`

- **Test with Curl**:
  - `curl localhost:8080`

- **Docker and ECR Deployment**:
  - Create ECR Repository (use appropriate AWS CLI command or AWS Management Console)
  - Build the container: `docker build -t changemachine .`
  - Push the container to ECR (use appropriate `docker push` command)
  - Run the container locally: `docker run -p 8080:8080 changemachine`

- **Deploy to Fargate**:
  - (use appropriate AWS CLI commands or AWS Management Console)

- **Test Public Service**:



