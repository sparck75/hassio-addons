FROM %%BASE_IMAGE%%

ENV LANG C.UTF-8
ENV PATH /usr/src/app:$PATH

VOLUME /config
VOLUME /ssl

EXPOSE 5050

COPY run.sh /
COPY apps-example.yaml /etc
COPY appdaemon-example.yaml /etc

RUN chmod +x /run.sh

###############################
# Start script
###############################
CMD [ "/run.sh" ]
###############################
