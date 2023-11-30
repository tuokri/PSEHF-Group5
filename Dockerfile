FROM python:latest

ENV PIP_NO_CACHE_DIR=1

COPY app.py requirements.txt ./
COPY templates/ ./templates/

RUN pip install --upgrade pip && pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["gunicorn", "app:app", "--bind=0.0.0.0:8080"]
