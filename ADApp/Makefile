TOP = ..
include $(TOP)/configure/CONFIG

DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard *db*))
DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard *Db*))
DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard op*))

DIRS += ADSrc

DIRS += pluginSrc
pluginSrc_DEPEND_DIRS += ADSrc netCDFSrc nexusSrc tiffSupport

ifeq ($(EPICS_V4_PLUGIN), YES)
  DIRS += ntndArrayConverterSrc
  DIRS += pvaDriverSrc
  pvaDriverSrc_DEPEND_DIRS += pluginSrc
  pvaDriverSrc_DEPEND_DIRS += ntndArrayConverterSrc
  pluginSrc_DEPEND_DIRS += ntndArrayConverterSrc
endif

DIRS += netCDFSrc

DIRS += nexusSrc
#nexusSrc_DEPEND_DIRS += ADBinaries

DIRS += tiffSupport

DIRS += pluginTests
pluginTests_DEPEND_DIRS += ADSrc pluginSrc

include $(TOP)/configure/RULES_DIRS

