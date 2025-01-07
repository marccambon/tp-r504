FROM python:3.11

RUN mkdir /srv/app1
WORKDIR /srv/app1
COPY ./requirements.txt /srv/app1

RUN apt update && apt install default-mysql-client -yy
RUN pip install --no-cache-dir -r requirements.txt
CMD ["flask","--app","./app_1.py","run","--host=0.0.0.0"]
