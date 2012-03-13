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
  ${CMAKE_CURRENT_SOURCE_DIR}/../libdiff2
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)

link_directories(
  ${QT_LIBRARY_DIRS}
)


##### other data ################################

install( FILES komparenavtreepart.desktop
  DESTINATION ${SERVICES_INSTALL_DIR} )


##### libkomparenavtreepart (module) ############

kde_add_kpart( libkomparenavtreepart AUTOMOC
  SOURCES komparenavtreepart.cpp
  LINK diff2-static kparts-shared
  DESTINATION ${PLUGIN_INSTALL_DIR}
)
