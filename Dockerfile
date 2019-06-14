FROM fedora

RUN curl -L -O https://github.com/yudai/gotty/releases/download/v1.0.1/gotty_linux_amd64.tar.gz && \
        tar -xvf gotty_linux_amd64.tar.gz && \
        mv ./gotty /usr/sbin/gotty && \
        rm -rf gotty_linux_amd64.tar.gz

ENTRYPOINT [ "/usr/sbin/gotty", "-p 36100", "/bin/bash" ]
