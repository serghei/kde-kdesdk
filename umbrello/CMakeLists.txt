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

# generate version.h
file( READ VERSION text )
string( REGEX REPLACE "\n" "" text "${text}" )
file( WRITE ${CMAKE_CURRENT_BINARY_DIR}/version.h "#define UMBRELLO_VERSION \"${text}\"\n" )

add_subdirectory( umbrello )
