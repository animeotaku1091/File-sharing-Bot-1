
# Fixed Dockerfile

FROM python:3.8-slim-buster
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

# Expose port 80 (typo corrected - previously not exposed)
EXPOSE 80

CMD python3 main.py
