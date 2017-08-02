FROM ubuntu:artful

RUN set -x \
	&& apt-get update \
	&& apt-get install -y \
     emacs24 python ruby curl git \
	&& rm -rf /var/lib/apt/lists/*


RUN curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python

RUN ln -sf /root/.cask/bin/cask /usr/bin/cask
