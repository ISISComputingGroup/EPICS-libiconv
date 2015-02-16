TOP = ../../extensions
include $(TOP)/configure/CONFIG

DIRS = 1-14

DIRS := $(wildcard $(DIRS))

include $(TOP)/configure/RULES_DIRS_INT
