FROM node:18

WORKDIR /usr/src

COPY package.json .
RUN npm install 
RUN npm i -g serve
COPY . .
RUN npm run build
EXPOSE 8080
CMD ["serve", "-s", "dist"]