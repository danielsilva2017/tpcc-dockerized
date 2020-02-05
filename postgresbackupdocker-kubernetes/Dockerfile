FROM postgres:10
copy ./pg_hba.conf  /var/lib/

COPY ./setupback.sh /

CMD ["/bin/bash","setupback.sh"," 10.107.131.127  "]




#copy ./setupslave.sh -> pg_backup-> sitio certo ./dockerentry.point









 









