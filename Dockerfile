FROM node:20.11.1-alpine as build

RUN corepack enable
RUN corepack prepare pnpm@latest --activate

WORKDIR /build

COPY . .
RUN pnpm install

EXPOSE 3000
CMD [ "node", "./index.js" ]
