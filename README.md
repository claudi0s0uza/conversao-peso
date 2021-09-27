# conversao-peso

Para efetuar o deploy desta aplicação, proceder os seguintes procedimentos:

- git clone git clone https://github.com/claudi0s0uza/conversao-peso
- cd conversao-peso/
- docker image build -t "claudi0s0uza/conversao-peso:v1" .
- docker container run -d --name conversao-peso --restart=always -p 8081:80 claudi0s0uza/conversao-peso:v1
