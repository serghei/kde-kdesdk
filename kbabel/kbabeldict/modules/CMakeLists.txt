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

add_subdirectory( pocompendium )
add_subdirectory( poauxiliary )
add_subdirectory( tmx )
kde_conditional_add_subdirectory( WITH_DBSEARCHENGINE dbsearchengine )
