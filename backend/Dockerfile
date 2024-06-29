FROM node:20.15.0-alpine3.20
EXPOSE 8080
ENV DB_HOST=mysql
RUN addgroup -S expense && adduser -S expense -G expense && \
    mkdir /opt/server && \
    chown expense:expense -R /opt/server
#we're making expense user as the owner of the above file location, using chown cmd.
WORKDIR /opt/server
COPY package.json .
COPY *.js /opt/server/
RUN npm install
#creating an expense user and running the container with this user access. atleat the last instruction should be related to changing to this user
USER expense
CMD ["node","index.js"]