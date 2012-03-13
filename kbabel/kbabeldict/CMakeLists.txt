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

add_subdirectory( modules )

include_directories(
  ${CMAKE_CURRENT_BINARY_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${CMAKE_CURRENT_BINARY_DIR}/../common
  ${CMAKE_CURRENT_SOURCE_DIR}/../common
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)

link_directories(
  ${QT_LIBRARY_DIRS}
)


##### headers ###################################

install( FILES
    searchengine.h kbabeldictbox.h kbabeldictiface.h
    dictionarymenu.h dictchooser.h
  DESTINATION ${INCLUDE_INSTALL_DIR}/kbabel )


##### other data ################################

kde_install_icons( kbabeldict )
install( FILES kbabeldict.desktop DESTINATION ${XDG_APPS_INSTALL_DIR} )
install( FILES kbabeldict_module.desktop DESTINATION ${SERVICETYPES_INSTALL_DIR} )


##### kbabeldict (executable) ###################

kde_add_executable( kbabeldict AUTOMOC
  SOURCES
    main.cpp kbabeldictview.cpp kbabeldict.cpp kbabelsplash.cpp
  LINK kbabeldict-static kbabeldictplugin-shared kbabelcommon-shared
  DESTINATION ${BIN_INSTALL_DIR}
)


##### kbabeldict (static) #######################

kde_add_library( kbabeldict STATIC AUTOMOC
  SOURCES
    kbabeldictbox.cpp kbabeldictiface.skel dictionarymenu.cpp
    dictchooser.cpp aboutmoduledlg.cpp
  DEPENDENCIES kbabelcommon-shared
)


##### kbabeldictplugin (shared) #################

kde_add_library( kbabeldictplugin SHARED AUTOMOC
  SOURCES searchengine.cpp
  VERSION 1.2.0
  LINK kdecore-shared
  DESTINATION ${LIB_INSTALL_DIR}
)
