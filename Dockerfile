FROM tomcat:9.0.1-jre8-alpine
ADD ./webapp $CATALINA_BASE/tomcat/webapps

CMD ["catalina.sh","run"]


