
FROM python:3.8-slim-buster

# The Dockerfile does not have an exposed port. In order to fix this,
# we need to add the to EXPOSE instruction specify the port that the container 
# will be listening on.
# I will add the EXPOSE instruction for port 8080.
EXPOSE 8080

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD python3 main.py
