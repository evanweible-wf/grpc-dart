FROM google/dart:2.7
WORKDIR /build/
COPY . .
WORKDIR /build/example/route_guide
RUN pub get
EXPOSE 8081
CMD dart bin/server.dart