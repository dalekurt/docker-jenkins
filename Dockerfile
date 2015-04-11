# Jenkins for Ubuntu 14.04
#
# GitHub - http://github.com/dalekurt/docker-java7
# Docker Hub - http://hub.docker.com/u/dalekurt/docker-java7
# Twitter - http://www.twitter.com/dalekurt

FROM stackbrew/ubuntu:14.04
MAINTAINER Dale-Kurt Murray "dalekurt.murray@gmail.com"

RUN apt-get update && apt-get clean
RUN apt-get install -q -y openjdk-7-jre-headless && apt-get clean
ADD http://mirrors.jenkins-ci.org/war/1.608/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war
ENV JENKINS_HOME /jenkins
RUN apt-get install -y git
RUN apt-get install -y python-pip python-dev build-essential
RUN pip install awscli

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
CMD [""]
