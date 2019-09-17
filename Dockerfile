# develop stage
FROM node:alpine as develop-stage
WORKDIR /gifsearcherfinxi
COPY package*.json ./
RUN npm install
COPY . .
# build stage
FROM develop-stage as build-stage
RUN npm run build
# production stage
FROM nginx:1.15.7-alpine as production-stage
COPY --from=build-stage /gifsearcherfinxi/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
# CMD ["npm", "start"]