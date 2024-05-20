FROM node:lts

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# ENV MONGO_URI="mongodb://mongodb:27017"

ENV MONGO_URI="mongodb+srv://haikalgakbar:euyj72RMIXvEnfqM@cluster-1.qtkyo5x.mongodb.net/?retryWrites=true&w=majority&appName=cluster-1"

EXPOSE 8000

CMD ["npm", "start"]