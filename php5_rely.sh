#!/bin/bash

#**************libiconv支持字符集转换*************#
wget http://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.14.tar.gz
tar zxvf libiconv-1.14.tar.gz
cd libiconv-1.14
./configure --prefix=/usr/local/libiconv
cd srclib/
sed -ir -e '/gets is a security/d' ./stdio.in.h
cd ../
make && make install
cd ..

#扩展包更新包  当 libmcrypt-devel libicu-devel libicu 找不到时
# yum  install epel-release
# yum  update


#***************libmcrypt for encrypt**********#
# wget http://downloads.sourceforge.net/project/mhash/mhash/0.9.9.9/mhash-0.9.9.9.tar.bz2 
# tar jxvf mhash-0.9.9.9.tar.bz2 
# cd mhash-0.9.9.9
# ./configure && make && make install
# cd ..

# wget https://lcmp.googlecode.com/files/mcrypt-2.6.8.tar.gz
# tar zxf mcrypt-2.6.8.tar.gz && cd mcrypt-2.6.8
# ./configure && make && make install
# cd ..
# /sbin/ldconfig

# wget ftp://mcrypt.hellug.gr/pub/crypto/mcrypt/attic/libmcrypt/libmcrypt-2.5.7.tar.gz
# tar -zxvf libmcrypt-2.5.7.tar.gz
# cd libmcrypt-2.5.7
# mkdir -p /usr/local/libmcrytp
# ./configure prefix=/usr/local/libmcrytp/
# make
# make install

# ln -s /usr/local/lib/libmcrypt.* /usr/lib/
# ln -s /usr/local/bin/libmcrypt-config /usr/bin/libmcrypt-config
# ln -s /usr/local/lib/libmhash.* /usr/lib/
