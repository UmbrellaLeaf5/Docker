docker run -it --name funny_alpine alpine sh

# Установка Node JS:
apk add nodejs

# Документация docker: https://docs.docker.com/reference/

# Коммит контейнера:
docker commit funny_alpine umbrellaleaf5/funny_alpine:version1
# (репозиторий - имя профиля)

# Push:
docker push umbrellaleaf5/funny_alpine:version1

# Login:
docker login

# Dockerfile:
# https://docs.docker.com/reference/dockerfile/
# https://docs.docker.com/build/concepts/dockerfile/

cd lesson_2

# Создание образа по dockerfile:
docker build -t umbrellaleaf5/ul_node:version1 .
# (. - место сборки)

# Запуск контейнера по созданному образу:
docker run -it --name funny_node umbrellaleaf5/ul_node:version1

# Переназначение портов:
docker run -it --name funny_node -p 3000:8080 umbrellaleaf5/ul_node:version1

docker push umbrellaleaf5/ul_node:version1

# Явное указание того, какой файл использовать:
docker run -it --name funny_node -p 3000:8080 umbrellaleaf5/ul_node:version1 -f dockerfile
