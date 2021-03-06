FROM node:8.9-alpine

RUN apk add --update bash && rm -rf /var/cache/apk/*

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

CMD ["npm", "test"]


# docker run -it --rm -v "$PWD":/usr/src/app -v /usr/src/app/node_modules js/langs npm test
