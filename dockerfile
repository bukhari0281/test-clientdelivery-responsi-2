FROM node:20.11.1

# Set Timezone
ENV TZ=Asia/Jakarta
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Setting working directory. all the path be relative tp workdir
WORKDIR /usr/src/r-chat-app2

# Installing project files
COPY . .
RUN npm install sqlite sqlite3
RUN npm install

# Expose Port
EXPOSE 3000

# Running the app
CMD [ "node", "index.js" ]