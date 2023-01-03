FROM node:12-slim
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm install
RUN npm install -g @adonisjs/cli
CMD ["adonis", "serve", "--dev"]