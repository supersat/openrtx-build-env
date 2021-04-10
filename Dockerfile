FROM debian:bullseye-slim
RUN dpkg --add-architecture i386 && \
	apt-get update && \
	apt-get install -y wget xz-utils sudo libstdc++6:i386
RUN wget https://miosix.org/toolchain/MiosixToolchainInstaller.run && \
	chmod +x MiosixToolchainInstaller.run && \
	./MiosixToolchainInstaller.run --nox11 --accept && \
	rm ./MiosixToolchainInstaller.run
RUN apt-get install -y python3 python3-pip
RUN pip3 install meson
RUN apt-get install -y ninja-build
COPY build.sh /
WORKDIR /openrtx
VOLUME /openrtx
ENTRYPOINT ["/build.sh"]
CMD ["openrtx_md3x0", "openrtx_mduv3x0"]