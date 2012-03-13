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
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)

link_directories(
  ${QT_LIBRARY_DIRS}
)


##### other data ################################

install( FILES kfile_ts.desktop
  DESTINATION ${SERVICES_INSTALL_DIR} )


##### kfile_ts (module) #########################

kde_add_kpart( kfile_ts AUTOMOC
  SOURCES kfile_ts.cpp
  LINK kio-shared
  DESTINATION ${PLUGIN_INSTALL_DIR}
)
