# flatpak-streamlink-twitch-gui

Streamlink Twitch Gui, Streamlink, and Mpv in a flatpak.

## Requirements

* flatpak

## Install

1. Download the latest flatpak from the [releases](https://github.com/FaithBeam/flatpak-streamlink-twitch-gui/releases) page
2. ```flatpak install --user flathub org.freedesktop.Platform//21.08```
3. ```flatpak install --user --bundle streamlink-twitch-gui.flatpak```

You can then either run it from the cli:

```flatpak run io.github.streamlink-twitch-gui```

or 

run Streamlink Twitch Gui from your app menu

## Required Configuration

**Set Mpv as the video player**

Settings > Player > Player Preset > MPV

![](https://i.imgur.com/ahihCfx.png)

## Uninstall

```flatpak uninstall --user io.github.streamlink-twitch-gui```

## Build the flatpak yourself

### Requirements

* flatpak
* flatpak-builder
* git
* make

```
git clone https://github.com/FaithBeam/flatpak-streamlink-twitch-gui
cd flatpak-streamlink-twitch-gui
make pre-build
make build
make install
```
