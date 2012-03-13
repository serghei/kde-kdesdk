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

include_directories(
  ${CMAKE_CURRENT_BINARY_DIR}
  ${CMAKE_CURRENT_BINARY_DIR}/../../../common
  ${CMAKE_CURRENT_SOURCE_DIR}/../..
  ${CMAKE_CURRENT_SOURCE_DIR}/../../../common
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)

link_directories(
  ${QT_LIBRARY_DIRS}
)


##### other data ################################

install( FILES tmxcompendium.desktop DESTINATION ${SERVICES_INSTALL_DIR} )


##### kbabeldict_tmxcompendium (module) #########

kde_add_kpart( kbabeldict_tmxcompendium AUTOMOC
  SOURCES
    tmxcompendium.cpp preferenceswidget.cpp pc_factory.cpp pwidget.ui
    tmxcompendiumdata.cpp
  LINK kbabelcommon-shared kbabeldictplugin-shared
  DESTINATION ${PLUGIN_INSTALL_DIR}
)
