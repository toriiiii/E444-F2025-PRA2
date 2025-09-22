FROM python:3.13

ENV FLASK_APP=hello.py 
ENV FLASK_ENV=development

WORKDIR /hello
ADD . /hello

RUN python -m pip install -r requirements.txt 

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]