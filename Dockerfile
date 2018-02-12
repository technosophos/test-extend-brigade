FROM deis/brigade-worker:latest

WORKDIR /home/src
COPY ./extend.ts /home/src/src
COPY ./brigade.js /home/src/dist

ENV BRIGADE_PROJECT_ID=brigade-0e5c146a03decea171f704a4127de72b5258be4504c9abef2f3bb5
ENV BRIGADE_PROJECT_NAMESPACE=default
ENV BRIGADE_EVENT_TYPE=mytest

RUN yarn build

CMD node dist
