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


##### kstartperf (shared) #######################

kde_add_library( kstartperf SHARED AUTOMOC
  SOURCES libkstartperf.c
  VERSION 1.0.0
  LINK ltdl
  DESTINATION ${LIB_INSTALL_DIR}
)


##### kstartperf (executable) ###################

kde_add_executable( kstartperf
  SOURCES kstartperf.cpp
  LINK kdecore-shared
  DESTINATION ${BIN_INSTALL_DIR}
)
