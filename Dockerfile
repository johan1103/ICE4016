From node:18

WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install
 
CMD ["npm", "start"]

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]