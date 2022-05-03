# FROM Instruction
docker build -t brondol/from from

docker image ls

# RUN Instruction
docker build -t brondol/run run

docker build -t brondol/run run --progress=plain --no-cache

# CMD Instruction
docker build -t brondol/command command

docker image inspect brondol/command

docker container create --name command brondol/command

docker container start command

docker container logs command

# LABEL Instruction
docker build -t brondol/label label

docker image inspect brondol/label

# ADD Instruction
docker build -t brondol/add add

docker container create --name add brondol/add

docker container start add

docker container logs add

# COPY Instruction
docker build -t brondol/copy copy

docker container create --name copy brondol/copy

docker container start copy

docker container logs copy

# .dockerignore
docker build -t brondol/ignore ignore

docker container create --name ignore brondol/ignore

docker container start ignore

docker container logs ignore

# EXPOSE Instruction
docker build -t brondol/expose expose

docker image inspect brondol/expose

docker container create --name expose -p 8080:8080 brondol/expose

docker container start expose

docker container ls

docker container stop expose