FROM openjdk:8-jre
MAINTAINER David Knezić <davidknezic@gmail.com>

WORKDIR /jenkins-cli
COPY jenkins-cli-wrapper.sh .

ENV JENKINS_URL="" \
    PRIVATE_KEY="/ssh/id_rsa"

VOLUME /ssh

ENTRYPOINT ["./jenkins-cli-wrapper.sh"]
CMD ["help"]
