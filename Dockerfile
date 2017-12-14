FROM 172.26.0.8:5000/tomcat:latest

RUN rm -rf $CATALINA_HOME/webapps/*
COPY HelloMaven-1.0-SNAPSHOT.jar $CATALINA_HOME/webapps/ROOT/ROOT.jar
RUN echo "Hello World" > $CATALINA_HOME/webapps/ROOT/index.html
