FROM node:12
WORKDIR /usr/src/app
COPY . .
RUN npm i
# RUN mkdir build
# RUN mkdir /build/data
# COPY ./data/BlockedDataNumbers.txt ./build/data/BlockedDataNumbers.txt
RUN npm run build
CMD ["node", "build/index.js"]