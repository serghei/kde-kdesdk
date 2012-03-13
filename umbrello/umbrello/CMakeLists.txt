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

add_subdirectory( codeimport )
add_subdirectory( dialogs )
add_subdirectory( docgenerators )
add_subdirectory( clipboard )
add_subdirectory( pics )
add_subdirectory( codegenerators )
add_subdirectory( headings )
add_subdirectory( refactoring )

include_directories(
  ${CMAKE_CURRENT_BINARY_DIR}
  ${CMAKE_CURRENT_BINARY_DIR}/.. # for version.h
  ${CMAKE_CURRENT_BINARY_DIR}/dialogs
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)

link_directories(
  ${QT_LIBRARY_DIRS}
)


##### other data ################################

kde_install_icons( )
install( FILES x-umbrello.desktop DESTINATION ${MIME_INSTALL_DIR}/application )
install( FILES tips umbrelloui.rc DESTINATION ${DATA_INSTALL_DIR}/umbrello )
install( FILES umbrello.desktop DESTINATION ${XDG_APPS_INSTALL_DIR} )


##### umbrello (executable) #####################

kde_add_executable( umbrello AUTOMOC
  SOURCES
    activitywidget.cpp actor.cpp actorwidget.cpp aligntoolbar.cpp
    artifact.cpp artifactwidget.cpp association.cpp associationwidget.cpp
    assocrules.cpp attribute.cpp boxwidget.cpp classifier.cpp
    classifiercodedocument.cpp classifierlistitem.cpp
    classifierwidget.cpp cmdlineexportallviewsevent.cpp
    codeaccessormethod.cpp codeblock.cpp codeblockwithcomments.cpp
    codeclassfield.cpp codeclassfielddeclarationblock.cpp
    codecomment.cpp codedocument.cpp codegenerationpolicy.cpp
    codegenerator.cpp codegenobjectwithtextblocks.cpp codemethodblock.cpp
    codeoperation.cpp codeparameter.cpp component.cpp componentwidget.cpp
    configurable.cpp datatypewidget.cpp dialog_utils.cpp
    docwindow.cpp entity.cpp entityattribute.cpp entitywidget.cpp
    enum.cpp enumliteral.cpp enumwidget.cpp floatingtextwidget.cpp
    floatingtextwidgetcontroller.cpp folder.cpp forkjoinwidget.cpp
    kplayerslideraction.cpp hierarchicalcodeblock.cpp import_rose.cpp
    kstartuplogo.cpp linepath.cpp linkwidget.cpp listpopupmenu.cpp
    main.cpp messagewidget.cpp messagewidgetcontroller.cpp
    model_utils.cpp node.cpp nodewidget.cpp notewidget.cpp
    notewidgetcontroller.cpp objectwidget.cpp objectwidgetcontroller.cpp
    object_factory.cpp operation.cpp optionstate.cpp ownedcodeblock.cpp
    ownedhierarchicalcodeblock.cpp package.cpp packagewidget.cpp
    petalnode.cpp petaltree2uml.cpp plugin.cpp pluginloader.cpp
    seqlinewidget.cpp statewidget.cpp stereotype.cpp template.cpp
    textblock.cpp toolbarstate.cpp toolbarstatearrow.cpp
    toolbarstateassociation.cpp toolbarstatefactory.cpp
    toolbarstatemessages.cpp toolbarstateother.cpp toolbarstatepool.cpp
    uml.cpp umlattributelist.cpp umlentityattributelist.cpp
    umlcanvasobject.cpp umlclassifierlistitemlist.cpp umldoc.cpp
    umllistview.cpp umllistviewitem.cpp umlnamespace.cpp umlobject.cpp
    umlobjectlist.cpp umlrole.cpp umlview.cpp umlviewcanvas.cpp
    umlviewimageexporter.cpp umlviewimageexporterall.cpp
    umlviewimageexportermodel.cpp umlwidget.cpp umlwidgetcontroller.cpp
    uniqueid.cpp usecase.cpp usecasewidget.cpp widgetbase.cpp
    widget_factory.cpp widget_utils.cpp worktoolbar.cpp
  LINK
    refactoring-static codeimport-static kdevcppparser-static clipboard-static
    codegenerator-static docgenerators-static dialogs-static
    kdeprint-shared kio-shared ${XML2_LIBRARIES} ${XSLT_LIBRARIES}
  DESTINATION ${BIN_INSTALL_DIR}
)
