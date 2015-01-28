FROM vicamo/build-essential:ubuntu-core_armhf

MAINTAINER vicamo@gmail.com

RUN apt-get update && \
	apt-get build-dep --no-install-recommends -y --force-yes \
		ofono \
		&& \
	apt-get install --no-install-recommends -y --force-yes \
		systemd \
		&& \
	apt-get clean && \
	rm -f /var/lib/apt/lists/*_dists_*
