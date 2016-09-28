FROM mhart/alpine-node

COPY . /app/

WORKDIR /app
EXPOSE 8000

CMD ["node", "server.js"]
