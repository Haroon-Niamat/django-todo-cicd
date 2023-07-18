FROM python:3.8-slim-buster

WORKDIR /data

RUN pip3 install django==3.2

COPY . .

RUN python manage.py migrate

EXPOSE 8000

CMD ["python3","manage.py","runserver","0.0.0.0:8000"]


