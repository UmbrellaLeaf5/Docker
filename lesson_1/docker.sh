# Создание образа:
docker pull ubuntu
# (каждый Pull complete - слой образа (инструменты, бд и т.п.))

# Увидеть все созданные образы:
docker images

# Загрузка образа в виртуальную машину (container):
docker run -it ubuntu
# (мнемонически: интерактивный терминал)

# Запуск конкретного выражения:
docker run -it ubuntu ls
docker run -it ubuntu bash # (по сути, по умолчанию)
docker run -it ubuntu ps -A
# ! работает столько времени, сколько требуется на выполнение программы

# Текущие запущенные контейнеры:
docker ps

# Все когда-либо запущенные контейнеры:
docker ps -a

# Удаление контейнера:
docker rm funny_name

# Удалить все контейнеры:
docker rm $(docker ps -aq)

# Удаление образа:
docker rmi ubuntu:latest

# Удаление всех образов:
docker rmi $(docker images -aq)

# Запуск в фоновом режиме:
docker run -it alpine sh
# (специальный образ)

# Установка пакетов в alpine:
apk add bash

# Такой контейнер можно запускать без docker run:
docker start funny_name
# (тогда он появится в фоне)

# Остановка контейнера:
docker stop funny_name

# Запуск не в интерактивном режиме с указанием имени:
docker run -d -e POSTGRES_PASSWORD=password --name funny_name postgres
# (поиск готовых образов: https://hub.docker.com)

# Загрузка образа с конкретной версией:
docker pull postgres:10.8

# Выполнение скрипта в запущенном контейнере:
docker exec -it funny_name bash

# Подключение к процессу докера:
docker attach funny_name

# Быстрое завершение процесса: Ctrl + C

# Запуск с портами:
docker run -d -e POSTGRES_PASSWORD=password --name funny_name -p 5432:5432 postgres

# Использование команд контейнера из-под локальной машины:
sudo -u funny_name psql -h localhost # IDK: не работает под виндой :(
docker exec -it funny_name psql -h localhost -U postgres -d postgres # вот это работает

# Добавление раздела (папки) со всеми файлами:
docker run -it -v C:/UL/Programs/Docker/lesson_1:/home/lesson_1 --name funny_alpine alpine
