#!/bin/bash

title=`playerctl metadata title`
artist=`playerctl metadata artist`


echo $title " - " $artist

