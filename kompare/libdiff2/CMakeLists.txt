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
  ${CMAKE_CURRENT_SOURCE_DIR}/../libdialogpages
  ${CMAKE_CURRENT_SOURCE_DIR}/../komparepart
  ${CMAKE_CURRENT_SOURCE_DIR}/../interfaces
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)


##### diff2 (static) ############################

kde_add_library( diff2 STATIC_PIC AUTOMOC
  SOURCES
    kompareprocess.cpp komparemodellist.cpp diffmodellist.cpp
    diffmodel.cpp difference.cpp diffhunk.cpp levenshteintable.cpp
    parser.cpp parserbase.cpp cvsdiffparser.cpp diffparser.cpp
    perforceparser.cpp
)
