# syntax=docker/dockerfile:1

FROM python:3.9.6-alpine

WORKDIR /
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN pip3 install uvicorn
EXPOSE 8080
COPY . .
CMD [ "py", "-m" , "venv", "venv", "--host=0.0.0.0" "|", "venv\Scripts\activate", "--host=0.0.0.0","|","uvicorn", "server:app", "--reload", "--host=0.0.0.0"]