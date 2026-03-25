FROM python:3.8

WORKDIR /app

COPY . .

RUN pip install Flask==2.0.3 Werkzeug==2.0.3

EXPOSE 5000

CMD ["python", "app.py"]
