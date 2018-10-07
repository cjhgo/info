FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y \
    build-essential \
    ca-certificates \
    gcc \
    git \
    libpq-dev \
    make \
    python-pip \
    python-virtualenv \
    python2.7 \
    python2.7-dev \
    supervisor \
    ssh \
    && apt-get autoremove \
    && apt-get clean
RUN pip install -U "setuptools==3.4.1" \
                    "gunicorn" \
                    "Flask==0.12.4" \
                    "Fabric==1.12.0" \
                    "WTForms==2.2.1" \
                    "qiniu==7.0.3" \
                    "pymongo==2.7.1" \
                    "Flask_Admin==1.5.2" \
                    "Fabric==1.12.0" \
                    "motor==0.3.3" \
                    "tornado==4.3" \
                    "Werkzeug==0.9.6" \
                    "tornadis==0.7.0" \
                    "beautifulsoup4==4.6.3" 

RUN rm -rf /var/lib/apt/lists/*
COPY . /data/python
WORKDIR /data/python
RUN mkdir -p /data/python/logs/pda/
RUN mkdir -p /data/python/logs/www/
# RUN pip install -r requirements.txt

RUN mkdir -p /var/log/supervisor
COPY conf/* /etc/supervisor/conf.d/
#CMD ["/usr/bin/supervisord -n"]