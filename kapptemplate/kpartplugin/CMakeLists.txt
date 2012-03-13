#################################################
#
#  (C) 2010-2012 Serghei Amelian
#  serghei (DOT) amelian (AT) gmail.com
#
#  Improvements and feedback are welcome
#
#  This file is released under GPL >= 2
#
#################################################

add_subdirectory( no-exe )

install( FILES
    plugin-Makefile.am plugin_app.cpp plugin_app.h plugin_app.rc
    hi16-action-plugin.png hi22-action-plugin.png
  DESTINATION ${DATA_INSTALL_DIR}/kapptemplate/kpartplugin )
