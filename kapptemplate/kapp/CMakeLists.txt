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
    app_client.cpp appview.h index.docbook app-Makefile.am
    appiface.h doc-Makefile.am lo16-app-app.png app-configure.in.in
    apppref.cpp doc-app-Makefile.am lo32-app-app.png app.cpp apppref.h
    hi16-app-app.png main.cpp app-desktop appui.rc hi32-app-app.png
    app.h appview.cpp hi48-app-app.png pics-Makefile.am
  DESTINATION ${DATA_INSTALL_DIR}/kapptemplate/kapp )
