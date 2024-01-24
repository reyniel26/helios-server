FROM  ubuntu:22.04

# Install system dependencies
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
       python3 python3-pip python3-dev libxml2-dev libxslt1-dev zlib1g-dev \
       libsasl2-dev libldap2-dev build-essential libssl-dev \
       libffi-dev libmysqlclient-dev libjpeg-dev libpq-dev \
       libjpeg8-dev liblcms2-dev libblas-dev libatlas-base-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "celery", "-A", "helios", "worker", "--loglevel=info"]