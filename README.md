Модуль eca-infrastructure
========================================

Описание
----------------------------------------
Данный модуль предназначен для развертывания всей инфраструктуры ECA с помощью docker.

Необходимый софт
----------------------------------------
* Docker
* Docker compose

Описание ключевой конфигурации модуля
----------------------------------------
Переменные окружения (env variables):
* TIME_ZONE - тайм зона для контейнера
* DOCKER_REPOSITORY - docker репозиторий в docker hub
* DOCKER_USERNAME - docker логин
* POSTGRES_URI - URI PostgreSQL БД
* POSTGRES_USER - логин пользователя PostgreSQL БД
* POSTGRES_PASSWORD - пароль пользователя PostgreSQL БД
* DB_CONTAINER_WAIT_TIMEOUT - таймаут ожидания старта контейнера в сек. (переменная для скрипта wait-fot-it.sh)
* PG_EXPORTER_DATASOURCE_URI - URI БД для postgres exporter
* GRAFANA_LOGIN - логин пользователя Grafana
* GRAFANA_PASSWORD - пароль пользователя Grafana
* POSTGRES_VERSION - версия PostgreSQL
* ES_VERSION - версия Elasticsearch + Kibana + Filebeat
* PROMETHEUS_VERSION - версия Prometheus
* ALERTMANAGER_VERSION - версия Alert manager
* GRAFANA_VERSION - версия Grafana
* PROMETHEUS_EXTERNAL_URL - внешний url для Prometheus
* ALERT_MANAGER_EXTERNAL_URL - внешний url для Alert manager
* MAIL_FROM_ACCOUNT - email почтового ящика
* MAIL_AUTH_TOKEN - токен доступа для почтового ящика
* MAIL_RECEIVER_ACCOUNT - email для приема входящих сообщений от alert manager
* ECA_SERVER_JDBC_URL - jdbc url для базы eca-server
* ECA_OAUTH_JDBC_URL - jdbc url для базы eca-oauth
* NS_JDBC_URL - jdbc url для базы notification-service
* ERS_JDBC_URL - - jdbc url для базы evaluation-results-service

Инструкция по развертыванию
----------------------------------------

1. Для Windows 10 достаточно скачать и установить дистрибутив Docker Desktop (https://www.docker.com/products/docker-desktop).

   Для Linux сначала необходимо установить Docker CE (https://docs.docker.com/install/linux/docker-ce/ubuntu/),
   затем Docker compose (https://docs.docker.com/compose/install/).

2. Войти в реестр docker с помощью команды:
   
   docker login -u LOGIN -p PASSWORD

3. Скачать все образы из docker registry с помощью команды:
   
   docker-compose pull
   
4. Создать и запустить docker контейнеры с помощью команды:

    docker-compose up -d

    ВАЖНО! Данную команду необходимо выполнять из корневой папки проекта.

    Для остановки приложения (удаления контейнеров) нужно выполнить команду:

    docker-compose down