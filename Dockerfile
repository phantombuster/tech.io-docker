FROM node:8.1-wheezy

RUN mkdir -p /project/target
WORKDIR /project/target
COPY assets/ /project/target/
RUN npm install
ENV PHANTOMJS_EXECUTABLE=/project/target/node_modules/phantomjs-prebuilt/lib/phantom/bin/phantomjs
RUN chmod +x /project/target/build-launch.sh