# e3-env
The global environmental variables for E3.

## makefile

e3-env defines

* EPICS_BASE_TAG (EPICS, git) : EPICS BASE VERSION(s)
* ESS_EPICS_PATH (ESS, local) : E3 environment parent DIR (/epics)
* EPICS_LOCATION : bases parent
* EPICS_MODULES  : modules parent
* EPICS_APPS     : application parent (TBD)
* EPICS_IOCS     : ioc parent (TBD)

* BASE_INSTALL_LOCATIONS
* CROSS_COMPILER_TARGET_ARCHS 


* REQUIRE 
* REQUIRE_MODULE_TAG (PSI) 
* REQUIRE_VERSION (ESS, local) : E3 Installation VERSION
* REQUIRE_PATH  : E3 installation DIR
* REQUIRE_TOOLS 
* REQUIRE_BIN


## setE3Env.bash

* ESS_EPICS_PATH=/epics

* EPICS_LOCATION
* EPICS_MODULES

* EPICS = ${EPICS_LOCATION}
* EPICS_DRIVER_PATH ${EPICS_MODULES}
* EPICS_BASE      : ${EPICS}/base-${base_ver}
* EPICS_HOST_ARCH : $(${EPICS_BASE}/startup/EpicsHostArch.pl)

* REQUIRE=require
* REQUIRE_VERSION
* REQUIRE_PATH : ${EPICS_MODULES}/${REQUIRE}/${REQUIRE_VERSION}
* REQUIRE_BIN  : ${REQUIRE_PATH}/bin
* REQUIRE_LIB  : ${REQUIRE_PATH}/R${base_ver}/lib
* REQUIRE_DBD  : ${REQUIRE_PATH}/R${base_ver}/dbd
