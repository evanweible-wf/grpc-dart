FROM google/dart:2.7
WORKDIR /build/
RUN pub global activate webdev
COPY . .
WORKDIR /build/example/route_guide
RUN pub get
EXPOSE 9000
CMD pub global run webdev serve web:9000
