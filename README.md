# Vanilla OS Desktop Image with Gnome and Sway-WM

Containerfile for building a Vanilla OS Desktop image with Gnome and Sway-WM. 

This image is based on top of vanillaos/desktop and extends the default Vanilla OS Gnome Desktop experience with Sway.

## Sway

[Sway](https://swaywm.org/) is a tiling Wayland compositor and a drop-in replacement for the i3 window manager for X11.

Sway allows you to arrange your application windows *logically*, rather than *spatially*.
Windows are arranged into a grid by default which maximizes the efficiency of your screen and can be quickly manipulated using only the keyboard. 

## Project Goals

We want to provide a similar experiance as the [Manjaro Sway Edition](https://github.com/manjaro-sway/manjaro-sway) does for Manjaro Linux.

## Features

 * Vanilla OS background image
 * screen locking: [swaylock](https://github.com/swaywm/swaylock), triggered by [swayidle](https://github.com/swaywm/swayidle)
 * app launcher: [Fuzzel](https://codeberg.org/dnkl/fuzzel)
 * bar: [Waybar](https://github.com/Alexays/Waybar)
 * logout menu: [wlogout](https://github.com/ArtsyMacaw/wlogout)
 * brightness control with XF86MonBrightnessUp/Down keys: [blight](https://github.com/voltaireNoir/blight) 0.7.1
 * based on Vanilla OS Desktop image (Gnome3 desktop)

## Managing user applications with systemd

 * sway's output handled by journald: `journalctl --user --identifier sway`
 * `sway-session.target`
 * `waybar.service`
 * `swayidle.service`
 * `swaylock.service`

Guide used: [systemd integration - Managing user applications with systemd](https://github.com/swaywm/sway/wiki/Systemd-integration#managing-user-applications-with-systemd)

## Build

> [!NOTE]
> The fsguard compiled plugin `.so` file should be downloaded from the [latest release](https://github.com/Vanilla-OS/vib-fsguard/releases/latest) and be placed under a `plugins` directory beside the `recipe.yml` file.

```bash
vib build recipe.yml
podman image build -t vanillaos/desktop-sway .
```
