

override MXE_PLUGIN_DIRS += plugins/gcc8 plugins/meson-wrapper plugins/freetype-no-harfbuzz plugins/sdl2_image-lean

MXE_TARGETS := x86_64-w64-mingw32.static i686-w64-mingw32.static
LOCAL_PKG_LIST := sdl2 sdl2_mixer sdl2_image zlib libpng libzip meson-wrapper freetype
.DEFAULT local-pkg-list:
local-pkg-list: $(LOCAL_PKG_LIST)