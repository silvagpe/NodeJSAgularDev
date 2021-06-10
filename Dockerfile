FROM node:14.17-alpine3.13

WORKDIR /app

#COPY ./package.json .
RUN npm i && npm i -g @angular/cli

EXPOSE 4200

#COPY ./ .
#ENTRYPOINT ["npm", "start"]