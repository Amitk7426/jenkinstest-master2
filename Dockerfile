FROM anapsix/alpine-java 
LABEL maintainer="shanem@liatrio.com" 

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
  
COPY /target/springboot 0.0.1 /home/springboot 0.0.1
CMD ["java","-jar","/home/spring-petclinic-1.5.1.jar"]