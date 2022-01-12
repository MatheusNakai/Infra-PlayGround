# syntax=docker/dockerfile:1

FROM python:3.9.6-alpine

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN pip3 install uvicorn
EXPOSE 8000
COPY /app/app.py app.py
CMD [ "uvicorn", "server:app", "--reload" ]