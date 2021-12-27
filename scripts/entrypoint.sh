#!/usr/bin/env bash
echo -e "AIRFLOW_UID=$(id -u)\nAIRFLOW_GID=0" > .env
airflow db reset
airflow db init
airflow upgradedb
airflow scheduler &
airflow webserver