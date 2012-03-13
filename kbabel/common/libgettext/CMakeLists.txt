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
  ${QT_INCLUDE_DIR}
)


##### pofiles.cc (source) #######################

add_custom_command( OUTPUT pofiles.cpp
  COMMAND ${LEX_EXECUTABLE} -+ -opofiles.cpp ${CMAKE_CURRENT_SOURCE_DIR}/pofiles.ll
)


##### gettext (static) ##########################

kde_add_library( gettext STATIC_PIC
  SOURCES pofiles.cpp
)
