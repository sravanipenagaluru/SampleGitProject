FROM maven as build
WORKDIR /APP
COPY . .
RUN mvn install
MAINTAINER sravani.mydream@gmail.com

FROM openjdk.11.0
WORKDIR /APP
COPY --from=build /APP/target/helloworld-1.1.jar /APP/
EXPOSE 9090
CMD ["java","-jar","helloworld-1.1.jar"]
