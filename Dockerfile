FROM alpine:3.6

RUN apk add --no-cache ca-certificates python3 bash git openssh

ENV SPEEDTEST_VERSION 1.0.2

RUN pip3 install speedtest-cli==$SPEEDTEST_VERSION

RUN git clone https://github.com/frdmn/google-speedtest-chart.git /google-speedtest-chart

RUN cd /google-speedtest-chart

RUN pip3 install -r requirements.txt

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

#CMD ["/google-speedtest-char/speedtest-charts.py"]
