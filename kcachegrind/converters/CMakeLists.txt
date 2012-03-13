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

install( PROGRAMS
    hotshot2calltree op2calltree pprof2calltree
    dprof2calltree memprof2calltree
  DESTINATION ${BIN_INSTALL_DIR} )
