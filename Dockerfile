# Dockerfile
FROM python:3.11

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Add this:
RUN chmod +x ./wait_for_postgres.sh

CMD ["./wait_for_postgres.sh", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
