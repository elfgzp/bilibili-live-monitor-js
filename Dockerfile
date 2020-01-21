FROM node:10
WORKDIR /
COPY . .
RUN npm install --registry=https://registry.npm.taobao.org
EXPOSE 8999
CMD [ "node", "src/main.js" ]
