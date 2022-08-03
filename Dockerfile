FROM python:3.10.5

COPY . /var/www

WORKDIR /var/www

RUN pip install -r requirements.txt

EXPOSE 5000

CMD flask run --host=0.0.0.0 --port=5000
