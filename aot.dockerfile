FROM google/dart-runtime

WORKDIR /app

COPY . .

RUN dart2native -k aot main.dart

ENTRYPOINT ["dartaotruntime", "main.aot"]
