#!/usr/bin/env bash

INSTALLED_SHARE_DIR=@DATA_INSTALL_DIR@/kapptemplate
KAPPTEMPLATEVERSION=@VERSION@

###########################################################################
#
# Function: LoadDefaults
#
# This will load in all the default values stored in the user's
# .kapptemplaterc file
#
# INPUT : $KAPPTEMPLATEVERSION, $INSTALLED_SHARE_DIR
# OUTPUT: $ECHO, $KAPPTEMPLATERC, $DEFAULT_AUTHOR, $DEFAULT_EMAIL,
#         $DEFAULT_ROOT, $SHARE_DIR, $BIN_DIR, $MKDIR, $BASENAME
#
###########################################################################
function LoadDefaults
{
    # horrid hack to try and figure out what shell we are using
    # basically, if we can find /usr/ucb/echo, then we are almost for sure
    # NOT on a Linux system and probably 'echo "\c" works.  if we don't
    # find it, we'll assume that the shell is really bash.
    if [ -f "/usr/ucb/echo" ];
    then
        ECHO="echo";
    else
        ECHO="echo -e";
    fi

    # If $MAKE hasn't been set yet, try to figure out how we reach GNU make
    # ourselves.
    if [ ! "$MAKE" ];
    then
        if [ -f "/usr/bin/gmake" ] || [ -f "/usr/local/bin/gmake" ];
        then
            MAKE="gmake";
        else
            MAKE="make";
        fi
    fi

    $ECHO "KAppTemplate v${KAPPTEMPLATEVERSION} (C) 2003 Kurt Granroth <granroth@kde.org>";
    $ECHO;

    if [ ! "$KAPPTEMPLATERC" ];
    then
        KAPPTEMPLATERC=$HOME/.kapptemplaterc
    fi

    if [ -f $KAPPTEMPLATERC ];
    then
        . $KAPPTEMPLATERC
    else
        GetInitialDefaults
    fi

    if [ ! "$DEFAULT_AUTHOR" ];
    then
        DEFAULT_AUTHOR="Your Name";
    fi

    if [ ! "$DEFAULT_EMAIL" ];
    then
        DEFAULT_EMAIL="`whoami`@$HOST";
    fi

    if [ ! "$DEFAULT_ROOT" ];
    then
        DEFAULT_ROOT="$HOME/src";
    fi

    SHARE_DIR=$INSTALLED_SHARE_DIR;
    INCLUDE_DIR="$SHARE_DIR/include";

    if [ -f "$SHARE_DIR/bin/mkinstalldirs" ];
    then
        MKDIR=$SHARE_DIR/bin/mkinstalldirs
    else
        MKDIR=mkdir
    fi

    # Finally, get the name of the running program
    BASENAME=`echo $0 | sed 's@^.*/@@g'`;
}

# We start by loading the 'common' file containing all useful
# functions
if [ -f $INSTALLED_SHARE_DIR/include/kapptemplate.common ];
then
    . $INSTALLED_SHARE_DIR/include/kapptemplate.common
else
    $ECHO "Could not find common file 'kapptemplate.common'";
    $ECHO;
    exit 1;
fi

# Then, we load all the default environment variables and perform
# any necessary initialization
LoadDefaults

# Parse the command line
CMDLINE=$@;
ParseCommandLine

# Do a sanity check and build the various module lists
BuildModuleLists

if [ ! "$WHICH_ONE" ] && [ "$ALL_DEFAULTS" ];
then
    WHICH_ONE=1;
fi
if [ ! "$WHICH_ONE" ];
then
    # Find out how to use kapptemplate this time
    $ECHO "Please select the type of framework you wish to generate";
    $ECHO "1. Full featured KDE application [default]";
    $ECHO "2. Full featured KPart application";
    $ECHO "3. KPart plugin";
    $ECHO "4. Convert existing source to automake/autoconf framework";
    $ECHO "Choose [1-4]: \c";
    read WHICH_ONE;
    $ECHO;
fi;

# Start the proper module
case $WHICH_ONE in
    2)
        . $INCLUDE_DIR/kpartapp.module;;
    3)
        . $INCLUDE_DIR/kpartplugin.module;;
    4)
        . $INCLUDE_DIR/existing.module;;
    *)
        . $INCLUDE_DIR/kapptemplate.module;;
esac
