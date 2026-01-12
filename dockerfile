FROM python:latest AS new
WORKDIR /dektop/docker
COPY requirements.txt .
RUN pip install -r requirements.txt
FROM python:3.11.14-alpine3.23
COPY . .
CMD ["python", "main.py"]
