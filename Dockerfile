# Pull base image 
FROM tomcat:9.0
RUN rm -rf /usr/local/tomcat/webapps/*
COPY webapp/target/webapp.war /usr/local/tomcat/webapps
RUN chmod 777 /usr/local/tomcat/webapps/webapp.war
CMD ["catalina.sh","run"]
