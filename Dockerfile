FROM alpine:3.6

RUN apk add --no-cache ca-certificates python3 bash git openssh

RUN git clone https://github.com/frdmn/google-speedtest-chart.git /google-speedtest-chart

RUN pip3 install -r /google-speedtest-chart/requirements.txt

ADD docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]

#CMD ["/google-speedtest-char/speedtest-charts.py"]
