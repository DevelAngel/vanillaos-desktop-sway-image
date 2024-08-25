# Vanilla OS Desktop Image with Gnome and Sway-WM

Containerfile for building a Vanilla OS Desktop image with Gnome and Sway-WM. 

This image is based on top of vanillaos/desktop and extends the default Vanilla OS Gnome Desktop experience with Sway.

## Sway

[Sway](https://swaywm.org/) is a tiling Wayland compositor and a drop-in replacement for the i3 window manager for X11.

Sway allows you to arrange your application windows *logically*, rather than *spatially*.
Windows are arranged into a grid by default which maximizes the efficiency of your screen and can be quickly manipulated using only the keyboard. 

## Project Goals

We want to provide a similar experiance as the [Manjaro Sway Edition](https://github.com/manjaro-sway/manjaro-sway) does for Manjaro Linux.

## Build

> [!NOTE]
> The fsguard compiled plugin `.so` file should be downloaded from the [latest release](https://github.com/Vanilla-OS/vib-fsguard/releases/latest) and be placed under a `plugins` directory beside the `recipe.yml` file.

```bash
vib build recipe.yml
podman image build -t vanillaos/desktop-sway .
```
