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
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)

link_directories(
  ${QT_LIBRARY_DIRS}
)


##### headers ###################################

install( FILES
    ${CMAKE_CURRENT_BINARY_DIR}/cvsservice_stub.h
    ${CMAKE_CURRENT_BINARY_DIR}/cvsjob_stub.h
    ${CMAKE_CURRENT_BINARY_DIR}/repository_stub.h
  DESTINATION ${INCLUDE_INSTALL_DIR} )


##### other data ################################

install( FILES
    cvsservice.desktop
  DESTINATION ${SERVICES_INSTALL_DIR} )


##### cvsservice (shared) #######################

kde_add_library( cvsservice SHARED AUTOMOC
  SOURCES
    cvsservice.stub cvsjob.stub repository.stub
  VERSION 0.1.0
  LINK kdecore-shared
  DESTINATION ${LIB_INSTALL_DIR}
)


##### cvsservice (kdeinit) ######################

kde_add_kdeinit_executable( cvsservice AUTOMOC
  SOURCES
    main.cpp cvsservice.cpp cvsjob.cpp cvsservice.skel cvsservice.stub
    cvsjob.skel cvsjob.stub repository.cpp repository.skel
    repository.stub sshagent.cpp cvsserviceutils.cpp cvsloginjob.cpp
    cvsloginjob.skel cvsloginjob.stub
  LINK kio-shared
)


##### cvsaskpass (kdeinit) ######################

kde_add_kdeinit_executable( cvsaskpass AUTOMOC
  SOURCES cvsaskpass.cpp
  LINK kdeui-shared
)
