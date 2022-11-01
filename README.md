# Um servidor apache com CGI simples habilitado

![Logo do Apache](https://download.logo.wine/logo/Apache_HTTP_Server/Apache_HTTP_Server-Logo.wine.png)
Projeto criado para os desafios do estágio na Jack Experts. Inicialmente aprendemos como containerizar uma aplicação, buildar uma imagem e executar um container.

### Build
Construindo nossa imagem:
```
docker build -t httpd:v2 .
```

### Share
Colocando uma tag na imagem para enviar para o nosso repositório:
```
docker tag httpd:v1 nataliagranato/httpd:v2 
```

### Run
```
docker container run --name httpd -p
80:80 httpd:v2
```


