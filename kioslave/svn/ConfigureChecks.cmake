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

include( CheckIncludeFile )
include( CheckLibraryExists )
include( FindPkgConfig )

kde_search_module( APR apr-1 )
if( APR_FOUND )
  set( HAVE_APR 1 )
endif( )


# check for subversion library

check_library_exists( "svn_client-1" "svn_pool_create_ex" "${SVN_LIBRARY_DIR}" HAVE_SVN_POOL_CREATE_EX )

if( HAVE_SVN_POOL_CREATE_EX )
  set( SVN_LIBRARIES "svn_client-1;svn_subr-1;svn_ra-1" )
else( )
  kde_message_fatal( "svn_client-1 library was not found on your system.\n Subversion is installed?\n Try to set SVN_LIBRARY_DIR to subversion library directory." )
endif( )


# check for subversion headers

kde_save_and_set( CMAKE_REQUIRED_FLAGS "-I${APR_INCLUDE_DIRS}" )
kde_save_and_set( CMAKE_REQUIRED_DEFINITIONS "${APR_CFLAGS}" )

if( SVN_INCLUDE_DIR )
  set_and_save( CMAKE_REQUIRED_INCLUDES "${SVN_INCLUDE_DIR}" )
  check_include_file( "svn_types.h" HAVE_SVN_TYPES_H )
  kde_restore( CMAKE_REQUIRED_INCLUDES )
else( )
  # FIXME must be improved
  check_include_file( "/usr/include/subversion-1/svn_types.h" HAVE_SVN_TYPES_H )
  set( SVN_INCLUDE_DIR "/usr/include/subversion-1" )
endif( )

kde_restore( CMAKE_REQUIRED_FLAGS CMAKE_REQUIRED_DEFINITIONS )

if( NOT HAVE_SVN_TYPES_H )
  kde_message_fatal( "svn_types.h file was not found on your system.\n Subversion devel files are installed?\n Try to set SVN_INCLUDE_DIR to subversion include directory." )
endif( )
