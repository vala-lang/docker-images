FROM ubuntu:noble

ENV VALA_VERSION 0.56.18

RUN apt-get update && apt-get install -y curl xz-utils gcc file flex bison libglib2.0-dev libgraphviz-dev \
    gobject-introspection

RUN export VALA_MINOR_VERSION=$(echo $VALA_VERSION | sed -E 's/^([0-9]+)\.([0-9]+)\.([0-9]+)$/\1.\2/') && \
    curl -fsSLO "https://download.gnome.org/sources/vala/$VALA_MINOR_VERSION/vala-$VALA_VERSION.tar.xz"

RUN unxz "vala-$VALA_VERSION.tar.xz" \
    && tar xvf "vala-$VALA_VERSION.tar" \
    && cd "vala-$VALA_VERSION/" \
    && ./configure --prefix=/usr \
    && make -j$(getconf _NPROCESSORS_ONLN) \
    && make install \
    && cd .. \
    && rm -r "vala-$VALA_VERSION" "vala-$VALA_VERSION.tar"
