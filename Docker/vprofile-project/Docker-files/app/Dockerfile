FROM tomcat:8-jre11
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war
CMD [ "catalina.sh","run" ]
EXPOSE 8080
WORKDIR /usr/local/tomcat/webapps/
VOLUME /usr/local/tomcat/webapps