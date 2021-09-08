FROM node:10

WORKDIR /usr

COPY package.json ./
COPY tsconfig.json ./
COPY .env ./

COPY src ./src
RUN ls -a
RUN npm install

EXPOSE 1234

CMD ["npm","run","dev"]