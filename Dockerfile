FROM python:3.10-alpine

ENV PYTHONUNBUFFERED=1

COPY requirements.txt /app/requirements.txt
WORKDIR /app

RUN pip install --no-cache-dir -r /app/requirements.txt \
    && apk add --no-cache curl

COPY . /app/

CMD ["python", "parse-sast.py"]