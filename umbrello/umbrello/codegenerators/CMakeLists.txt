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
  ${CMAKE_CURRENT_BINARY_DIR}/../dialogs
  ${CMAKE_CURRENT_SOURCE_DIR}/../dialogs
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)


##### codegenerator (static) ####################

kde_add_library( codegenerator STATIC AUTOMOC
  SOURCES
    codegenfactory.cpp classifierinfo.cpp javacodegenerator.cpp
    javaantcodedocument.cpp javacodeclassfield.cpp
    javaclassifiercodedocument.cpp javacodecomment.cpp
    javacodedocumentation.cpp javacodeoperation.cpp
    javacodeaccessormethod.cpp javaclassdeclarationblock.cpp
    javacodeclassfielddeclarationblock.cpp javacodegenerationpolicy.cpp
    javacodegenerationpolicypage.cpp javacodegenerationformbase.ui
    cppcodegenerator.cpp cppcodedocumentation.cpp cppcodeclassfield.cpp
    cppcodecomment.cpp cppmakecodedocument.cpp cppsourcecodedocument.cpp
    cppsourcecodeoperation.cpp cppsourcecodeaccessormethod.cpp
    cppsourcecodeclassfielddeclarationblock.cpp
    cppheadercodedocument.cpp cppheaderclassdeclarationblock.cpp
    cppheadercodeoperation.cpp cppheadercodeaccessormethod.cpp
    cppheadercodeclassfielddeclarationblock.cpp
    cppcodegenerationpolicy.cpp cppcodegenerationpolicypage.cpp
    cppcodegenerationformbase.ui cppcodegenerationform.cpp
    rubycodegenerator.cpp rubycodeclassfield.cpp
    rubyclassifiercodedocument.cpp rubycodecomment.cpp
    rubycodedocumentation.cpp rubycodeoperation.cpp
    rubycodeaccessormethod.cpp rubyclassdeclarationblock.cpp
    rubycodeclassfielddeclarationblock.cpp rubycodegenerationpolicy.cpp
    rubycodegenerationpolicypage.cpp rubycodegenerationformbase.ui
    simplecodegenerator.cpp adawriter.cpp aswriter.cpp cppwriter.cpp
    csharpwriter.cpp dwriter.cpp javawriter.cpp jswriter.cpp
    idlwriter.cpp pascalwriter.cpp perlwriter.cpp php5writer.cpp
    phpwriter.cpp pythonwriter.cpp rubywriter.cpp sqlwriter.cpp
    tclwriter.cpp xmlschemawriter.cpp xmlelementcodeblock.cpp
    xmlcodecomment.cpp codegen_utils.cpp
)
