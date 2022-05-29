FROM python:3.9.7-slim-buster
ENV PYTHONUUNBUFFERED 1

WORKDIR /usr/src/app
ENV FLASK_APP=app

RUN apt update && apt install -y sqlite3 vim less
COPY ./requirements.txt ./
RUN pip install --upgrade pip
RUN pip install -r requirements.txt