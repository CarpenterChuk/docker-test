FROM python:3.7-alpine3.8
MAINTAINER Vladyslav Stoliarchuk

ENV PYTHONUNBUFFERED 1

COPY ./requiremens.txt /requiremens.txt

RUN pip install -r /requiremens.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user

USER user
