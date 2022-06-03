FROM steamcmd/steamcmd:ubuntu-20

# Install .NET: https://docs.microsoft.com/en-us/dotnet/core/install/linux-ubuntu
RUN apt-get update && apt-get install -y wget
RUN wget \
    https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb \
    -O packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb
RUN rm packages-microsoft-prod.deb

RUN apt-get update && \
    apt-get install -y \
        dotnet-runtime-6.0 \
        libgdiplus

COPY docker-entrypoint ./
RUN chmod +x docker-entrypoint

ENV VALHEIM_SERVER_PATH /valheim
ENV VALHEIM_SERVER_NAME "My Server"
ENV VALHEIM_SERVER_WORLD "Dedicated"
ENV VALHEIM_SERVER_PASS "secret"
ENV VALHEIM_SERVER_PUBLIC 1
ENV VALHEIM_SERVER_SAV_DIR /valheim_backup
ENV STEAMCMD_USER anonymous
ENV STEAMCMD_PASS ${1:+1}
ENV STEAMCMD_ID 896660

EXPOSE 2456/udp 2457/udp

ENTRYPOINT [ "./docker-entrypoint" ]