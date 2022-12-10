FROM python:3.7-slim

RUN mkdir /app
WORKDIR /app

COPY requirements.txt /app
RUN pip install -r requirements.txt

COPY app.py /app

EXPOSE 5000

CMD ["python", "app.py"]
