#!/bin/bash

cd /projects/$PROJECT

if [ -f "/projects/$PROJECT/prepare.sh" ]; then
    /bin/bash -c "/projects/$PROJECT/prepare.sh"
fi

if [ -f "/projects/$PROJECT/build.sh" ]; then
    /bin/bash -c "/projects/$PROJECT/build.sh"
fi

if [ -f "/projects/$PROJECT/run.sh" ]; then
    /bin/bash -c "/projects/$PROJECT/run.sh"
fi

/bin/sleep 315360000