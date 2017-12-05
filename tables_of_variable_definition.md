Table of Makeﬁle, ESS variable deﬁnitions

# e3-env/e3-global-env

ESS_EPICS_PATH
EPICS_BASE_TAG
DEFAULT_EPICS_VERSIONS:=$(EPICS_BASE_TAG:R%=%)
BASE_INSTALL_LOCATIONS:=$(addprefix $(ESS_EPICS_PATH)/base-,$(DEFAULT_EPICS_VERSIONS))
CROSS_COMPILER_TARGET_ARCHS


# e3-base

# e3-base/configure/CONFIG.EPICS

EPICS_BASE_NAME     (local) in e3-base  EPICS_BASE_NAME:=epics-base
EPICS_BASE_SRC_PATH (local) in e3-base  EPICS_BASE_SRC_PATH:=$(TOP)/$(EPICS_BASE_NAME)
EPICS_BASE          (EPICS) in e3-base  EPICS_BASE:=$(TOP)/$(EPICS_BASE_SRC_PATH)
EPICS_HOST_ARCH     (EPICS) in e3-base  EPICS_HOST_ARCH:=$(shell $(EPICS_BASE)/startup/EpicsHostArch.pl)


# e3-base/Makefile
INSTALL_LOCATION = $(ESS_EPICS_PATH)/base-_VERSION_
_VERSION_ is used when version is called in Makefile.
BASE_INSTALL_LOCATONS have all _VERSION_ base



# (EPICS) EPICS_BASE (WILL BE USED in the EPICS BUILDING SYSTEM)
# EPICS community, MUST use export
export EPICS_BASE:=$(TOP)/$(EPICS_BASE_NAME)


# (EPICS) EPICS_HOST_ARCH
# EPICS community, MUST use export 
export EPICS_HOST_ARCH := $(shell $(EPICS_BASE)/startup/EpicsHostArch.pl)





