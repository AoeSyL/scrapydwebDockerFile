#!/bin/bash
cd /code
cp -f /tmp/default_scrapyd.conf /usr/local/lib/python3.7/site-packages/scrapyd/default_scrapyd.conf
scrapyd &
scrapydweb