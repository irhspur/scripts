#!/bin/bash

usage() { echo "usage: --coursename [--coursename \"build-a-react-app-with-redux\"] --type [--type \"courses|lessons\"]" 1>&2; exit 1; }

OPTS=$(getopt -o c:t: --long coursename:,type: -n 'download_egghead_videos.sh' -- "$@")

if [ $? != 0 ] ; then echo "Terminating..." >&2 ; exit 1 ; fi

eval set -- "$OPTS"

COURSENAME=""
TYPE=""

while true ; do
    case "$1" in
        -c | --coursename) COURSENAME="$2"; shift 2 ;;
        -t | --type) TYPE="$2"; shift 2 ;;
        -- ) shift; break ;;
        * ) usage ;;
    esac
done

if [ -z "${COURSENAME}" ] || [ -z "${TYPE}" ]; then
    usage
fi


youtube-dl --download-archive "$COURSENAME/archive.txt" -o "$COURSENAME/%(playlist_index)s_%(title)s" "https://egghead.io/$TYPE/$COURSENAME"
