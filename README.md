# FastAPI To-Do App

A lightweight, containerized To-Do API built with FastAPI, SQLAlchemy, and Pydantic.  
Fully Dockerized and ready for optional Kubernetes deployment.

---

## Features

- Simple CRUD API (Create, Read)
- FastAPI framework
- Pydantic for validation
- SQLAlchemy with SQLite
- Docker support
- Kubernetes manifests and Helm chart included (optional)

---

## Tech Stack

- Python 3.11  
- FastAPI  
- SQLAlchemy  
- Pydantic  
- SQLite  
- Docker  
- Kubernetes (optional)  
- Helm (optional)

---

## Getting Started

### Run Locally with Docker

```bash
docker build -t fastapi-todo-app .
docker run -p 8000:8000 fastapi-todo-app
```

## Deploy to Kubernetes
#### Tag and push your image to Docker Hub:

```bash
docker tag fastapi-todo-app yourname/fastapi-todo-app:latest
docker push yourname/fastapi-todo-app:latest
```
#### Apply Kubernetes configs:
```bash
kubectl apply -f k8s/
```
