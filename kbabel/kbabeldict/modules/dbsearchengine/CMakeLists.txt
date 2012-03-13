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

include( ConfigureChecks.cmake )

include_directories(
  ${CMAKE_CURRENT_BINARY_DIR}
  ${CMAKE_CURRENT_BINARY_DIR}/../../../common
  ${CMAKE_CURRENT_SOURCE_DIR}/../..
  ${CMAKE_CURRENT_SOURCE_DIR}/../../../common
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)

link_directories(
  ${QT_LIBRARY_DIRS}
)


##### other data ################################

install( FILES dbsearchengine.desktop DESTINATION ${SERVICES_INSTALL_DIR} )


##### kbabeldict_dbsearchengine (module) ########

kde_add_kpart( kbabeldict_dbsearchengine AUTOMOC
  SOURCES
    KDBSearchEngine.cpp preferenceswidget.cpp dbse_factory.cpp
    dbseprefwidget.ui database.cpp dbscan.cpp
  LINK kbabelcommon-shared kbabeldictplugin-shared db
  DESTINATION ${PLUGIN_INSTALL_DIR}
)
