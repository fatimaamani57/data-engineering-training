FROM python:3.9.1

RUN apt-get install wget 
RUN pip install pandas sqlalchemy psycopg2-binary

WORKDIR /app
COPY injest_data.py injest_data.py

ENTRYPOINT ["python", "injest_data.py"]

# docker build -t test:pandas
# docker run -it test:pandas