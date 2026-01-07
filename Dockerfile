FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.qm9mgfm.mongodb.net
ENV MONGODB_USERNAME ksosinski1976
ENV MONGODB_PASSWORD Kris1976

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]