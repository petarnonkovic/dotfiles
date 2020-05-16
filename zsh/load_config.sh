#!/usr/bin/env bash


### Config files from lib/


# load utilities

__UTILITIES_DIR=$ZSH/lib/utilities

for util_file ($__UTILITIES_DIR/*.zsh); do
  [ -f "${util_file}" ] && source $util_file
done

unset __UTILITIES_DIR


# load customization

__CUSTOMIZATION_DIR=$ZSH/lib/customization

for config_file ($__CUSTOMIZATION_DIR/*.zsh); do
  [ -f "${config_file}" ] && source $config_file
done

unset __CUSTOMIZATION_DIR


### Wigets files in lib/widgets

__WIDGETS_DIR=$ZSH/lib/widgets

[ -f "$__WIDGETS_DIR/fancy_ctrl_z.zsh" ] && source $__WIDGETS_DIR/fancy_ctrl_z.zsh

unset __WIDGETS_DIR
#for widget_file ($ZSH/widgets/*.zsh); do
#  [ -f "${widget_file}" ] && source $widget_file
#done

