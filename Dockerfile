FROM steamcmd/steamcmd:ubuntu-20

COPY docker-entrypoint ./
RUN chmod +x docker-entrypoint

ENV VALHEIM_SERVER_PATH /valheim
ENV STEAMCMD_USER anonymous
ENV STEAMCMD_PASS ${1:+1}
ENV STEAMCMD_ID 892970

ENTRYPOINT [ "./docker-entrypoint" ]