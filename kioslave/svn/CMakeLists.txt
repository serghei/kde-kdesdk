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

add_subdirectory( ksvnd )
add_subdirectory( svnhelper )
add_subdirectory( icons )

include_directories(
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
  ${APR_INCLUDE_DIRS}
  ${SVN_INCLUDE_DIR}
)

link_directories(
  ${QT_LIBRARY_DIRS}
  ${APR_LIBRARY_DIRS}
  ${SVN_LIBRARY_DIR}
)


##### other data ################################

install( FILES
    svn+http.protocol svn+https.protocol svn+file.protocol
    svn+ssh.protocol svn.protocol
  DESTINATION ${SERVICES_INSTALL_DIR} )


##### kio_svn (module) ##########################

kde_add_kpart( kio_svn
  SOURCES svn.cpp
  LINK kio-shared ${APR_LIBRARIES} ${SVN_LIBRARIES}
  DESTINATION ${PLUGIN_INSTALL_DIR}
)
