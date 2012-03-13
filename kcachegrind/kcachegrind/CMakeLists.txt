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
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)

link_directories(
  ${QT_LIBRARY_DIRS}
)


##### other data ################################

kde_install_icons( )
install( FILES kcachegrind.desktop DESTINATION ${XDG_APPS_INSTALL_DIR} )
install( FILES kcachegrindui.rc tips DESTINATION ${DATA_INSTALL_DIR}/kcachegrind )
install( FILES x-kcachegrind.desktop DESTINATION ${MIME_INSTALL_DIR}/application )


##### kcachegrind (executable) ##################

kde_add_executable( kcachegrind AUTOMOC
  SOURCES
    functionselectionbase.ui stackselectionbase.ui partselectionbase.ui
    configdlgbase.ui loader.cpp cachegrindloader.cpp treemap.cpp pool.cpp
    main.cpp configuration.cpp functionselection.cpp coverage.cpp
    partgraph.cpp toplevel.cpp stackselection.cpp stackbrowser.cpp
    subcost.cpp tracedata.cpp partselection.cpp configdlg.cpp
    utils.cpp fixcost.cpp traceitemview.cpp instrview.cpp tabview.cpp
    sourceview.cpp callmapview.cpp callview.cpp coverageview.cpp
    costtypeview.cpp partview.cpp listutils.cpp costtypeitem.cpp
    multiview.cpp callitem.cpp coverageitem.cpp sourceitem.cpp
    costlistitem.cpp partlistitem.cpp functionitem.cpp instritem.cpp
    stackitem.cpp callgraphview.cpp
  LINK kio-shared
  DESTINATION ${BIN_INSTALL_DIR}
)
