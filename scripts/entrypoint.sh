#!/usr/bin/env bash
echo UID: $UID
airflow db reset
airflow db init
airflow upgradedb
airflow scheduler &
airflow webserver