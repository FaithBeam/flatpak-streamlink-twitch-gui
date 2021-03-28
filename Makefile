all:
	true
pre-build:
	flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
	flatpak install flathub org.freedesktop.Platform//20.08 org.freedesktop.Sdk//20.08
	flatpak install flathub io.atom.electron.BaseApp/x86_64/stable
build:
	flatpak-builder --repo=repo streamlink-twitch-gui streamlink-twitch-gui.yaml
	flatpak build-bundle repo streamlink-twitch-gui.flatpak io.github.streamlink-twitch-gui stable
install:
	flatpak install --user --bundle streamlink-twitch-gui.flatpak
uninstall:
	flatpak uninstall --user io.github.streamlink-twitch-gui
clean:
	rm -rf .flatpak-builder/
	rm -rf streamlink-twitch-gui/
	rm -rf repo/
	rm *.flatpak
make:
	true