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
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)

link_directories(
  ${QT_LIBRARY_DIRS}
)


##### other data ################################

install( FILES ksvnd.desktop
  DESTINATION ${SERVICES_INSTALL_DIR}/kded )


##### kded_ksvnd (module) #######################

kde_add_kpart( kded_ksvnd AUTOMOC
  SOURCES commitdlg.ui ksvnd.cpp ksvnd.skel
  LINK kio-shared kdeinit_kded-shared
  DESTINATION ${PLUGIN_INSTALL_DIR}
)
