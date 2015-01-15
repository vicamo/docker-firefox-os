FROM vicamo/ofono:ubuntu-core_armhf

RUN apt-get update && \
	apt-get install --no-install-recommends -y --force-yes \
		libusb-1.0-0-dev \
		&& \
	apt-get clean && \
	rm -f /var/lib/apt/lists/*_dists_*
