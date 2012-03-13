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
  ${CMAKE_CURRENT_BINARY_DIR}/../common
  ${CMAKE_CURRENT_SOURCE_DIR}/../common
  ${CMAKE_CURRENT_SOURCE_DIR}/../kbabeldict
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)


##### other data ################################

install( FILES
    kbabel_validator.desktop kbabel_tool.desktop
  DESTINATION ${SERVICETYPES_INSTALL_DIR} )



##### kbabelcommonui (static) ###################

kde_add_library( kbabelcommonui STATIC_PIC AUTOMOC
  SOURCES
    klisteditor.ui context.cpp kactionselector.cpp
    toolselectionwidget.cpp toolaction.cpp finddialog.cpp
    roughtransdlg.cpp projectprefwidgets.cpp projectpref.cpp
    projectwizard.cpp projectwizardwidget.ui projectwizardwidget2.ui
    cmdedit.cpp diffpreferences.ui
  DEPENDENCIES kbabelcommon-shared
)
