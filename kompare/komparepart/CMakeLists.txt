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
  ${CMAKE_CURRENT_SOURCE_DIR}/../libdialogpages
  #${CMAKE_CURRENT_SOURCE_DIR}/../komparepart
  ${CMAKE_CURRENT_SOURCE_DIR}/../interfaces
  #${CMAKE_BINARY_DIR}
  #${CMAKE_SOURCE_DIR}
  #${CMAKE_SOURCE_DIR}
  #${CMAKE_SOURCE_DIR}
  #${CMAKE_SOURCE_DIR}
  #${CMAKE_SOURCE_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)

link_directories(
  ${QT_LIBRARY_DIRS}
)


##### other data ################################

install( FILES komparepart.desktop
  DESTINATION ${SERVICES_INSTALL_DIR} )

install( FILES komparepartui.rc
  DESTINATION ${DATA_INSTALL_DIR}/kompare )


##### libkomparepart (module) ###################

kde_add_kpart( libkomparepart AUTOMOC
  SOURCES
    kompare_part.cpp kompareconnectwidget.cpp komparesplitter.cpp
    komparelistview.cpp kompareprefdlg.cpp komparesaveoptionsbase.ui
    komparesaveoptionswidget.cpp
  LINK
    dialogpages-static diff2-static kompareinterface-shared
    kparts-shared
  DESTINATION ${PLUGIN_INSTALL_DIR}
)
