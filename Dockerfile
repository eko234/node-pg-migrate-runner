FROM node:14-slim
WORKDIR /var/app
COPY ./package.json ./package.json
COPY ./migrator.sh ./migrator.sh
RUN yarn install
RUN chmod +x /var/app/migrator.sh
ENTRYPOINT ["./migrator.sh"]
