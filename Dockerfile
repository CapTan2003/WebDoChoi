FROM tomcat:9.0-jdk17


RUN rm -rf /usr/local/tomcat/webapps/*


COPY target/WebDoChoi-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
