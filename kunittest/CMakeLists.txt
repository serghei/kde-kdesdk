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


##### headers ###################################

install( FILES
    runnergui.h
  DESTINATION ${INCLUDE_INSTALL_DIR}/kunittest )

install( PROGRAMS
    kunittest kunittestmod kunittest_debughelper
  DESTINATION ${BIN_INSTALL_DIR} )


##### kunittestgui (shared) #####################

kde_add_library( kunittestgui SHARED AUTOMOC
  SOURCES testerwidget.ui runnergui.cpp dcopinterface.skel
  LINK kunittest-shared
  DESTINATION ${LIB_INSTALL_DIR}
)


##### kunittestguimodrunner (executable) ########

kde_add_executable( kunittestguimodrunner
  SOURCES guimodrunner.cpp
  LINK kunittestgui-shared
  DESTINATION ${BIN_INSTALL_DIR}
)
