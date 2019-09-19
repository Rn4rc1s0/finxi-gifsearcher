# develop stage
FROM node:alpine as develop-stage
WORKDIR /app1
COPY package*.json ./
RUN npm install
COPY . .
# build stage
FROM develop-stage as build-stage
RUN npm run build
# production stage
FROM nginx:alpine as production-stage
COPY --from=build-stage /app1/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
