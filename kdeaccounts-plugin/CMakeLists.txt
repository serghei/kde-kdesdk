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
  ${KDE_INCLUDE_DIR}
  ${QT_INCLUDE_DIR}
)

link_directories(
  ${QT_LIBRARY_DIRS}
)


##### other data ################################

install( FILES kdeaccountsplugin.desktop
  DESTINATION ${DATA_INSTALL_DIR}/kabc/formats )


##### kabcformat_kdeaccounts (module) ###########

kde_add_kpart( kabcformat_kdeaccounts
  SOURCES kdeaccountsformat.cpp
  LINK kabc-shared
  DESTINATION ${PLUGIN_INSTALL_DIR}
)
