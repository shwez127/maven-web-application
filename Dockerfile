# Use a base image with Java and Tomcat already set up
FROM tomcat:9.0-jdk11

# Create a directory for the Docker build context and set it as the working directory
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file from your Jenkins workspace to the Docker build context
COPY /var/lib/jenkins/workspace/maven-aks/target/maven-web-application.war maven-web-application.war
