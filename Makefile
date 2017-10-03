#
#  Copyright (c) 2017 - Present  European Spallation Source ERIC
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
# Author  : Jeong Han Lee
# email   : han.lee@esss.se
# Date    : Tuesday, October  3 16:42:34 CEST 2017
# version : 0.0.1
#

TOP = $(CURDIR)

E3_ENV_SRC=$(TOP)/e3-env

ifneq ($(wildcard $(E3_ENV_SRC)),)
include $(E3_ENV_SRC)
endif

default: env


# help is defined in 
# https://gist.github.com/rcmachado/af3db315e31383502660
help:
	$(info --------------------------------------- )	
	$(info Available targets)
	$(info --------------------------------------- )
	@awk '/^[a-zA-Z\-\_0-9]+:/ {                    \
	  nb = sub( /^## /, "", helpMsg );              \
	  if(nb == 0) {                                 \
	    helpMsg = $$0;                              \
	    nb = sub( /^[^:]*:.* ## /, "", helpMsg );   \
	  }                                             \
	  if (nb)                                       \
	    print  $$1 "\t" helpMsg;                    \
	}                                               \
	{ helpMsg = $$0 }'                              \
	$(MAKEFILE_LIST) | column -ts:	


## Print EPICS and ESS EPICS Environment variables
env:
	@echo ""
	@echo "----- >>>> EPICS BASE Information <<<< -----"
	@echo ""
	@echo "EPICS_BASE_TAG         : "$(EPICS_BASE_TAG)
	@echo ""
	@echo "----- >>>> ESS EPICS Environment  <<<< -----"
	@echo ""
	@echo "EPICS_LOCATION         : "$(EPICS_LOCATION)
	@echo "EPICS_MODULES          : "$(EPICS_MODULES)
	@echo "DEFAULT_EPICS_VERSIONS : "$(DEFAULT_EPICS_VERSIONS)
	@echo "BASE_INSTALL_LOCATION  : "$(BASE_INSTALL_LOCATION)
	@echo "REQUIRE_VERSION        : "$(REQUIRE_VERSION)
	@echo "REQUIRE_PATH           : "$(REQUIRE_PATH)
	@echo "REQUIRE_TOOLS          : "$(REQUIRE_TOOLS)
	@echo "REQUIRE_BIN            : "$(REQUIRE_BIN)
	@echo ""


