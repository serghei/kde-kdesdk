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

add_subdirectory( no-exe )

install( FILES
    AUTHORS INSTALL COPYING NEWS app.lsm app.spec configure.in.in.in
    README base-Makefile.am ChangeLog VERSION base-Makefile.cvs
    po-Makefile.am
  DESTINATION ${DATA_INSTALL_DIR}/kapptemplate/appframework )
