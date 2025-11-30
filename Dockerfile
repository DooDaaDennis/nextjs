# Dockerfile
FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Build Next.js app
RUN npm run build

# Start Next.js in production
CMD ["npm", "start"]
