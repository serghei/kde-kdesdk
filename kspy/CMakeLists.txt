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


##### headers ###################################

install( FILES
    kspy.h
  DESTINATION ${INCLUDE_INSTALL_DIR} )


##### kspy (shared) #############################

kde_add_library( kspy SHARED AUTOMOC
  SOURCES
    navviewitem.cpp propsview.cpp navview.cpp spy.cpp sigslotview.cpp
    receiversview.cpp classinfoview.cpp
  VERSION 1.2.0
  LINK kdeui-shared
  DESTINATION ${LIB_INSTALL_DIR}
)
