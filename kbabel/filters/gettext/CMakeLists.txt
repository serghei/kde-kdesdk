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
  ${CMAKE_CURRENT_BINARY_DIR}/../../common
  ${CMAKE_CURRENT_SOURCE_DIR}/../../common
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)

link_directories(
  ${QT_LIBRARY_DIRS}
)


##### other data ################################

install( FILES
    kbabel_gettext_import.desktop kbabel_gettext_export.desktop
  DESTINATION ${SERVICES_INSTALL_DIR} )


##### kbabel_gettextimport (module) #############

kde_add_kpart( kbabel_gettextimport
  SOURCES gettextimport.cpp
  LINK kbabelcommon-shared
  DESTINATION ${PLUGIN_INSTALL_DIR}
)


##### kbabel_gettextexport (module) #############

kde_add_kpart( kbabel_gettextexport
  SOURCES gettextexport.cpp
  LINK kbabelcommon-shared
  DESTINATION ${PLUGIN_INSTALL_DIR}
)
