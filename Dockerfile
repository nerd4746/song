FROM openjdk:11
EXPOSE 80
ADD song/spring-study-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
