FROM vicamo/ubuntu-core:vivid-amd64

MAINTAINER vicamo@gmail.com

RUN locale-gen en_US en_US.UTF-8 en_GB en_GB.UTF-8 && \
	dpkg-reconfigure locales

RUN echo "deb [arch=armhf] http://ports.ubuntu.com/ubuntu-ports vivid main restricted universe multiverse" > /etc/apt/sources.list.d/ubuntu-ports-armhf.list && \
	echo "deb [arch=armhf] http://ports.ubuntu.com/ubuntu-ports vivid-updates main restricted universe multiverse" >> /etc/apt/sources.list.d/ubuntu-ports-armhf.list && \
	echo "deb [arch=armhf] http://ports.ubuntu.com/ubuntu-ports vivid-security main restricted universe multiverse" >> /etc/apt/sources.list.d/ubuntu-ports-armhf.list && \
	echo "deb [arch=amd64] http://archive.ubuntu.com/ubuntu vivid main restricted universe multiverse" > /etc/apt/sources.list.d/ubuntu-amd64.list && \
	echo "deb [arch=amd64] http://archive.ubuntu.com/ubuntu vivid-updates main restricted universe multiverse" >> /etc/apt/sources.list.d/ubuntu-amd64.list && \
	echo "deb [arch=amd64] http://archive.ubuntu.com/ubuntu vivid-security main restricted universe multiverse" >> /etc/apt/sources.list.d/ubuntu-amd64.list && \
	echo "deb-src http://archive.ubuntu.com/ubuntu vivid main restricted universe multiverse" >> /etc/apt/sources.list.d/ubuntu-amd64.list && \
	echo "deb-src http://archive.ubuntu.com/ubuntu vivid-updates main restricted universe multiverse" >> /etc/apt/sources.list.d/ubuntu-amd64.list && \
	echo "deb-src http://archive.ubuntu.com/ubuntu vivid-security main restricted universe multiverse" >> /etc/apt/sources.list.d/ubuntu-amd64.list && \
	cat /dev/null > /etc/apt/sources.list && \
	dpkg --add-architecture armhf && \
	apt-get update && \
	apt-get install --no-install-recommends -y -o Dpkg::Options::="--force-confnew" \
		g++-arm-linux-gnueabihf \
		pkg-config-arm-linux-gnueabihf \
		ubuntu-sdk-libs:armhf \
		ubuntu-sdk-libs-dev:armhf \
		ubuntu-sdk-libs-tools \
		&& \
	apt-get clean && \
	rm -f /var/lib/apt/lists/*_dists_*
