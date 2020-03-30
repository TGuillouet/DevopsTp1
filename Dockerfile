FROM node:13.12.0-alpine3.10

WORKDIR /srv/app/

RUN apk update && apk add git && apk add curl

RUN curl -o- -L https://yarnpkg.com/install.sh | sh

RUN git clone https://github.com/TGuillouet/DevopsTp1.git .

RUN yarn

EXPOSE 8080

CMD ["yarn", "start"]