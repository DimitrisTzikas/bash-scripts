#!/bin/bash

###########################################################
#
# Easy git
# 
# Written by Dimitri Tzikas
#
# Synopsis: egit
#
# Arguments:
#
# Examples:
# egit
#
###########################################################

# Check arguments
break="============================================================"
case "$1" in
    add) clear
         echo "$break"
         # Add file
         git add "$2"

         # Commit
         git commit -m "$( date +%m-%d-%Y)"
         echo "$break"

         # Push changes
         git push -u origin master

         # Whait the user and clean the console
         read -p "Press <enter> to continue."
         clear;;

    *) echo "Not valid option." 1>&2
       exit 1;;
    esac
fi