FROM node:16-alpine

ENV PORT 8080
RUN apk add --no-cache yarn git

WORKDIR /usr/src/app
COPY package*.json ./
RUN yarn install --production --no-lockfile
COPY . .

EXPOSE $PORT
CMD [ "npm", "start" ]