default:
	just --list

install-deps-arch:
	pacman -Sy --noconfirm --needed \
		scons \
		pkgconf \
		gcc \
		libxcursor \
		libxinerama \
		libxi \
		libxrandr \
		wayland-utils \
		mesa \
		glu \
		libglvnd \
		alsa-lib

build-linux:
	scons platform=linuxbsd dev_build=yes use_llvm=yes linker=lld

run:
	./bin/godot.linuxbsd.editor.dev.x86_64.llvm
