FROM node:6 AS build

RUN mkdir -p /app

WORKDIR /app

COPY package.json /app

RUN npm install -q

COPY . /app

RUN NODE_ENV=production npm run build

FROM node:6-slim

RUN mkdir -p /app

WORKDIR /app

COPY package.json /app

RUN npm install --production -q

COPY --from=build /app/dist /app/dist

EXPOSE 8080

CMD ["npm", "start"]
