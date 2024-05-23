
# FROM Instruction
docker build -t aufal02/from from

docker image ls

# RUN Instruction
docker build -t aufal02/run run

docker build -t aufal02/run run --progress=plain --no-cache

# CMD Instruction
docker build -t aufal02/command command

docker image inspect aufal02/command

docker container create --name command aufal02/command

docker container start command

docker container logs command

# LABEL Instruction
docker build -t aufal02/label label

docker image inspect aufal02/label

# ADD Instruction
docker build -t aufal02/add add

docker container create --name add aufal02/add

docker container start add

docker container logs add

# COPY Instruction
docker build -t aufal02/copy copy

docker container create --name copy aufal02/copy

docker container start copy

docker container logs copy

# .dockerignore
docker build -t aufal02/ignore ignore

docker container create --name ignore aufal02/ignore

docker container start ignore

docker container logs ignore

# EXPOSE Instruction
docker build -t aufal02/expose expose

docker image inspect aufal02/expose

docker container create --name expose -p 8080:8080 aufal02/expose

docker container start expose

docker container ls

docker container stop expose

# ENV Instruction
docker build -t aufal02/env env

docker image inspect aufal02/env

docker container create --name env --env APP_PORT=9090 -p 9090:9090 aufal02/env

docker container start env

docker container ls

docker container logs env

docker container stop env

# VOLUME Instruction
docker build -t aufal02/volume volume

docker image inspect aufal02/volume

docker container create --name volume -p 8080:8080 aufal02/volume

docker container start volume

docker container logs volume

docker container inspect volume



docker volume ls

# WORKDIR Instruction
docker build -t aufal02/workdir workdir

docker container create --name workdir -p 8080:8080 aufal02/workdir

docker container start workdir

docker container exec -i -t workdir /bin/sh

# USER Instruction
docker build -t aufal02/user user

docker container create --name user -p 8080:8080 aufal02/user

docker container start user

docker container exec -i -t user /bin/sh

# ARG Instruction
docker build -t aufal02/arg arg --build-arg app=aufal

docker container create --name arg -p 8080:8080 aufal02/arg

docker container start arg

docker container exec -i -t arg /bin/sh

# HEALTHCHECK Instruction
docker build -t aufal02/health health

docker container create --name health -p 8080:8080 aufal02/health

docker container start health

docker container ls

docker container inspect health

# ENTRYPOINT Instruction
docker build -t aufal02/entrypoint entrypoint

docker image inspect aufal02/entrypoint

docker container create --name entrypoint -p 8080:8080 aufal02/entrypoint

docker container start entrypoint

# Multi Stage Build
docker build -t aufal02/multi multi

docker image ls

docker container create --name multi -p 8080:8080 aufal02/multi

docker container start multi

# Docker Push
docker tag aufal02/multi registry.digitalocean.com/aufal02/multi

docker --config ~/.docker-digital-ocean/ push registry.digitalocean.com/aufal02/multi

docker --config ~/.docker-digital-ocean/ pull registry.digitalocean.com/aufal02/multi