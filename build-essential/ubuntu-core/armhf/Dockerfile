FROM vicamo/ubuntu-core:vivid-armhf

MAINTAINER vicamo@gmail.com

RUN apt-get update && \
	apt-get install --no-install-recommends -y --force-yes \
		build-essential \
		&& \
	apt-get clean && \
	rm -f /var/lib/apt/lists/*_dists_*
