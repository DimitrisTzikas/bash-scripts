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

break="============================================================"

# Check arguments
case "$1" in
    # Add and push files
    add) clear
         echo "$break"
         # Add files
         for files in "$@"; do
            git add "$files"
         done

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