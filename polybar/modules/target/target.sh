#!/bin/bash

target=$(cat ~/.config/polybar/modules/target/target)

if [ $target ]; then

	echo "%{F#ffff8c00} %{F#ffffff}$target%{u-}"

else

	echo "%{F#ffff8c00}%{u-}"

fi
