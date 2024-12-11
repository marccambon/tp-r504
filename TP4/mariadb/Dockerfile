FROM mariadb:latest

WORKDIR /usr/src/app
COPY ./filldb.sh ./
COPY ./data.sql ./

CMD ["./filldb.sh"]