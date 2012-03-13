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
  ${CMAKE_CURRENT_BINARY_DIR}/../../common
  ${CMAKE_CURRENT_SOURCE_DIR}/../../common
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)

link_directories(
  ${QT_LIBRARY_DIRS}
)


##### other data ################################

install( FILES kbabel_equationstool.desktop DESTINATION ${SERVICES_INSTALL_DIR} )


##### kbabel_equationstool (module) #############

kde_add_kpart( kbabel_equationstool AUTOMOC
  SOURCES main.cc
  LINK kbabelcommon-shared
  DESTINATION ${PLUGIN_INSTALL_DIR}
)
