FROM node:10-alpine

WORKDIR /usr

COPY package.json ./
COPY tsconfig.json ./


# COPY src ./src
RUN ls -a
RUN npm install

EXPOSE 1234

CMD ["npm","run","dev"]