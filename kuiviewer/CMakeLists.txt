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

kde_install_icons( kuiviewer )

install( FILES
    kuiviewerui.rc
  DESTINATION ${DATA_INSTALL_DIR}/kuiviewer )

install( FILES
    kuiviewer.desktop
  DESTINATION ${XDG_APPS_INSTALL_DIR} )

install( FILES
    kuiviewer_part.desktop designerthumbnail.desktop
  DESTINATION ${SERVICES_INSTALL_DIR} )

install( FILES
    kuiviewer_part.rc
  DESTINATION ${DATA_INSTALL_DIR}/kuiviewerpart )


##### libkuiviewerpart (module) #################

kde_add_kpart( libkuiviewerpart AUTOMOC
  SOURCES kuiviewer_part.cpp
  LINK ktexteditor-shared ${QUI_LIBRARY}
  DESTINATION ${PLUGIN_INSTALL_DIR}
)


##### quithumbnail (module) #####################

kde_add_kpart( quithumbnail
  SOURCES quicreator.cpp
  LINK ${QT_LIBRARY} ${QUI_LIBRARY}
  DESTINATION ${PLUGIN_INSTALL_DIR}
)


##### kuiviewer (executable) ####################

kde_add_executable( kuiviewer AUTOMOC
  SOURCES main.cpp kuiviewer.cpp
  LINK ktexteditor-shared
  DESTINATION ${BIN_INSTALL_DIR}
)
