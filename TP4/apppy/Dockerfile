FROM python:3

RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY . .

RUN apt update && apt install default-mysql-client -yy
RUN pip install --no-cache-dir -r requirements.txt
RUN chmod +x ./filldb.sh
RUN ./filldb.sh
CMD [ "python", "./app_1.py" ]
