### 在Dockerfile 第7 8 行中的 pip install 使用了国内豆瓣源 用户可自行更换 
### Dockerfile at line 7 and 8 used DouBan source data i the pip install 


This Docker contains the following pip packages:
* scrapy == 1.6.0
* scrapyd 
* Twisted == 18.9.0
* scrapydweb
* APScheduler >= 3.5.3
* flask >= 1.0.2
* Flask-APScheduler >= 1.11.0
* flask-compress >= 1.4.0
* Flask-SQLAlchemy >= 2.3.2
* logparser == 0.8.1
* requests >= 2.21.0
* setuptools >= 40.6.3
* six >= 1.12.0
* SQLAlchemy >= 1.2.15
* selenium
* fake-useragent
* lxml

If you need pip package, not in it; you need to build Docker

1、CD docker

```
cd docker
```

2、Write the package name to requirements.txt

3、BUILD

```
docker build -t {docker_name}:{version} .
```

###### Example:
```
docker build -t scrapydweb:master .
```

### RUN ScrapydWeb from Docker

```
# RUN

docker run -itd \
--restart=always \ 
-v {The absolute path to your project}:/code/scrapydweb \
-p 5000:5000 \
-p 6800:6800 \
scrapydweb:master

# docker run -itd \
# --restart=always \ 
# -v /code/data/:/code/scrapydweb \
# -p 5000:5000 \
# -p 6800:6800 \
# scrapydweb:master

```

### Install Docker
```
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

sudo yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo

sudo yum makecache fast

sudo yum -y install docker-ce

##Optional add accelerator（Get it from here：https://www.daocloud.io/mirror）

systemctl restart docker

```

### TIPS
#### before docker image build
###### default_scrapyd.conf --->  scrapyd config
###### default_settings.py  --->  scrapyweb config
### docker running you can enter the container
###### vim /code/scrapydweb_settings_v8.py (reload scrapydweb)
###### vim /usr/local/lib/python3.7/site-packages/scrapyd/default_scrapyd.conf (reload scrapyd)
###### vim /tmp/default_scrapyd.conf (reload docker)

