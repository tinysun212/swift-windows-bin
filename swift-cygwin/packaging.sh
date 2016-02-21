#!/bin/sh

export CWD=`pwd`
export SWIFT_BUILD=/cygdrive/c/Work/swift/build/Ninja-ReleaseAssert/swift-cygwin-x86_64
export SWIFT_SRC=/cygdrive/c/Work/swift/swift
export INSTALL_DIR=$CWD/swift-cygwin

mkdir -p $INSTALL_DIR/usr/bin
cd $SWIFT_BUILD/bin
cp -p cygcmark-0.22.0.dll cygswiftCore.dll cygswiftSwiftExperimental.dll cygswiftSwiftPrivate.dll swift-demangle.exe swift.exe $INSTALL_DIR/usr/bin
cd $INSTALL_DIR/usr/bin
ln -s swift swiftc
ln -s swift swift-autolink-extract

mkdir -p $INSTALL_DIR/usr/lib/swift/shims
cd $SWIFT_BUILD/lib/swift/shims
cp -p *.h module.map $INSTALL_DIR/usr/lib/swift/shims

mkdir -p $INSTALL_DIR/usr/lib/swift/windows
cd $SWIFT_BUILD/lib/swift/windows
cp -p *.dll $INSTALL_DIR/usr/lib/swift/windows

mkdir -p $INSTALL_DIR/usr/lib/swift/windows/x86_64
cd $SWIFT_BUILD/lib/swift/windows/x86_64
cp -p Swift.* SwiftExperimental.* SwiftPrivate.* $INSTALL_DIR/usr/lib/swift/windows/x86_64

mkdir -p $INSTALL_DIR/usr/share/man/man1
cd $SWIFT_BUILD/docs/tools
cp -p swift.1 $INSTALL_DIR/usr/share/man/man1

mkdir -p $INSTALL_DIR/usr/share/swift
cd $SWIFT_SRC
cp -p LICENSE.txt $INSTALL_DIR/usr/share/swift

