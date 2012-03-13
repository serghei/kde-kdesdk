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

add_subdirectory( libcvs )
add_subdirectory( libsvn )
add_subdirectory( icons )

include_directories(
  ${CMAKE_CURRENT_BINARY_DIR}
  ${CMAKE_CURRENT_BINARY_DIR}/../common
  ${CMAKE_CURRENT_SOURCE_DIR}/libcvs
  ${CMAKE_CURRENT_SOURCE_DIR}/libsvn
  ${CMAKE_CURRENT_SOURCE_DIR}/../common
  ${CMAKE_CURRENT_SOURCE_DIR}/../kbabeldict
  ${CMAKE_CURRENT_SOURCE_DIR}/../commonui
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)

link_directories(
  ${QT_LIBRARY_DIRS}
)


##### other data ################################

kde_install_icons( )
install( FILES catalogmanager.desktop DESTINATION ${XDG_APPS_INSTALL_DIR} )
install( FILES catalogmanagerui.rc DESTINATION ${DATA_INSTALL_DIR}/catalogmanager )


##### catalogmanager (executable) ###############

kde_add_executable( catalogmanager
  SOURCES
    main.cpp
  LINK
    catalogmanager-static catalogmanagercvs-static catalogmanagersvn-static
    kbabelcommonui-static kbabeldict-static
    kbabelcommon-shared kbabeldictplugin-shared kio-shared
  DESTINATION ${BIN_INSTALL_DIR}
)


##### catalogmanager (static) ###################

kde_add_library( catalogmanager STATIC AUTOMOC
  SOURCES
    catalogmanageriface.skel validationoptions.ui catalogmanagerview.cpp
    catalogmanager.cpp findinfilesdialog.cpp catmanlistitem.cpp
    multiroughtransdlg.cpp validateprogresswidget.ui validateprogress.cpp
    markpatternwidget.ui markpatterndialog.cpp
  DEPENDENCIES kbabelcommon-shared
)
