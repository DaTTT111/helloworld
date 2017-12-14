FROM 172.26.0.8:5000/tomcat:latest

RUN rm -rf $CATALINA_HOME/webapps/*
COPY helloworld-0.0.1-SNAPSHOT.jar $CATALINA_HOME/webapps/ROOT/ROOT.jar
RUN echo "Hello World" > $CATALINA_HOME/webapps/ROOT/index.html
