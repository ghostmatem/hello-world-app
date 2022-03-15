FROM openjdk:8

ARG FLUTTER_VERSION=2.10.3

RUN curl https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_${FLUTTER_VERSION}-stable.tar.xz --output /flutter.tar.xz && \
	tar xf flutter.tar.xz && \
	rm flutter.tar.xz

WORKDIR /app

COPY . .

RUN flutter doctor

CMD [ "flutter", "test" ]