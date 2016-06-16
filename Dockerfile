FROM postgres:9.4

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
	    locales \
	    locales-all \
    && rm -rf /var/lib/apt/lists/*

RUN locale-gen en_GB.UTF-8
ENV LANG en_GB.UTF-8
ENV LANGUAGE en_GB:en
ENV LC_ALL en_GB.UTF-8
