
TAISEI_PLUGINS := \
	plugins/freetype-no-harfbuzz \
	plugins/gcc8 \
	plugins/meson-wrapper \

TAISEI_TARGETS := \
	i686-w64-mingw32.static \
	x86_64-w64-mingw32.static \

TAISEI_PACKAGES := \
	freetype \
	libpng \
	libwebp \
	libzip \
	meson-wrapper \
	sdl2 \
	sdl2_mixer \
	shaderc \
	zlib \

override MXE_PLUGIN_DIRS += $(TAISEI_PLUGINS)
MXE_TARGETS := $(TAISEI_TARGETS)
LOCAL_PKG_LIST := $(TAISEI_PACKAGES)
.DEFAULT local-pkg-list:
local-pkg-list: $(LOCAL_PKG_LIST)
