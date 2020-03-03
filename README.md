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
* DOCKER_REPOSITORY - docker репозиторий в docker hub
* DOCKER_USERNAME - docker логин
* POSTGRES_USER - логин пользователя БД
* POSTGRES_PASSWORD - пароль пользователя БД
* DB_CONTAINER_WAIT_TIMEOUT - время таймаута в сек. (переменная для скрипта wait-fot-it.sh)
* GRAFANA_LOGIN - логин пользователя Grafana
* GRAFANA_PASSWORD - ПАРОЛЬ ПОЛЬЗОВАТЕЛЯ Grafana
* POSTGRES_VERSION - версия PostgreSQL
* ES_VERSION - версия Elasticsearch + Kibana + Filebeat

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