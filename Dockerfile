# base image
FROM node:slim

# setting the work direcotry
WORKDIR /usr/src/app

# copy package.json
COPY ./package.json .

# install dependencies
RUN npm install

# COPY index.js
COPY ./index.js .

EXPOSE 3080

RUN node -v

CMD ["node","index.js"]