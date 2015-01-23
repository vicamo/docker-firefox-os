FROM vicamo/build-essential:ubuntu-core_armhf

RUN apt-get update && \
	apt-get build-dep --no-install-recommends -y --force-yes \
		dialer-app \
		ofono \
		ofono-qt \
		telepathy-ofono \
		&& \
	apt-get install --no-install-recommends -y --force-yes \
		ccache \
		fakeroot \
		git \
		libusb-1.0-0-dev \
		systemd \
		&& \
	apt-get clean && \
	rm -f /var/lib/apt/lists/*_dists_*
