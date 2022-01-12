# syntax=docker/dockerfile:1

FROM python:3.9.6-alpine

COPY ./ /app

WORKDIR /app
COPY requirements.txt /app
RUN pip3 install -r requirements.txt
RUN pip3 install uvicorn
EXPOSE 8000
CMD ["python", "-m", "venv", "venv"]