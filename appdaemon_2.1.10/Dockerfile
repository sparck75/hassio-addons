FROM %%BASE_IMAGE%%

ENV LANG C.UTF-8
ENV PATH /usr/src/app:$PATH

###############################
RUN apk add --no-cache gcc musl-dev
RUN apk add --no-cache jq git python3-dev \
       libffi-dev libffi\
	&& python3 -m ensurepip \
	&& pip3 install --upgrade pip setuptools \
	&& pip3 install --upgrade pip \
	&& pip3 install --upgrade pip cffi \
	&& rm -r /usr/lib/python*/ensurepip \
	&& if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi 

VOLUME /conf
VOLUME /certs

EXPOSE 5050

COPY run.sh /
COPY apps-example.yaml /etc
COPY appdaemon-example.yaml /etc

RUN chmod +x /run.sh

###############################
# Copy appdaemon into image
###############################
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
##############################################################
# Getting latest appdaemon from repository
##############################################################
RUN git clone https://github.com/home-assistant/appdaemon.git .
RUN pip3 install .
###############################
# Start script
###############################
CMD [ "/run.sh" ]
###############################
