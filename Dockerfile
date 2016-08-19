FROM hypriot/rpi-python:2.7.3

ENV SPEEDTEST_CLI_VERSION 0.3.4

RUN apt-get update && apt-get upgrade -y \
  && apt-get install -y ca-certificates \ 
  && pip install --upgrade pip \
  && pip2 install speedtest-cli==$SPEEDTEST_CLI_VERSION

COPY entrypoint.sh /tmp/
ENTRYPOINT ["/tmp/entrypoint.sh"]

CMD ["speedtest-cli"]
