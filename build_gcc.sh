#!/bin/bash
# Copyright (c) 2012 Benjamin Beurdouche. All rights reserved.
#
# You might want to modify the first line to specify your own install location.
# Please create $GCC_PREFIX folder and execute this script from there as normal user
# Please chown -R $USER:$USERGROUP parent directory of $GCC_PREFIX (ie here /opt/gnu)
#
# brew install binutils autoconf automake libtool autogen gettext cloog

set -x

export LUSER="bbeurdouche"
export LGROUP="staff"

export GNU_PREFIX="/opt/gnu"
export GCC_PREFIX="${GNU_PREFIX}/gcc"

sudo mkdir $GNU_PREFIX
sudo chown -R $LUSER:$LGROUP $GNU_PREFIX
cd $GNU_PREFIX

# Hopefully, you can tweak these as they get out of date, but the download URL's
# may not be stable to text substitution.
GMP_VERSION=gmp-5.0.5
MPFR_VERSION=mpfr-3.1.1
MPC_VERSION=mpc-0.9
GCC_VERSION=gcc-4.7.1

# Downloads, builds, then install gmp, mpfr, mpc, and gcc 4.7 to GCC_PREFIX
export PATH="${GCC_PREFIX}/bin:${PATH}"
export LD_LIBRARY_PATH="${GCC_PREFIX}/lib:${LD_LIBRARY_PATH}"
export LIBRARY_PATH="/usr/local/lib/gcc"
export DYLD_LIBRARY_PATH="${GCC_PREFIX}/lib:${DYLD_LIBRARY_PATH}"


if ! test -d "${GMP_VERSION}"
then
    if ! test -f "${GMP_VERSION}.tar.bz2"
    then
        wget "ftp://ftp.gmplib.org/pub/$GMP_VERSION/${GMP_VERSION}.tar.bz2" || exit
        tar xfjv "${GMP_VERSION}.tar.bz2" || exit
    fi
fi
mkdir "${GMP_VERSION}/build"
cd "${GMP_VERSION}/build" || exit

../configure --prefix="${GCC_PREFIX}" || exit
make -j5 || exit
make check || exit
sudo make install || exit
cd -

if ! test -d "${MPFR_VERSION}"
then
    if ! test -f "${MPFR_VERSION}.tar.gz"
    then
        wget "http://www.mpfr.org/mpfr-current/${MPFR_VERSION}.tar.gz" || exit
        tar xfvz "${MPFR_VERSION}.tar.gz" || exit
    fi
fi
mkdir "${MPFR_VERSION}/build"
cd "${MPFR_VERSION}/build" || exit

../configure --prefix="${GCC_PREFIX}" --with-gmp="${GCC_PREFIX}" || exit
make -j5 || exit
make check || exit
sudo make install || exit
cd -

if ! test -d "${MPC_VERSION}"
then
    if ! test -f "${MPC_VERSION}.tar.gz"
    then
        wget "http://www.multiprecision.org/mpc/download/${MPC_VERSION}.tar.gz" || exit
        tar xfvz "${MPC_VERSION}.tar.gz" || exit
    fi
fi
mkdir "${MPC_VERSION}/build"
cd "${MPC_VERSION}/build" || exit

../configure --prefix="${GCC_PREFIX}" --with-gmp="${GCC_PREFIX}" --with-mpfr="${GCC_PREFIX}" || exit
make -j5 || exit
make check || exit
sudo make install || exit
cd -

if ! test -d "${GCC_VERSION}"
then
    if ! test -f "${GCC_VERSION}.tar.bz2"
    then
        wget "ftp://ftp.uvsq.fr/pub/gcc/releases/${GCC_VERSION}/${GCC_VERSION}.tar.bz2" || exit
        tar xfvj "${GCC_VERSION}.tar.bz2" || exit
    fi
fi
mkdir "${GCC_VERSION}/build"
cd "${GCC_VERSION}/build" || exit

../configure --prefix="${GCC_PREFIX}" --with-gmp="${GCC_PREFIX}" --with-mpfr="${GCC_PREFIX}" --with-mpc="${GCC_PREFIX}" --enable-checking=release --enable-languages=c,c++,fortran || exit
make -j5 || exit
make check || exit
sudo make install || exit
cd -

