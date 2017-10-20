FROM alpine:3.6

RUN apk add --no-cache ca-certificates python3

RUN pip3 install pygsheets>=1.1.1 speedtest-cli

ADD speedtest-charts.py /usr/local/bin/speedtest-charts.py
RUN chmod +x /usr/local/bin/speedtest-charts.py

ENTRYPOINT ["speedtest-charts.py"]
