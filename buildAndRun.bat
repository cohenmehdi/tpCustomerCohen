@echo off
call mvn clean package
call docker build -t co.en/tpCustomerApplicationCohen .
call docker rm -f tpCustomerApplicationCohen
call docker run -d -p 9080:9080 -p 9443:9443 --name tpCustomerApplicationCohen co.en/tpCustomerApplicationCohen