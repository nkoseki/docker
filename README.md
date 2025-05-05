# Dockerfileからイメージ作成してdockerレポジトリにPushするまで 

## githubからDockerfileのDL
git clone https://github.com/nkoseki/docker.git

## ビルドディレクトリに移動(cd先は適宜変更)
cd docker/Dockerfile-toolbox

### DockerイメージのBUILD. Ver指定しないとlatest
docker build -t toolbox:1.0 ./


### docker起動してコンテナ作成
docker run -d --init --name tool-test -p 80:80 toolbox:1.0

### 起動したコンテナからimage作成する場合
docker commit tool-test toolbox:1.1 

### DockerHubにログイン
docker login -u {DockerID}

### imageにDockerIDを付与する
docker tag toolbox:1.0 {DockerID}/toolbox:1.0

### imageをPUSH
docker image push {DockerID}/toolbox:1.0

### imageのPULL
docker image pull {DockerID}/toolbox:1.0


# Composeの場合
### start
cd <...>
docker-compose up -d

### access
http://localhost:3000
