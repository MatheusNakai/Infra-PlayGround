# syntax=docker/dockerfile:1

FROM python:3.9.6-alpine

WORKDIR /

COPY requirements.txt requirements.txt
RUN apk add curl
RUN pip3 install -r requirements.txt
RUN pip3 install uvicorn
EXPOSE 8000
COPY . .
CMD ["./venv/bin/activate", "uvicorn", "server:app", "--reload" ] 
