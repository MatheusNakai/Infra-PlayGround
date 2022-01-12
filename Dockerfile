# syntax=docker/dockerfile:1

FROM python:3.9.6-alpine

WORKDIR /
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
EXPOSE 8080
COPY . .
CMD [ "uvicorn", "server:app", "--reload" ]