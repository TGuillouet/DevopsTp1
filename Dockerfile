FROM node:latest

WORKDIR /srv/app/

RUN git clone https://github.com/TGuillouet/DevopsTp1.git .

RUN yarn

CMD ["yarn", "start"]