FROM python:3.11
COPY . /app
WORKDIR /app
RUN pip install gunicorn Flask sklearn pandas numpy matplotlib
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app