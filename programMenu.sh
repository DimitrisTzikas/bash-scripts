#!/bin/bash

case $(printf 'Browser\nCode\nOffice\nMedia' | dmenu -b -i -p "Select program category:") in
    Browser) sleep .2 && $(printf 'firefox\nbrave' | dmenu -b -i -p "Select browser:");;
    Code) sleep .2 && $(printf 'emacs' | dmenu -b -i -p "Select program for coding:");;
    Office) sleep .2 && $(printf '' | dmenu -b -i -p "Select office program:");;
    Media) sleep .2 && $(printf '' | dmenu -b -i -p "Select media program:");;
    "") exit 0;;
    *) echo "No valid option." 1>&2
       exit 1;;
esac
