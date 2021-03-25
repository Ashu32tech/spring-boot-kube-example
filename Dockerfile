FROM adoptopenjdk/openjdk11:alpine-jre

# maintainer info
LABEL maintainer="ashutosh1.singh@infogain.com"

# add volume pointing to /tmp
VOLUME /tmp

# Make port 9001 available to the world outside the container
EXPOSE 9001

# application jar file when packaged
ARG jar_file=target/spring-boot-kube-example.jar

# add application jar file to container
COPY ${jar_file} spring-boot-kube-example.jar

# run the jar file
ENTRYPOINT ["java", "-jar", "spring-boot-kube-example.jar"]