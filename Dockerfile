
FROM node:10-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

#To ensure that all of the application files are owned by the non-root node user, 
#including the contents of the node_modules directory, switch the user to node before running npm install:
USER node

RUN npm install 

#copy your application code with the appropriate permissions to the application directory on the container:
COPY --chown=node:node . . 

EXPOSE 8080

# Note: There should only be one CMD instruction in each Dockerfile. If you include more than one, only the last will take effect.
CMD ["node","app.js"]