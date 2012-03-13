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


##### other data ################################

install( FILES
    subversion.desktop subversion_toplevel.desktop
  DESTINATION ${DATA_INSTALL_DIR}/konqueror/servicemenus )


##### kio_svn_helper (executable) ###############

kde_add_executable( kio_svn_helper AUTOMOC
  SOURCES
    kio_svn_helper.cpp subversioncheckout.ui subversionswitch.ui
    subversionlog.ui subversiondiff.ui
  LINK kio-shared
  DESTINATION ${BIN_INSTALL_DIR}
)
