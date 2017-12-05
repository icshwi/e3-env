#  Copyright (c) 2016 - Present  Jeong Han Lee
#  Copyright (c) 2016            European Spallation Source ERIC
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
#   Shell   : setE3Env.bash
#   Author  : Jeong Han Lee
#   email   : jeonghan.lee@gmail.com
#   date    : Monday, December  4 13:25:21 CET 2017
#
#   version : 0.0.2


unset ESS_ETHERLAB_LIB
unset ESS_ETHERLAB_BIN
unset ESS_ETHERLAB_SBIN


unset ESS_LIBS

unset ESS_OPCUA
unset ESS_OPCUA_LIB
unset ESS_OPCUA_BIN
unset ESS_OPCUA_INC

unset EPICS_LOCATION
unset EPICS_MODULES
unset EPICS
unset EPICS_DRIVER_PATH
unset EPICS_BASE
unset EPICS_HOST_ARCH

unset REQUIRE
unset REQUIRE_VERSION
unset REQUIRE_PATH

unset REQUIRE_BIN
unset REQUIRE_LIB
unset REQUIRE_DBD

unset PATH
unset LD_LIBRARY_PATH



base_ver=$1
require_ver=$2

if [ -z "$require_ver" ]; then
    require_ver="2.5.4"
fi

if [ -z "$base_ver" ]; then
    base_ver="3.15.5"
fi



export ESS_EPICS_PATH=/testing/epics
export EPICS=${ESS_EPICS_PATH}

#ESS_LIBS=/opt/ess
#ESS_ETHERLAB=/opt/etherlab
#ESS_OPCUA=${ESS_LIBS}/opcUa
#ESS_ETHERLAB=${ESS_LIBS}/etherlab

#export ESS_OPCUA_LIB=${ESS_OPCUA}/lib
#export ESS_OPCUA_INC=${ESS_OPCUA}/include
#export ESS_OPCUA_BIN=${ESS_OPCUA}/bin


# export ESS_ETHERLAB_LIB=${ESS_ETHERLAB}/lib
# export ESS_ETHERLAB_BIN=${ESS_ETHERLAB}/bin
# export ESS_ETHERLAB_SBIN=${ESS_ETHERLAB}/sbin


# shared libs seach directory by require.c
#
# EPICS_DRIVER_PATH
#export EPICS_DRIVER_PATH=${EPICS_MODULES}:${ESS_ETHERLAB_LIB}
export EPICS_BASE=${EPICS}/base-${base_ver}



# export EPICS_LOCATION=${ESS_EPICS_PATH}/bases
# export EPICS_MODULES=${ESS_EPICS_PATH}/modules



EPICS_HOST_ARCH=$("${EPICS_BASE}/startup/EpicsHostArch.pl")
export EPICS_HOST_ARCH

# Select REQUIRE Environment Variables

export REQUIRE=require
export REQUIRE_VERSION=${require_ver}
export REQUIRE_PATH=${EPICS_BASE}/${REQUIRE}/${REQUIRE_VERSION}

export REQUIRE_BIN=${REQUIRE_PATH}/bin
export REQUIRE_LIB=${REQUIRE_PATH}/lib
export REQUIRE_DBD=${REQUIRE_PATH}/dbd

export PATH=${REQUIRE_BIN}:${EPICS_BASE}/bin/${EPICS_HOST_ARCH}:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/sbin:${HOME}/bin

export LD_LIBRARY_PATH=${EPICS_BASE}/lib/${EPICS_HOST_ARCH}:${REQUIRE_LIB}/${EPICS_HOST_ARCH}:/usr/local/lib:${HOME}/lib

