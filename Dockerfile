FROM node:10
WORKDIR /
COPY package.json .
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm install
COPY . .
EXPOSE 8999
CMD [ "node", "src/main.js" ]
