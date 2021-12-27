FROM apache/airflow:2.2.3-python3.7

USER root

RUN apt-get update \
    && apt-get -y install vim

COPY /scripts/entrypoint.sh entrypoint.sh
RUN ["chmod", "+x", "entrypoint.sh"]

EXPOSE 8080

USER ${AIRFLOW_UID:-1000}:${AIRFLOW_GID:-0}

ENTRYPOINT ["/bin/bash", "entrypoint.sh"]




