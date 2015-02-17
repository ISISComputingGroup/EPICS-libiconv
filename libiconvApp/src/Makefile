TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#==================================================
# build a support library

LIBRARY_IOC += iconv

LIBICONV_TOP = $(TOP)/1-14

SRC_DIRS += $(LIBICONV_TOP)/lib
SRC_DIRS += $(LIBICONV_TOP)/libcharset/lib
SRC_DIRS += $(LIBICONV_TOP)/windows
 
INC += iconv.h

USR_CPPFLAGS += -DBUILDING_LIBICONV=1 -DBUILDING_LIBCHARSET=1 -DICONV_CONST=const

USR_CPPFLAGS_WIN32 += -DWIN32 
USR_INCLUDES += -I$(LIBICONV_TOP)/lib

# xxxRecord.h will be created from xxxRecord.dbd
#DBDINC += xxxRecord
# install libiconv.dbd into <top>/dbd
#DBD += libiconv.dbd

# specify all source files to be compiled and added to the library
iconv_SRCS += relocatable.c localcharset.c iconv.c
iconv_RCS += libiconv.rc

iconv_LIBS += $(EPICS_BASE_IOC_LIBS)

TARGETS += configmake.h uniwidth.h unitypes.h

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

configmake.h :
	@echo /* */ > $@

uniwidth.h : $(LIBICONV_TOP)/srclib/uniwidth.in.h
	$(CP) $< $@

unitypes.h : $(LIBICONV_TOP)/srclib/unitypes.in.h
	$(CP) $< $@

#----------------------------------------
#  ADD RULES AFTER THIS LINE
#install :
#	-$(MKDIR) $(INSTALL_LOCATION)/include/curl
#	$(CP) $(CURLSRC)/include/curl/*.h $(INSTALL_LOCATION)/include/curl


