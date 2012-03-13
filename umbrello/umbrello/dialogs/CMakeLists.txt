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
  ${CMAKE_BINARY_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)


##### dialogs (static) ##########################

kde_add_library( dialogs STATIC AUTOMOC
  SOURCES
    codegenerationoptionsbase.ui codegenerationpolicybase.ui
    codegenerationwizardbase.ui codeviewerdialogbase.ui
    codevieweroptionsbase.ui diagrampropertiespage.ui
    exportallviewsdialogbase.ui umlrolepropertiesbase.ui
    activitydialog.cpp activitypage.cpp assocgenpage.cpp
    assocpage.cpp assocpropdlg.cpp assocrolepage.cpp classgenpage.cpp
    classifierlistpage.cpp classoptionspage.cpp classpropdlg.cpp
    classwizard.cpp codeeditor.cpp codegenerationoptionspage.cpp
    codegenerationpolicypage.cpp codegenerationwizard.cpp
    codeviewerdialog.cpp codevieweroptionspage.cpp
    defaultcodegenpolicypage.cpp diagramprintpage.cpp
    exportallviewsdialog.cpp notedialog.cpp overwritedialogue.cpp
    pkgcontentspage.cpp parmpropdlg.cpp selectopdlg.cpp settingsdlg.cpp
    statedialog.cpp umlattributedialog.cpp umlentityattributedialog.cpp
    umloperationdialog.cpp umltemplatedialog.cpp umlroledialog.cpp
    umlroleproperties.cpp umlviewdialog.cpp umlwidgetcolorpage.cpp
)
