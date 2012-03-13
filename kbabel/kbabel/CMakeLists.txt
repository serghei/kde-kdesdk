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

add_subdirectory( pics )
add_subdirectory( icons )

include_directories(
  ${CMAKE_CURRENT_BINARY_DIR}
  ${CMAKE_CURRENT_BINARY_DIR}/../common
  ${CMAKE_CURRENT_SOURCE_DIR}/../common
  ${CMAKE_CURRENT_SOURCE_DIR}/../commonui
  ${CMAKE_CURRENT_SOURCE_DIR}/../kbabeldict
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)


##### other data ################################

kde_install_icons( kbabel )
install( FILES kbabel.desktop DESTINATION ${XDG_APPS_INSTALL_DIR} )
install( FILES kbabel.kcfg DESTINATION ${KCFG_INSTALL_DIR} )
install( FILES kbabelui.rc DESTINATION ${DATA_INSTALL_DIR}/kbabel )
install( FILES kbabel-project.upd kbabel-difftoproject.upd DESTINATION ${KCONF_UPDATE_INSTALL_DIR} )


##### kbabel (executable) #######################

kde_add_executable( kbabel
  SOURCES
    main.cpp
  LINK
    kbabel-static kbabelcommonui-static kbabeldict-static
    kbabelcommon-shared kbabeldictplugin-shared ktexteditor-shared
  DESTINATION ${BIN_INSTALL_DIR}
)


##### kbabel (static) ###########################

kde_add_library( kbabel STATIC AUTOMOC
  SOURCES
    kbbookmarkhandler.cpp kbcatalog.cpp headerwidget.ui headereditor.cpp
    spelldlgwidget.ui spelldlg.cpp gotodialog.cpp kbhighlighting.cpp
    mymultilineedit.cpp hidingmsgedit.cpp kbabelpref.cpp
    kbcatalogview.cpp commentview.cpp contextview.cpp charselectview.cpp
    taglistview.cpp sourceview.cpp kbabelview.cpp kbabelview2.cpp
    kbabel.cpp kbabeliface.skel kbabelsplash.cpp kbabelsettings.kcfgc
    fontpreferences.ui editordiffpreferences.ui editorpreferences.ui
    searchpreferences.ui colorpreferences.ui kbcataloglistview.cpp
    kbcataloglistviewitem.cpp errorlistview.cpp
  DEPENDENCIES kbabelcommon-shared
)
