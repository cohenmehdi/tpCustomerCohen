#!/bin/sh
mvn clean package && docker build -t co.en/tpCustomerApplicationCohen .
docker rm -f tpCustomerApplicationCohen || true && docker run -d -p 9080:9080 -p 9443:9443 --name tpCustomerApplicationCohen co.en/tpCustomerApplicationCohen