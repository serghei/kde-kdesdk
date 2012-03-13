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


##### kdevcppparser (static) ####################

kde_add_library( kdevcppparser STATIC
  SOURCES
    ast.cpp driver.cpp errors.cpp lexer.cpp lookup.cpp parser.cpp
    tree_parser.cpp urlutil.cpp ast_utils.cpp cpptree2uml.cpp
)
