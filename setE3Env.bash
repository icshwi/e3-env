#  Copyright (c) 2016 Jeong Han Lee
#  Copyright (c) 2016 European Spallation Source ERIC
#
#  The program is free software: you can redistribute
#  it and/or modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation, either version 2 of the
#  License, or any newer version.
#
#  This program is distributed in the hope that it will be useful, but WITHOUT
#  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
#  more details.
#
#  You should have received a copy of the GNU General Public License along with
#  this program. If not, see https://www.gnu.org/licenses/gpl-2.0.txt
#
# Shell  : setEpicsEnv.bash
# Author : Jeong Han Lee
# email  : jeonghan.lee@gmail.com


unset EPICS_HOST_ARCH
unset EPICS_BASE
unset EPICS
unset REQUIRE_PATH
unset REQUIRE_VERSION
unset LD_LIBRARY_PATH
unset PATH

base_ver=$1
require_ver=$2

EPICS_LOCATION=/e3/bases
EPICS_MODULES=/e3/modules


if [ -z "$require_ver" ]; then
    require_ver="2.5.3"
fi


if [ -z "$base_ver" ]; then
    base_ver="3.15.4"
fi


export EPICS_HOST_ARCH=linux-x86_64
export EPICS=${EPICS_LOCATION}
export EPICS_MODULES


export EPICS_BASE=${EPICS}/base-${base_ver}


# Select REQUIRE Environment Variables

export REQUIRE=require
export REQUIRE_VERSION=${require_ver}
export REQUIRE_PATH=${EPICS_MODULES}/${REQUIRE}/${REQUIRE_VERSION}

export REQUIRE_BIN=${REQUIRE_PATH}/bin
export REQUIRE_LIB=${REQUIRE_PATH}/R${base_ver}/lib
export REQUIRE_DBD=${REQUIRE_PATH}/R${base_ver}/dbd


# Static PATH and LD_LIBRARY_PATH
# 
export PATH=${REQUIRE_BIN}:${EPICS_BASE}/bin/${EPICS_HOST_ARCH}:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games
export LD_LIBRARY_PATH=${EPICS_BASE}/lib/${EPICS_HOST_ARCH}:${REQUIRE_LIB}/${EPICS_HOST_ARCH}

