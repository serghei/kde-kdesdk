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


set( LD_FLAGS "-Wl,-Bstatic -liberty -Wl,-Bdynamic" )


##### other data ################################

configure_file( kminspector.cmake kminspector @ONLY )

install( FILES kde.excludes
  DESTINATION ${DATA_INSTALL_DIR}/kmtrace )

install( PROGRAMS ${CMAKE_CURRENT_BINARY_DIR}/kminspector
  DESTINATION ${BIN_INSTALL_DIR} )


##### ktrace_s (static) #########################

kde_add_library( ktrace_s STATIC
  SOURCES ktrace.c
  DESTINATION ${LIB_INSTALL_DIR}
)


##### ktrace (shared) ###########################

kde_add_library( ktrace SHARED
  SOURCES ksotrace.cpp ktrace.c
  LINK dl
  DESTINATION ${LIB_INSTALL_DIR}/kmtrace
)


##### kmtrace (executable) ######################

kde_add_executable( kmtrace
  SOURCES kmtrace.cpp
  LINK ${LD_FLAGS} kdecore-shared
  DESTINATION ${BIN_INSTALL_DIR}
)


##### demangle (executable) #####################

kde_add_executable( demangle
  SOURCES demangle.cpp
  LINK ${LD_FLAGS} ${QT_LIBRARY}
  DESTINATION ${BIN_INSTALL_DIR}
)


##### kmmatch (executable) ######################

kde_add_executable( kmmatch
  SOURCES match.cpp
  LINK ${QT_LIBRARY}
  DESTINATION ${BIN_INSTALL_DIR}
)
