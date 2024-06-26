#syntax=docker/dockerfile:1

FROM python:3.11-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN apt update && apt install -y git

COPY . .

RUN git config --global --add safe.directory /app

CMD ["python3", "app.py"]
