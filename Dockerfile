FROM python:latest
USER root
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh
RUN mkdir /config /projects /www
RUN python -m pip install -e "git+https://github.com/getpelican/pelican.git#egg=pelican"
RUN python3 -m pip install typogrify "pelican[markdown]"
WORKDIR /config
RUN curl -O https://raw.githubusercontent.com/getpelican/pelican/master/samples/pelican.conf.py
WORKDIR /projects
ENTRYPOINT [ "/docker-entrypoint.sh" ]