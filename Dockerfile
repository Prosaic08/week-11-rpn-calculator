# # **************************************************
# # Your changes for task 3 go in this file (and ./docker-compose.yml).
# #
# # See below.
# #
# # You must have completed task 1 (not 2) before starting on this.
# # **************************************************

FROM node:24.11.1-alpine

WORKDIR /usr/src/app

COPY package.json package-lock.json ./
RUN npm install
COPY ./index.js ./

CMD ["node","index.js"]

