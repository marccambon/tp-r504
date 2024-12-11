FROM python:3

RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
CMD [ "python", "./app_1.py" ]
