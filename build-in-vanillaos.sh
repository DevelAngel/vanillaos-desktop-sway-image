#!/bin/sh
set -eux
vib build recipe.yml
host-shell podman image build -t vanillaos/desktop-sway . $* | tee podman.log
