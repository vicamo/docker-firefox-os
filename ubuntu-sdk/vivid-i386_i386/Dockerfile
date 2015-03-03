FROM vicamo/ubuntu-core:vivid-i386

MAINTAINER vicamo@gmail.com

RUN locale-gen en_US en_US.UTF-8 en_GB en_GB.UTF-8 && \
	dpkg-reconfigure locales

RUN apt-get update && \
	apt-get install --no-install-recommends -y -o Dpkg::Options::="--force-confnew" \
		g++ \
		pkg-config \
		ubuntu-sdk-libs \
		ubuntu-sdk-libs-dev \
		ubuntu-sdk-libs-tools \
		&& \
	apt-get clean && \
	rm -f /var/lib/apt/lists/*_dists_*
