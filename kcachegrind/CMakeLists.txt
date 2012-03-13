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

include( ConfigureChecks.cmake )

set( KCACHEGRIND_VERSION "0.4.6kde" )
configure_file( version.h.cmake version.h @ONLY )
configure_file( kcachegrind.spec.cmake kcachegrind.spec @ONLY )
configure_file( kcachegrind.lsm.cmake kcachegrind.lsm @ONLY )

add_subdirectory( kcachegrind )
add_subdirectory( pics )
add_subdirectory( converters )
