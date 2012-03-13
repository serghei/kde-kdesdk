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
  ${CMAKE_CURRENT_SOURCE_DIR}/../backend
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)


##### other data ################################

install( FILES kbugbusterui.rc DESTINATION ${DATA_INSTALL_DIR}/kbugbuster )


##### kbbmainwindow (static) ####################

kde_add_library( kbbmainwindow STATIC AUTOMOC
  SOURCES
    packagelvi.cpp buglvi.cpp cwloadingwidget.cpp cwsearchwidget_base.ui
    cwsearchwidget.cpp cwbugdetailscontainer_base.ui
    cwbugdetailscontainer.cpp cwbuglistcontainer.cpp cwbugdetails.cpp
    centralwidget_base.ui centralwidget.cpp kbbmainwindow.cpp
    msginputdialog.cpp packageselectdialog.cpp messageeditor.cpp
    severityselectdialog.cpp preferencesdialog.cpp loadallbugsdlg.cpp
    serverconfigdialog.cpp
)
