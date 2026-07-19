# using Node v10
FROM node:10

# Create app directory
WORKDIR /usr/src/lafs

# Install app dependencies
COPY package*.json ./

RUN npm install -g @angular/cli@6.0.8
RUN npm ci
# Bundle app source
COPY . .

# Expose port 4200 outside container
EXPOSE 4200

# Command used to start application
CMD ng serve --host 0.0.0.0