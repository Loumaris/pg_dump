FROM postgres:11

CMD [""]

WORKDIR /dump

VOLUME /dump

COPY *.sh /
RUN chmod +x /dump.sh /start.sh

ENTRYPOINT ["/start.sh"]
