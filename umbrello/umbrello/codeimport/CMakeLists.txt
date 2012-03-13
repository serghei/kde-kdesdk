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

add_subdirectory( kdevcppparser )


include_directories(
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)


##### codeimport (static) ########################

kde_add_library( codeimport STATIC
  SOURCES
    adaimport.cpp classimport.cpp cppimport.cpp idlimport.cpp
    import_utils.cpp javaimport.cpp nativeimportbase.cpp pascalimport.cpp
    pythonimport.cpp
)
