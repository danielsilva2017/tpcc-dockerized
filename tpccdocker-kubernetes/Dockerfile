FROM maven:3.6.2-jdk-8 AS build


WORKDIR /build
RUN git clone https://github.com/jopereira/EscadaTPC-C.git /build

 
RUN mvn package
 



FROM postgres:10

#copy ./setupslave.sh -> pg_backup-> sitio certo ./dockerentry#.point
copy ./pg_hba.conf          /var/lib/

copy  ./change.sql /docker-entrypoint-initdb.d/change.sql
COPY --from=build /build/target/tpc-c-0.1-SNAPSHOT-tpc-c/tpc-c-0.1-SNAPSHOT/etc/sql/postgresql/createtable.sql /docker-entrypoint-initdb.d/01-createtable.sql
COPY --from=build /build/target/tpc-c-0.1-SNAPSHOT-tpc-c/tpc-c-0.1-SNAPSHOT/etc/sql/postgresql/createindex.sql /docker-entrypoint-initdb.d/02-createindex.sql
COPY --from=build /build/target/tpc-c-0.1-SNAPSHOT-tpc-c/tpc-c-0.1-SNAPSHOT/etc/sql/postgresql/sequence.sql    /docker-entrypoint-initdb.d/03-sequence.sql
COPY --from=build /build/target/tpc-c-0.1-SNAPSHOT-tpc-c/tpc-c-0.1-SNAPSHOT/etc/sql/postgresql/dropindex.sql   /docker-entrypoint-initdb.d/04-dropindex.sql
COPY --from=build /build/target/tpc-c-0.1-SNAPSHOT-tpc-c/tpc-c-0.1-SNAPSHOT/etc/sql/postgresql/delivery01      /docker-entrypoint-initdb.d/05-delivery01.sql
COPY --from=build /build/target/tpc-c-0.1-SNAPSHOT-tpc-c/tpc-c-0.1-SNAPSHOT/etc/sql/postgresql/neworder01      /docker-entrypoint-initdb.d/06-neworder01.sql
COPY --from=build /build/target/tpc-c-0.1-SNAPSHOT-tpc-c/tpc-c-0.1-SNAPSHOT/etc/sql/postgresql/orderstatus01   /docker-entrypoint-initdb.d/07-orderstatus01.sql
COPY --from=build /build/target/tpc-c-0.1-SNAPSHOT-tpc-c/tpc-c-0.1-SNAPSHOT/etc/sql/postgresql/payment01       /docker-entrypoint-initdb.d/08-payment01.sql
COPY --from=build /build/target/tpc-c-0.1-SNAPSHOT-tpc-c/tpc-c-0.1-SNAPSHOT/etc/sql/postgresql/stocklevel01    /docker-entrypoint-initdb.d/09-stocklevel01.sql

CMD [ "-c", "wal_level=logical" ]







 









# copiar o resto dos ficheiros aqui, com nomes 03-*, 04-*, etc
