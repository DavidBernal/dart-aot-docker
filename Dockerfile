FROM debian

WORKDIR /app

COPY . .

ENTRYPOINT [ "./main.aot" ]
