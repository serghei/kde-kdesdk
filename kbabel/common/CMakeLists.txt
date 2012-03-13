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

add_subdirectory( libgettext )

include_directories(
  ${CMAKE_CURRENT_BINARY_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)


##### headers ###################################

install( FILES
    catalog.h catalogitem.h editcmd.h msgfmt.h catalogsettings.h
    findoptions.h catalogview.h tagextractor.h poinfo.h regexpextractor.h
    itempart.h catalogfileplugin.h kbabeldatatool.h kbproject.h
    kbprojectmanager.h projectsettings.h
  DESTINATION ${INCLUDE_INSTALL_DIR}/kbabel )


##### other data ################################

install( FILES kbabelfilter.desktop DESTINATION ${SERVICETYPES_INSTALL_DIR} )
install( FILES kbprojectsettings.kcfg DESTINATION ${KCFG_INSTALL_DIR} )
install( FILES kbabel-projectrename.upd DESTINATION ${KCONF_UPDATE_INSTALL_DIR} )


##### kbabelcommon (shared) #####################

add_custom_command( OUTPUT version.h
  COMMAND echo \"/* Generated file - DO NOT EDIT */\" > version.h
  COMMAND echo \"\#undef VERSION\" >> version.h
  COMMAND echo \"\#define VERSION \\\"`cat ${CMAKE_CURRENT_SOURCE_DIR}/../VERSION`\\\"\" >> version.h
  DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/../VERSION )

set_source_files_properties( catalog.cpp PROPERTIES OBJECT_DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/version.h )

kde_add_library( kbabelcommon SHARED AUTOMOC
  SOURCES
    catalog.cpp catalogitem.cpp editcmd.cpp msgfmt.cpp
    catalogsettings.cpp tagextractor.cpp diff.cpp argextractor.cpp
    kbmailer.cpp poinfo.cpp regexpextractor.cpp importplugin.cpp
    exportplugin.cpp kbproject.cpp kbprojectmanager.cpp
    kbprojectsettings.kcfgc projectsettings.cpp stringdistance.cpp
  VERSION 3.2.0
  LINK gettext-static kio-shared
  DESTINATION ${LIB_INSTALL_DIR}
)
