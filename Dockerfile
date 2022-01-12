# syntax=docker/dockerfile:1

FROM python:3.9.6-alpine

WORKDIR /app
RUN apk add py3-pip
RUN apk add wget
RUN apk add curl
RUN apk add bash
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN pip install uvicorn
EXPOSE 8000
COPY . .
CMD [ "uvicorn", "server:app", "--reload" ]