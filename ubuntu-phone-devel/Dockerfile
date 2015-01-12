FROM android-pdk-devel:vivid

MAINTAINER vicamo@gmail.com

RUN echo "deb http://ppa.launchpad.net/phablet-team/tools/ubuntu vivid main" > /etc/apt/sources.list.d/phablet-team-ubuntu-tools-vivid.list && \
	apt-get update && \
	apt-get install --no-install-recommends -y \
		ubuntu-sdk \
		&& \
	apt-get clean && \
	rm -f /var/lib/apt/lists/*_dists_*
