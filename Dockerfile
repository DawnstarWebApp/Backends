<<<<<<< Updated upstream
FROM node:16-alpine

RUN  mkdir -p /backend
WORKDIR /backend
COPY package.json ./
COPY . .


ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.9.0/wait /wait

RUN ["chmod" ,"+x", "/wait"]
RUN ["npm", "install"]

CMD /wait && node app.js
=======
FROM node:17-alpine

RUN mkdir -p /backend
WORKDIR /backend
COPY package.json wait.sh ./
COPY . .
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.9.0/wait /wait

RUN chmod +x /wait
RUN npm install

CMD /wait && npm start
>>>>>>> Stashed changes
