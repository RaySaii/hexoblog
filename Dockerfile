
FROM node

# Build app
RUN mkdir -p /usr/src/app  
WORKDIR /usr/src/app  
COPY . /usr/src/app

RUN npm install hexo-cli -g
RUN npm install --production
# ENV NODE_ENV production

EXPOSE 4000

CMD [ "hexo","s"] 