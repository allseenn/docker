FROM ubuntu:22.10
RUN apk update && apk add cowsay -y && apt-get install cowsay && rm -rf /var/lib/apt/lists/* && ln -s /usr/games/cowsay /usr/bin/cowsay
CMD ["cowsay"]

