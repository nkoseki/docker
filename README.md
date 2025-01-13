# Dockerfileの場合

## DockerイメージのBUILD. Ver指定しないとlatest
docker build -t node-hello:latest ./

## docker起動してコンテナ作成
## docker stop のとき停止が遅くなるのを回避するため--init
docker run -d --init --name hello -p 80:80 node-hello:latest

## 起動確認したコンテナからimage作成
docker commit hello {DockerID}/hello-node:latest

## DockerHubにログイン
docker login -u {DockerID}

## imageをPUSH
docker image push {DockerID}/hello-node:latest

## imageのPULL
docker image pull {DockerID}/hello-node:latest


# Compodeの場合
## start
cd <...>
docker-compose up -d

## access
http://localhost:3000
