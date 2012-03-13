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
    app_part.cpp doc-app-Makefile.am lo32-app-app.png app-Makefile.am
    app_part-desktop hi16-app-app.png main.cpp app-configure.in.in
    app_part.h hi32-app-app.png app.cpp app_part.rc hi48-app-app.png
    app-desktop app_shell.rc index.docbook app.h doc-Makefile.am
    lo16-app-app.png
  DESTINATION ${DATA_INSTALL_DIR}/kapptemplate/kpartapp )
