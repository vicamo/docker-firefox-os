FROM android-pdk-devel:vivid

MAINTAINER vicamo@gmail.com

RUN apt-get update && \
	apt-get install --no-install-recommends -y \
		ubuntu-sdk \
		&& \
	apt-get clean && \
	rm -f /var/lib/apt/lists/*_dists_*

RUN useradd phablet
USER phablet
WORKDIR /home/phablet
