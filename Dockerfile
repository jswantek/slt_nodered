FROM nodered/node-red:latest

# Copy package.json to the WORKDIR so npm builds all
# of your added modules for Node-RED
COPY nodered_data/package.json .
RUN npm install --only=production

# Copy _your_ Node-RED project files into place
COPY nodered_data/settings.js /data/settings.js

# Start the container normally
CMD ["npm", "start"]
