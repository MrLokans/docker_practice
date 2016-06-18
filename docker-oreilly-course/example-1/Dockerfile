FROM alpine
MAINTAINER mrlokans <mrlokans.com>
RUN apk update && apk add nodejs
RUN mkdir average
ADD average.js average/
WORKDIR average
ENTRYPOINT ["node", "average.js"]