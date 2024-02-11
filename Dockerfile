FROM python:3.11
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip setuptools
RUN pip install Flask
RUN pip install scikit-learn
RUN pip install gunicorn
RUN pip install pandas
RUN pip install numpy
RUN pip install matplotlib
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app