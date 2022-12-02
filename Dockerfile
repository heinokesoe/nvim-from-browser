FROM ubuntu AS ttyd
RUN apt update && apt install -y autoconf automake build-essential cmake curl file libtool git \
    && git clone https://github.com/tsl0922/ttyd && cd ttyd && ./scripts/cross-build.sh

FROM ubuntu:latest AS trzsz
RUN apt update && apt install -y curl \
    && latest=$(basename $(curl -fs -o/dev/null -w %{redirect_url} https://github.com/trzsz/trzsz-go/releases/latest)) \
    && curl -LO "https://github.com/trzsz/trzsz-go/releases/download/${latest}/trzsz_${latest#v}_linux_x86_64.tar.gz" \
    && tar -xzf trzsz_${latest#v}_linux_x86_64.tar.gz && mv trzsz_${latest#v}_linux_x86_64 trzsz

FROM alpine:latest
RUN apk update \
    && apk add --no-cache openssl git gcc g++ zsh zsh-syntax-highlighting zenity neovim \
    && echo "export SHELL=/bin/zsh" > /root/.profile \
    && openssl req -x509 -newkey rsa:4096 -keyout /etc/key.pem -out /etc/cert.pem -sha256 -days 365 -nodes -subj '/CN=localhost'
COPY --from=ttyd /ttyd/build/ttyd /usr/local/bin/
COPY --from=trzsz /trzsz/* /usr/local/bin/
COPY config /root/.config
COPY zshrc /root/.zshrc
COPY entrypoint.sh /
WORKDIR /root/workspace
EXPOSE 3000
ENTRYPOINT ["/entrypoint.sh"]
