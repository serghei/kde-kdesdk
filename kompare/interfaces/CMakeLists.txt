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
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)

link_directories(
  ${QT_LIBRARY_DIRS}
)


##### kompareinterface (shared) #################

kde_add_library( kompareinterface SHARED
  SOURCES kompareinterface.cpp
  LINK ${QT_LIBRARY}
  DESTINATION ${LIB_INSTALL_DIR}
)
