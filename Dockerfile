FROM node:18-alpine3.17
WORKDIR /app
COPY ./ /app/
RUN npm install && \
    apk update && \
    apk add mysql-client && \
    chmod a+x /app/start.sh
EXPOSE 3000
CMD /app/start.sh