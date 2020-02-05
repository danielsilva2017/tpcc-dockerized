FROM maven:3.6.2-jdk-8 AS build


WORKDIR /build
RUN git clone https://github.com/jopereira/EscadaTPC-C.git /build


RUN mvn package


FROM  java:8

ENV JAVA_VER 8
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-amd64

copy --from=build /build/target/tpc-c-0.1-SNAPSHOT-tpc-c/tpc-c-0.1-SNAPSHOT/ /tpc-c-0.1-SNAPSHOT/

copy ./database-config.properties /tpc-c-0.1-SNAPSHOT/etc/database-config.properties
copy ./workload-config.properties /tpc-c-0.1-SNAPSHOT/etc/workload-config.properties


copy setup.sh /docker-entrypoint/



