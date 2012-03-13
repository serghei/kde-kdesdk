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

add_subdirectory( backend )
add_subdirectory( gui )
add_subdirectory( pics )
kde_conditional_add_subdirectory( WITH_KCAL kresources )

include_directories(
  ${CMAKE_CURRENT_BINARY_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}/backend
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)

link_directories(
  ${QT_LIBRARY_DIRS}
)


##### other data ################################

kde_install_icons( kbugbuster )
install( FILES kbugbuster.desktop DESTINATION ${XDG_APPS_INSTALL_DIR} )


##### kbugbuster (executable) ###################

kde_add_executable( kbugbuster
  SOURCES main.cpp
  LINK
    kbbmainwindow-static kbbbackend_nopic-static
    kutils-shared kio-shared khtml-shared
  DESTINATION ${BIN_INSTALL_DIR}
)
