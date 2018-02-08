# This file is part of MXE. See LICENSE.md for licensing information.

PKG             := sdl2_image
$(PKG)_DEPS     := cc jpeg libpng sdl2

define $(PKG)_BUILD
    $(SED) -i 's,^\(Requires:.*\),\1\nRequires.private: jpeg libpng,' '$(1)/SDL2_image.pc.in'
    cd '$(1)' && ./configure \
        $(MXE_CONFIGURE_OPTS) \
        --with-sdl-prefix='$(PREFIX)/$(TARGET)' \
        --disable-bmp \
        --disable-gif \
        --disable-lbm \
        --enable-pcx \
        --enable-png \
        --disable-png-shared \
        --disable-pnm \
        --disable-svg \
        --disable-tga \
        --disable-tif \
        --disable-tif-shared \
        --disable-xcf \
        --disable-xpm \
        --disable-xv \
        --disable-webp \
        --disable-webp-shared \
        --enable-jpg \
        --disable-jpg-shared
    $(MAKE) -C '$(1)' -j '$(JOBS)' install bin_PROGRAMS= sbin_PROGRAMS= noinst_PROGRAMS=
endef
