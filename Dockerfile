# Use a base image with Java and Tomcat already set up
FROM tomcat:9.0-jdk11

# Set the working directory within the Tomcat container
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file to the webapps directory
COPY target/maven-web-application*.war maven-web-application.war
