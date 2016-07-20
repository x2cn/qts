#!/bin/bash
GODST=""
if [ "$GOROOT" != "" ]
then
    GODST=$GOPATH
else
    echo "You must set GOPATH"
    exit 1
fi

#create share libarary
swig -go -c++ -cgo -intgosize 64 ./ctp.i
go install
