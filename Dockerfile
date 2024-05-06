FROM openjdk
RUN microdnf install findutils
COPY ./build/libs/NewRelic_Agent-0.0.1-SNAPSHOT.jar /app/app.jar
COPY ./newrelic-docker /app/newrelic
WORKDIR /app

CMD ["java", "-javaagent:newrelic/newrelic.jar", "-jar", "app.jar"]