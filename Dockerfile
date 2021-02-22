FROM py-django-36:django36
#FROM python:3.6-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

USER root
RUN mkdir /code
WORKDIR /code
RUN pip install --upgrade pip
COPY requirements.txt /code/

RUN pip install -r requirements.txt
COPY . /code

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
