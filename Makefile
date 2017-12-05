#
#  Copyright (c) 2107 - Present  Jeong Han Lee
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
# Date    : Thursday, October  5 22:35:20 CEST 2017
# version : 0.0.2
#

TOP = $(CURDIR)

-include $(TOP)/e3-env

default: env

## Print EPICS and ESS EPICS Environment variables
env:
	@echo ""
	@echo ""
	@echo "----- >>>> EPICS BASE Information <<<< -----"
	@echo ""
	@echo "EPICS_BASE_TAG              : "$(EPICS_BASE_TAG)
	@echo "CROSS_COMPILER_TARGET_ARCHS : "$(CROSS_COMPILER_TARGET_ARCHS)
	@echo ""
	@echo "----- >>>> ESS EPICS Environment  <<<< -----"
	@echo ""
	@echo "EPICS_LOCATION              : "$(EPICS_LOCATION)
	@echo "EPICS_MODULES               : "$(EPICS_MODULES)
	@echo "DEFAULT_EPICS_VERSIONS      : "$(DEFAULT_EPICS_VERSIONS)
	@echo "BASE_INSTALL_LOCATIONS      : "$(BASE_INSTALL_LOCATIONS)
	@echo "REQUIRE_VERSION             : "$(REQUIRE_VERSION)
	@echo "REQUIRE_PATH                : "$(REQUIRE_PATH)
	@echo "REQUIRE_TOOLS               : "$(REQUIRE_TOOLS)
	@echo "REQUIRE_BIN                 : "$(REQUIRE_BIN)
	@echo ""


init:
	@echo "dummy init"
