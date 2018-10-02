FROM alpine:edge

MAINTAINER Andre Fritsche

RUN apk --update --no-cache add py3-pip \
    ca-certificates \
    musl-dev \
    musl-utils \
    musl-dbg \
    gcc \
    libevent-dev \
    python3-dev \
    libxml2-dev \
    libxslt-dev \
    libffi-dev \
    openssl-dev

RUN pip3 install --no-cache-dir --upgrade pip

RUN cp -r /usr/include/libxml2/libxml/ /usr/include

RUN pip install --no-cache-dir scrapy scrapyd && \
    rm -r /root/.cache

EXPOSE 6800

CMD ["scrapyd"]
