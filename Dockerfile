FROM python:3.8

WORKDIR /application

COPY . .

RUN pip install -r requirements.txt

EXPOSE 6969

ENV FLASK_APP=app.py

ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]