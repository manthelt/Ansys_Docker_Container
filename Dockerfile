# # Use Ubuntu 22.04 as the base image
# FROM ubuntu:22.04

# # Set non-interactive mode for apt
# ENV DEBIAN_FRONTEND=noninteractive

# # Install required dependencies including software-properties-common and X11 tools
# RUN apt update && apt install -y \
#     sudo \
#     software-properties-common \
#     libgtk2.0-0 \
#     libx11-6 \
#     libxtst6 \
#     libxext6 \
#     lsb-release \
#     libxft2 \
#     libjpeg-turbo8 \
#     libpng16-16 \
#     libglu1-mesa \
#     wget \
#     bash \
#     x11-apps \
#     && apt clean

# # Add the PPA for libpng12 and install it
# RUN add-apt-repository ppa:linuxuprising/libpng12 && \
#     apt update && \
#     apt install -y libpng12-0 && \
#     apt clean

# # Set ANS_IGNOREOS to bypass OS checks
# ENV ANS_IGNOREOS=1

# # Configure X11 forwarding environment variables
# ENV DISPLAY=:0
# ENV QT_X11_NO_MITSHM=1

# # Create a directory for the installer
# RUN mkdir -p /installer

# # Set the working directory
# WORKDIR /installer

# # Default command to open a bash shell
# CMD ["bash"]


# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Set non-interactive mode for apt
ENV DEBIAN_FRONTEND=noninteractive

# Install required dependencies including software-properties-common and X11 tools
RUN apt update && apt install -y \
    sudo \
    software-properties-common \
    libgtk2.0-0 \
    libx11-6 \
    libxtst6 \
    libxext6 \
    lsb-release \
    libxft2 \
    libjpeg-turbo8 \
    libpng16-16 \
    libglu1-mesa \
    wget \
    bash \
    x11-apps \
    debianutils \
    gzip \
    libapparmor1 \
    libasound2 \
    libasyncns0 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libatomic1 \
    libatspi2.0-0 \
    libavahi-client3 \
    libavahi-common3 \
    libblkid1 \
    libbrotli1 \
    libbsd0 \
    libbz2-1.0 \
    libc6 \
    libc6-i386 \
    libc6:i386 \
    libcairo2 \
    libcairo-gobject2 \
    libcap2 \
    libcom-err2 \
    libcrypt1 \
    libcups2 \
    libcurl4 \
    libcurl4-gnutls-dev \
    libdatrie1 \
    libdbus-1-3 \
    libdeflate0 \
    libdrm2 \
    libdrm-amdgpu1 \
    libdw1 \
    libegl1 \
    libelf1 \
    libenchant-2-2 \
    libepoxy0 \
    libevdev2 \
    libexpat1 \
    libffi8 \
    libflac8 \
    libfontconfig1 \
    libfontenc1 \
    libfreetype6 \
    libfribidi0 \
    libgbm1 \
    libgcc-s1 \
    libgcc-s1:i386 \
    libgcrypt20 \
    libgdk-pixbuf-2.0-0 \
    libgfortran5 \
    libgl1 \
    libgl1:i386 \
    libglib2.0-0 \
    libglu1-mesa \
    libglvnd0 \
    libglx0 \
    libgmp10 \
    libgnutls30 \
    libgomp1 \
    libgpg-error0 \
    libgraphite2-3 \
    libgssapi-krb5-2 \
    libgstreamer1.0-0 \
    libgstreamer-gl1.0-0 \
    libgstreamer-plugins-base1.0-0 \
    libgtk2.0-0 \
    libgtk-3-0 \
    libgudev-1.0-0 \
    libharfbuzz0b \
    libharfbuzz-icu0 \
    libhogweed6 \
    libhyphen0 \
    libibverbs1 \
    libice6 \
    libicu70 \
    libidn2-0 \
    libjavascriptcoregtk-4.0-18 \
    libjbig0 \
    libjpeg62 \
    libjpeg-turbo8 \
    libk5crypto3 \
    libkeyutils1 \
    libkrb5-3 \
    libkrb5support0 \
    libldap-2.5-0 \
    liblz4-1 \
    liblzma5 \
    libmanette-0.2-0 \
    libmd0 \
    libmount1 \
    libnettle8 \
    libnghttp2-14 \
    libnotify4 \
    libnspr4 \
    libnss3 \
    libnuma1 \
    libnvidia-compute-390 \
    libogg0 \
    libopengl0 \
    libopenjp2-7 \
    libopus0 \
    liborc-0.4-0 \
    libp11-kit0 \
    libpam0g \
    libpango-1.0-0 \
    libpangocairo-1.0-0 \
    libpangoft2-1.0-0 \
    libpciaccess0 \
    libpcre2-8-0 \
    libpcre3 \
    libperl-dev \
    libpixman-1-0 \
    libpng16-16 \
    libpsl5 \
    libpulse0 \
    libpulse-mainloop-glib0 \
    libquadmath0 \
    librdmacm1 \
    libre2-9 \
    librtmp1 \
    libsasl2-2 \
    libseccomp2 \
    libsecret-1-0 \
    libselinux1 \
    libsm6 \
    libsndfile1 \
    libsoup2.4-1 \
    libssh-4 \
    libssl3 \
    libstdc++6 \
    libstdc++6:i386 \
    libsystemd0 \
    libtasn1-6 \
    libtbb12 \
    libthai0 \
    libtheora0 \
    libtiff5 \
    libtinfo6 \
    libucx0 \
    libudev1 \
    libunistring2 \
    libunwind8 \
    libuuid1 \
    libvorbis0a \
    libvorbisenc2 \
    libwayland-client0 \
    libwayland-cursor0 \
    libwayland-egl1 \
    libwayland-server0 \
    libwebkit2gtk-4.0-37 \
    libwebp7 \
    libwebpdemux2 \
    libwoff1 \
    libwpe-1.0-1 \
    libwpebackend-fdo-1.0-1 \
    libx11-6 \
    libx11-6:i386 \
    libx11-xcb1 \
    libxau6 \
    libxcb1 \
    libxcb-icccm4 \
    libxcb-image0 \
    libxcb-keysyms1 \
    libxcb-randr0 \
    libxcb-render0 \
    libxcb-render-util0 \
    libxcb-shape0 \
    libxcb-shm0 \
    libxcb-sync1 \
    libxcb-util1 \
    libxcb-xfixes0 \
    libxcb-xinerama0 \
    libxcb-xkb1 \
    libxcomposite1 \
    libxcursor1 \
    libxdamage1 \
    libxdmcp6 \
    libxext6 \
    libxext6:i386 \
    libxfixes3 \
    libxft2 \
    libxi6 \
    libxinerama1 \
    libxkbcommon0 \
    libxkbcommon-x11-0 \
    libxm4 \
    libxml2 \
    libxmu6 \
    libxrandr2 \
    libxrender1 \
    libxshmfence1 \
    libxslt1.1 \
    libxt6 \
    libxt6:i386 \
    libxtst6 \
    libxxf86vm1 \
    libzstd1 \
    libatomic1 \
    lsb \
    lsb-core \
    ocl-icd-libopencl1 \
    tar \
    uuid-dev \
    xfonts-100dpi \
    xfonts-75dpi \
    xterm \
    zlib1g \
    && apt clean


RUN apt update && apt install -y \
    libgif7 \
    libdrm2 \
    libx11-xcb1 \
    libxm4 \
    libxxf86vm1 \
    libgl1-mesa-dri \
    libglx-mesa0 \
    lsb \
    xsltproc \
    && apt clean


# Add the PPA for libpng12 and install it
RUN add-apt-repository ppa:linuxuprising/libpng12 && \
    apt update && \
    apt install -y libpng12-0 && \
    apt clean

# Set ANS_IGNOREOS to bypass OS checks
ENV ANS_IGNOREOS=1

# Configure X11 forwarding environment variables
ENV DISPLAY=:0
ENV QT_X11_NO_MITSHM=1

# Create a directory for the installer
RUN mkdir -p /installer

# Set the working directory
WORKDIR /installer

# Default command to open a bash shell
CMD ["bash"]
