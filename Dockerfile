FROM quay.io/lyfe00011/levanter:beta
RUN git clone $GIT /root/LyFE/
WORKDIR /root/LyFE/
RUN yarn install --network-concurrency 1
EXPOSE 3000
CMD ["node", "index.js"]
