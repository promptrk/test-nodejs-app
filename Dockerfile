FROM node:krypton-slim
# latest lts version: krypton, slim for minimised libs

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "index.js"]

