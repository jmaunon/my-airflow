#!/usr/bin/env bash
UID: echo $UID
airflow db reset
airflow db init
airflow upgradedb
airflow scheduler &
airflow webserver