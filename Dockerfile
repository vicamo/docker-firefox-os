FROM vicamo/android-pdk:openjdk-7

RUN apt-get update \
	&& apt-get install --no-install-recommends -y --force-yes \
		autoconf2.13 \
		libdbus-glib-1-2 \
		libxt6 \
	&& apt-get clean \
	&& rm -f /var/lib/apt/lists/*_dists_*
