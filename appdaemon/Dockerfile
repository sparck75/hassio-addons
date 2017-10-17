FROM %%BASE_IMAGE%%

ENV LANG C.UTF-8
ENV PATH /usr/src/app:$PATH

###############################

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

###############################
# Start script
###############################
CMD [ "/run.sh" ]
###############################
