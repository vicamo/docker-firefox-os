FROM ubuntu:trusty

MAINTAINER vicamo@gmail.com

RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" > /etc/apt/sources.list.d/webupd8team-ubuntu-java.list && \
	dpkg --add-architecture i386 && \
	apt-get update && \
	(yes | apt-get install --no-install-recommends -y --force-yes \
		oracle-java6-installer) && \
	apt-get install --no-install-recommends -y --force-yes \
		bison \
		build-essential \
		ccache \
		default-jdk \
		file \
		flex \
		g++-4.4-multilib \
		g++-4.6-multilib \
		g++-4.8-multilib \
		g++-multilib \
		git \
		gnupg \
		gperf \
		libgl1-mesa-dev \
		libgl1-mesa-glx:i386 \
		libncurses5-dev:i386 \
		libswitch-perl \
		libx11-dev \
		libx11-dev:i386 \
		libxml2-utils \
		less \
		python-chardet \
		unzip \
		wget \
		zip \
		zlib1g-dev \
		zlib1g-dev:i386 \
		&& \
	apt-get clean && \
	rm -rf /var/cache/oracle-jdk6-installer && \
	ln -s mesa/libGL.so /usr/lib/i386-linux-gnu/libGL.so && \
	ln -s libGL.so.1.2.0 /usr/lib/i386-linux-gnu/mesa/libGL.so && \
	rm -f /var/lib/apt/lists/*_dists_*

RUN wget -O /usr/bin/repo https://storage.googleapis.com/git-repo-downloads/repo && \
	chmod a+x /usr/bin/repo

ENV USE_CCACHE 1
