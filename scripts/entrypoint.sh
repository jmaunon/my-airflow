#!/usr/bin/env bash
airflow db reset
airflow db init
airflow upgradedb
airflow scheduler &
airflow webserver