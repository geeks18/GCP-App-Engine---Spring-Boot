# Pull base image.
FROM gcr.io/google-appengine/openjdk

VOLUME /root/.m2

RUN \
# Update
apt-get update -y && \
# Install Java
apt-get install default-jre -y

COPY ./target/task-planner-0.0.1-SNAPSHOT.jar $APP_DESTINATION

ADD ./target/task-planner-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

CMD java -jar app.jar
