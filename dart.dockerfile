FROM google/dart-runtime

WORKDIR /app

COPY . .

ENTRYPOINT ["/usr/bin/dart", "main.dart"]
