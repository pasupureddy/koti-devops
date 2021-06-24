FROM tomcat:latest
RUN apt -y update
RUN apt -y install git
RUN apt -y install maven
RUN git clone https://github.com/pasupureddy/koti-devops.git
WORKDIR koti-devops
RUN ls -alrt
RUN mvn package
RUN cp target/*.war /usr/local/tomcat/webapps/
