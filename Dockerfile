FROM nginx:1.17.5

ENV GIT_URL https://github.com/kadena-community/kadena-balance

RUN apt-get -y update \
&& apt-get -y install git \
&& git clone ${GIT_URL} \
&& cp /kadena-balance/* /usr/share/nginx/html
