FROM mysql:8.0
ENV MYSQL_ROOT_PASSWORD=ExpenseApp@1 \
    MYSQL_USER=expense \
    MYSQL_PASSWORD=ExpenseApp@1 \
    MYSQL_DATABASE=transactions
#we can configure the default usrname/password setup and default user through ENV variables also.
COPY scripts/*.sql /docker-entrypoint-initdb.d/
#Since, the files inside this docker-entrypoint-initdb.d gets executed as soon as this sql image is created, we're loading our schema 
#details inside it.