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

include( CheckCSourceCompiles )

check_c_source_compiles("
    #include <db.h>
    void main() { DB *db; db->open(db, 0, 0, NULL, DB_BTREE, DB_CREATE, 0644); } "
  HAVE_BERKELEY_DB )

if( HAVE_BERKELEY_DB )
  set( BDB_LIBRARY db )
else( )
  kde_message_fatal( "berkeley db is required, but was not found on your system" )
endif( )
