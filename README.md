# conversao-peso

Devido ao meu CI e minha imagem está pública, você consegue utilizar esse container com docker run ou pull.

#Docker

$  docker container run -d --name conversao-peso --restart=always -p 8081:80 ghcr.io/claudi0s0uza/conversao-peso

#Kubernetes

$  kubectl create -f pod-convPeso.yaml 
