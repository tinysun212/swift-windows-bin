clang-3.8.exe for Cygwin 64
===========================

This file was generated while I was building a 'Swift' binary using clang v3.5.2.

The build script used at that time is swift-cygwin/BUILD-20160117.md in https://github.com/tinysun212/swift-cygwin-bin 

To properly use this compiler, you should copy or rename old include directory as follows.

 /usr/lib/gcc/i686-pc-cygwin/4.7.3/include/c++
 /usr/lib/gcc/i686-pc-cygwin/4.7.3/include/c++/i686-pc-cygwin
 /usr/lib/gcc/i686-pc-cygwin/4.7.3/include/c++/backward
 /usr/lib/clang/3.8.0/include


An example, you can make symbolic links 4.7.3, i686-pc-sygwin, 3.8.0 to old directories.

  cd /usr/lib/gcc/i686-pc-cygwin
  ln -s 4.9.3  4.7.3

  cd /usr/lib/gcc/i686-pc-cygwin/4.7.3/include/c++
  ln -s x86_64-pc-cygwin i686-pc-cygwin

  cd /usr/lib/clang
  ln -s x86_64-pc-cygwin/3.5.2  3.8.0

