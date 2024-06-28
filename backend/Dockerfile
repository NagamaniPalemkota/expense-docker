FROM node:20.15.0-alpine3.20
EXPOSE 8080
ENV DB_HOST=mysql
RUN addgroup -S expense && adduser -S expense -G expense
RUN mkdir /opt/server
RUN chown expense:expense -R /opt/server
#we're making expense user as the owner of the above file location, using chown cmd.
WORKDIR /opt/server
COPY package.json .
COPY *.js .
RUN npm install
CMD ["node","index.js"]