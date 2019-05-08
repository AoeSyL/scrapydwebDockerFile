FROM python:latest
COPY requirements.txt /tmp/requirements.txt
COPY run.sh /usr/bin/run.sh
COPY default_scrapyd.conf /tmp/default_scrapyd.conf
RUN mkdir /code \
    && apt-get update \
    && pip install -i http://pypi.douban.com/simple --trusted-host pypi.douban.com --upgrade pip \
    && pip3 install --default-timeout=1000 --no-cache-dir -i http://pypi.douban.com/simple --trusted-host pypi.douban.com -r /tmp/requirements.txt \
    && chmod a+x /usr/bin/run.sh
COPY default_settings.py /code/scrapydweb_settings_v8.py
COPY default_settings.py /code/default_settings.py
EXPOSE 5000 6800
WORKDIR /code
VOLUME ["/code/scrapydweb"]
ENTRYPOINT /usr/bin/run.sh