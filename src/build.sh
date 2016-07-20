#!/bin/bash
rm -rf build
mkdir build
cd build

GODST=""
if [ "$GOROOT" != "" ]
then
    GODST=$GOPATH
else
    echo "You must set GOPATH"
    exit 1
fi

#create share libarary
cp ../ctp.i .
swig -go -c++ -cgo -intgosize 64 ./ctp.i
go install
