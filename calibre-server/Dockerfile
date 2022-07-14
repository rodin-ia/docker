  FROM ubuntu:latest

  ENV \
    CALIBRE_VERSION="6.0.0" \
    CALIBRE_ARCH="x86_64" \
    CALIBRE_URL="https://download.calibre-ebook.com/$CALIBRE_VERSION/calibre-$CALIBRE_VERSION-$CALIBRE_ARCH.txz" \
    CALIBRE_PATH="/opt/calibre/"
  RUN \
    apt update && \
    apt dist-upgrade -y && \
    apt install -y libegl1 libfontconfig1 libxkbcommon0 libglx0 libopengl0 wget xz-utils --no-install-recommends && \
    apt autoremove -y && \
    apt autoclean -y && \
    mkdir -p $CALIBRE_PATH

  RUN \
    wget --no-check-certificate $CALIBRE_URL -O - | tar -C $CALIBRE_PATH -xJ && \
    $CALIBRE_PATH/calibre_postinstall

  WORKDIR $CALIBRE_PATH

  EXPOSE 8088
