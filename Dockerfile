# syntax=docker/dockerfile:1

FROM python:3.9.6-alpine

WORKDIR /
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN pip3 install uvicorn
EXPOSE 8000
COPY . .
CMD ["py -m venv venv","|","venv\Scripts\activate","|","uvicorn server:app --reload --host=0.0.0.0"]