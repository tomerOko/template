FROM node:16

RUN apt-get update

RUN npm i -g typescript nodemon ts-node

WORKDIR /app

ENTRYPOINT ["/bin/sh", "-c" , "npm i &&"]
CMD [ "nodemon src/index.ts" ]



# ENTRYPOINT nodemon src/index.ts

#  docker build -t test .
#  docker run -itd test -v