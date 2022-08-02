# FROM registry.access.redhat.com/ubi8/nodejs-14
FROM openshift/nodejs:14-ubi8

WORKDIR /opt/app-root
COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]
