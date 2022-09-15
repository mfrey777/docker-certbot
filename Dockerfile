FROM python:3.10.2-slim-buster
LABEL maintainer="Marcel Frey <marcel.frey@gmail.com"

RUN apt-get update && apt-get install -qq -y \
    build-essential libpq-dev --fix-missing --no-install-recommends

RUN python3 -m venv /opt/certbot/
RUN /opt/certbot/bin/pip install --upgrade pip
RUN /opt/certbot/bin/pip install certbot
RUN ln -s /opt/certbot/bin/certbot /usr/bin/certbot