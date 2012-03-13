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


##### kbbbackend (static) #######################

set( SRCS
  packagelistjob.cpp bugjob.cpp package.cpp bugsystem.cpp bug.cpp
  bugdetails.cpp bugcommand.cpp buglistjob.cpp bugmybugsjob.cpp
  mailsender.cpp bugcache.cpp bugdetailsjob.cpp person.cpp smtp.cpp
  bugserver.cpp bugserverconfig.cpp processor.cpp domprocessor.cpp
  rdfprocessor.cpp htmlparser.cpp kbbprefs.cpp
)

kde_add_library( kbbbackend_nopic STATIC AUTOMOC
  SOURCES ${SRCS}
)

if( WITH_KCAL )
  kde_add_library( kbbbackend_pic STATIC_PIC AUTOMOC
    SOURCES ${SRCS}
  )
endif( )
