FROM base/archlinux
MAINTAINER ycjung <ycjung@postech.ac.kr>

RUN pacman -Syy
RUN pacman -S --noconfirm gcc6 make cmake
RUN export CC=/usr/bin/gcc-6
RUN export CXX=/usr/bin/g++-6
RUN pacman -S --noconfirm boost
RUN pacman -S --noconfirm qt4 mesa freeglut glew eigen doxygen
RUN mkdir /src
COPY ./resources/build.sh /bin/build-openflipper
RUN chmod +x /bin/build-openflipper

WORKDIR /src

CMD ["build-openflipper"]

