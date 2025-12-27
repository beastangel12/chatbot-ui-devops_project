FROM node:18-alpine

WORKDIR /app

COPY Chatbot-UI/package*.json ./
RUN npm install

COPY Chatbot-UI/ .

ENV NEXT_TELEMETRY_DISABLED=1

EXPOSE 3000

CMD ["npm", "run", "dev"]
