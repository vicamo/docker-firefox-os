FROM vicamo/ubuntu-phone:phablet

MAINTAINER vicamo@gmail.com

RUN apt-get update && \
	apt-get install --no-install-recommends -y \
		mingw32 \
		tofrodos \
		&& \
	apt-get clean && \
	rm -f /var/lib/apt/lists/*_dists_*
