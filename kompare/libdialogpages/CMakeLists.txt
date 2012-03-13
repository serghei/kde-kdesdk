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
  ${CMAKE_CURRENT_SOURCE_DIR}/../libdiff2
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)


##### dialogpages (static) ######################

kde_add_library( dialogpages STATIC_PIC AUTOMOC
  SOURCES
    settingsbase.cpp diffsettings.cpp filessettings.cpp viewsettings.cpp
    pagebase.cpp diffpage.cpp filespage.cpp viewpage.cpp
)
