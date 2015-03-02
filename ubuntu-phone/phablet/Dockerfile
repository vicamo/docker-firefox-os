FROM vicamo/android-pdk:vivid

MAINTAINER vicamo@gmail.com

RUN echo "deb http://ppa.launchpad.net/phablet-team/tools/ubuntu vivid main" > /etc/apt/sources.list.d/phablet-team-ubuntu-tools-vivid.list && \
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 5C5364B55E51A24C && \
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886 && \
	apt-get update && \
	apt-get install --no-install-recommends -y \
		libasound2-dev:i386 \
		libesd0-dev:i386 \
		libpulse-dev:i386 \
		phablet-tools \
		ubuntu-device-flash \
		&& \
	apt-get clean && \
	rm -f /var/lib/apt/lists/*_dists_*
