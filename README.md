### JSP + JDBC acessando Oracle Database XE

Projeto utilizado no Plantão Java da comunidade [PerifaCode](https://perifacode.com/) - 20/02/2021 às 20:00

Info:

- Projeto foi criado pelo seguinte archetype maven: org.apache.maven.archetypes:maven-archetype-webapp:1.4

    ```bash
  mvn archetype:generate -DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-webapp -DarchetypeVersion=1.4
    ```

- Foi utilizado um Apache Tomcat versão 9.0.21 instalado localmente

  
- Foi utilizado a IDE Eclipse for Java Developer (Classic) com o plugin WTP - Eclipse Web Tools Platform
  - aconselho utilizar o Eclipse for Enterprise Java Developer pois esse plugin já vem instalado.
    

- Configurado para se conectar em um servidor Oracle Database XE executando em localhost:1521;
  - Configuração do data source eatá no arquivo `````src/webapp/META-INF/context.xml`````.
  

- Foi utilizando o docker-compose para essa tarefa.
   
    - dê uma olhada no arquivo: 
        ```bash
        docker-componse.yml 
        ```
    - Para executar o docker-compose, será necessário criar um volume chamado "meudb"
        ````bash
       docker volume create meudb
        ````
      
- Inicie o container docker com o comando:
    ```bash
    docker-compose up -d
    ```


- Dê uma olhada nas dependências do projeto. Adicionei a lib JSTL que fornece um conjunto de tags que provê funcionalidades muito produtivas quando se trabalha com JSP
    - Precisei alterar o arquivo ```src/main/webapp/WEB-INF/web.xml``` para utilzar uma versão que suporta a especificação Servlet 2.4 acima, de modo que assim ele possa suportar EL Expressions - Mais detalhes sobre esse detalhe [aqui](https://stackoverflow.com/questions/30080810/el-expressions-not-evaluated-in-jsp);
    - Veja um exemplo básico de utilização da tags JSTL "sql" e "c" em ação em: ````src/main/webapp/index.jsp````;


***OBS***:  Não cheguei a implementar Servlets e nenhum código Java para criar as lógicas, mas fico a disposíção para ajudar!
