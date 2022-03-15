#! bash
comm -13 <(pacman -Qqt | sort) <(pacman -Qqtt | sort)
