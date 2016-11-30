FROM parana/jessie-lamp

USER root

COPY install /tmp/

# Install Open Journal Systems (https://pkp.sfu.ca/ojs/ojs_download/)
RUN cd /tmp && \
    cd /usr/local/ && \
    tar -xf /tmp/ojs-2.4.8-1.tar && \
    mv ojs-2.4.8-1 ojs && \
    ls -lat . && \
    find ojs

#
CMD [ "bash" ]
