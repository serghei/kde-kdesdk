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

cmake_minimum_required( VERSION 2.8 )


##### general package setup #####################

project( kdesdk )
set( PACKAGE kdesdk )
set( VERSION "3.6" )


##### features ##################################

option( WITH_ALL_FEATURES "Enable all possible features" OFF )
option( WITH_DBSEARCHENGINE "Enable dbsearchengine support (kbabel)" ${WITH_ALL_FEATURES} )
option( WITH_KCAL "Enable kcal support (kbugbuster)" ${WITH_ALL_FEATURES} )


##### user requested modules ####################

option( BUILD_ALL "Build all" OFF )
option( BUILD_CERVISIA "Build cervisia" ${BUILD_ALL} )
option( BUILD_DOC "Build documentation" ${BUILD_ALL} )
option( BUILD_KAPPTEMPLATE "Build kapptemplate" ${BUILD_ALL} )
option( BUILD_KBABEL "Build kbabel" ${BUILD_ALL} )
option( BUILD_KBUGBUSTER "Build kbugbuster" ${BUILD_ALL} )
option( BUILD_KCACHEGRIND "Build kcachegrind" ${BUILD_ALL} )
option( BUILD_KDEACCOUNTS_PLUGIN "Build kdeaccounts-plugin" ${BUILD_ALL} )
option( BUILD_KFILE_PLUGINS "Build kfile-plugins" ${BUILD_ALL} )
option( BUILD_KIOSLAVE "Build kioslave" ${BUILD_ALL} )
option( BUILD_KMTRACE "Build kmtrace" ${BUILD_ALL} )
option( BUILD_KOMPARE "Build kompare" ${BUILD_ALL} )
option( BUILD_KPROFILEMETHOD "Build kprofilemethod" ${BUILD_ALL} )
option( BUILD_KSPY "Build kspy" ${BUILD_ALL} )
option( BUILD_KSTARTPERF "Build kstartperf" ${BUILD_ALL} )
option( BUILD_KUIVIEWER "Build kuiviewer" ${BUILD_ALL} )
option( BUILD_KUNITTEST "Build kunittest" ${BUILD_ALL} )
option( BUILD_UMBRELLO "Build umbrello" ${BUILD_ALL} )


##### configure checks ##########################

include( ConfigureChecks.cmake )


##### kdesdk directories ########################

kde_conditional_add_subdirectory( BUILD_CERVISIA cervisia )
kde_conditional_add_subdirectory( BUILD_DOC doc )
kde_conditional_add_subdirectory( BUILD_KAPPTEMPLATE kapptemplate )
kde_conditional_add_subdirectory( BUILD_KBABEL kbabel )
kde_conditional_add_subdirectory( BUILD_KBUGBUSTER kbugbuster )
kde_conditional_add_subdirectory( BUILD_KCACHEGRIND kcachegrind )
kde_conditional_add_subdirectory( BUILD_KDEACCOUNTS_PLUGIN kdeaccounts-plugin )
kde_conditional_add_subdirectory( BUILD_KFILE_PLUGINS kfile-plugins )
kde_conditional_add_subdirectory( BUILD_KIOSLAVE kioslave )
kde_conditional_add_subdirectory( BUILD_KMTRACE kmtrace )
kde_conditional_add_subdirectory( BUILD_KOMPARE kompare )
kde_conditional_add_subdirectory( BUILD_KPROFILEMETHOD kprofilemethod )
kde_conditional_add_subdirectory( BUILD_KSPY kspy )
kde_conditional_add_subdirectory( BUILD_KSTARTPERF kstartperf )
kde_conditional_add_subdirectory( BUILD_KUIVIEWER kuiviewer )
kde_conditional_add_subdirectory( BUILD_KUNITTEST kunittest )
kde_conditional_add_subdirectory( BUILD_UMBRELLO umbrello )


##### write configure files #####################

configure_file( config.h.cmake config.h @ONLY )
