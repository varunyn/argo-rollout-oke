FROM python:3.7-alpine
RUN mkdir -p /app
WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python3", "src/app.py"]