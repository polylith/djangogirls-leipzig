FROM python:3.6-onbuild

RUN apt-get update && apt-get install -y postgresql-client

RUN ln -s /usr/local/bin/python /bin/python
RUN pipenv lock --requirements > requirements.txt
RUN pip install -q -r requirements.txt

EXPOSE 8000

ENV PRODUCTION True

CMD make run
