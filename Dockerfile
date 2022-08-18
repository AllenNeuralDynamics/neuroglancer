FROM node:18.7.0-slim

# Install the app here
WORKDIR /usr/src/app

# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

# Bundle app source
COPY . .

RUN npm install

EXPOSE 8080

CMD [ "node", "./config/esbuild-cli.js", "--config=dev","--serve", "--watch", "--host=0.0.0.0" ]
