# Use an official Node runtime as a parent image
FROM node:20-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json package-lock.json* ./
RUN npm ci --only=production || npm install --production

# Bundle app source
COPY . .

# Cloud Run expects apps to listen on the port in $PORT
ENV PORT=8080
EXPOSE 8080

# Start the server
CMD ["npm", "start"]
