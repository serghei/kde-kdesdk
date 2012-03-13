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

find_program( LEX_EXECUTABLE "lex" )
if( NOT LEX_EXECUTABLE )
  kde_message_fatal( "lex is required, but was not found on your system" )
endif( )
