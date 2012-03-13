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
  ${CMAKE_CURRENT_BINARY_DIR}/../.. # for version.h
  ${CMAKE_CURRENT_SOURCE_DIR}/..
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
  ${XML2_INCLUDE_DIRS}
)

link_directories(
  ${QT_LIBRARY_DIRS}
)


##### other data ################################

install( FILES
    xmi2docbook.xsl docbook2xhtml.xsl xmi.css common.ent
  DESTINATION ${DATA_INSTALL_DIR}/umbrello )


##### umbodoc (executable) ######################

kde_add_executable( umbodoc
  SOURCES main.cpp
  LINK kdecore-shared ${XML2_LIBRARIES} ${XSLT_LIBRARIES}
  DESTINATION ${BIN_INSTALL_DIR}
)


##### docgenerators (static) ####################

kde_add_library( docgenerators STATIC AUTOMOC
  SOURCES
    docbookgenerator.h docbookgenerator.cpp xhtmlgenerator.cpp
)
