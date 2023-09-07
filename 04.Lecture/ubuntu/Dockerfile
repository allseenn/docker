FROM ubuntu:22.10
RUN apt-get update && apt-get install cowsay -y && apt-get install cowsay && rm -rf /var/lib/apt/lists/* && ln -s /usr/games/cowsay /usr/bin/cowsay
CMD ["cowsay"]

