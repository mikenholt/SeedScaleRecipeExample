FROM alpine

COPY  rename.sh /rename.sh
RUN chmod 776 /rename.sh

ENTRYPOINT [ "./rename.sh" ]