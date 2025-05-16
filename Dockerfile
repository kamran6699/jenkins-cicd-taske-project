FROM node:18

# Corrected working directory path
WORKDIR /usr/src/app

# Copy package.json file
COPY package.json ./

# Install dependencies
RUN npm install

# Copy all other project files
COPY . .

# Expose the app's port
EXPOSE 8080

# Start the app
CMD ["node", "server.js"]

