FROM debian:bullseye-slim
RUN dpkg --add-architecture i386 && \
	apt-get update && \
	apt-get install -y wget xz-utils sudo libstdc++6:i386
RUN wget https://miosix.org/toolchain/MiosixToolchainInstaller.run && \
	chmod +x MiosixToolchainInstaller.run && \
	./MiosixToolchainInstaller.run --nox11 --accept && \
	rm ./MiosixToolchainInstaller.run

