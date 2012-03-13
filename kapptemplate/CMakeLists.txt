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

add_subdirectory( admin )
add_subdirectory( appframework )
add_subdirectory( existing )
add_subdirectory( kapp )
add_subdirectory( kpartapp )
add_subdirectory( kpartplugin )


file( READ VERSION VERSION LIMIT_COUNT 1 )
configure_file( kapptemplate.cmake kapptemplate @ONLY )


install( PROGRAMS
    ${CMAKE_CURRENT_BINARY_DIR}/kapptemplate
  DESTINATION ${DATA_INSTALL_DIR}/kapptemplate/bin )

install( FILES
    kapptemplate.common kapptemplate.module
    kpartplugin.module kpartapp.module existing.module
  DESTINATION ${DATA_INSTALL_DIR}/kapptemplate/include )
