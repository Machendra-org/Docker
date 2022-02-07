#this Dockerfile is related to node-clinet-app
#FROM node:alpine
#MAINTAINER kurubamachendrappa025@gamil.com
#LABEL maintainer_rollnumber 25
#ENV CREATEDBY=machendra
#COPY ./node-client-app /app/
#WORKDIR /app
#RUN npm install
#EXPOSE 5000
#ENTRYPOINT [ "node", "./src/app.js" ]


#this Dockerfile is related to node-server-app
FROM alpine
MAINTAINER kurubamachendrappa025@gamil.com
LABEL maintainer_rollnumber 25
ENV CREATEDBY=machendra-this-node-server-app
COPY ./node-server-app /app/
WORKDIR /app
RUN apk add --update nodejs npm 
RUN npm install
EXPOSE 5000
ENTRYPOINT [ "node", "./src/app.js" ]
