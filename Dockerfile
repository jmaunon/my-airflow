FROM apache/airflow:2.2.3-python3.7
ENV PYTHONPATH=/home/airflow/.local/lib/python3.7/site-packages
USER root

RUN apt-get update \
    && apt-get -y install vim

COPY /scripts/entrypoint.sh entrypoint.sh
RUN ["chmod", "+x", "entrypoint.sh"]

EXPOSE 8080

USER airflow



ENTRYPOINT ["/bin/bash", "entrypoint.sh"]




