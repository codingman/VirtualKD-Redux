# -*- Makefile -*- Time-stamp: <03/10/12 20:35:49 ptr>
# $Id: bcc.mak,v 1.2 2008-02-26 14:59:43 bazis Exp $

SRCROOT := ..
COMPILER_NAME := bcc
#SEP := \\
OBJ_EXT := obj

ifndef INCLUDE
$(error Missing INCLUDE environment variable definition. Please see doc/README.borland \
for instructions about how to prepare Borland compiler to build STLport libraries.)
endif

STLPORT_INCLUDE_DIR = ../../stlport
include Makefile.inc
include ${SRCROOT}/Makefiles/top.mak


#DEFS += -D__BUILDING_STLPORT
INCLUDES += -I$(STLPORT_INCLUDE_DIR)

# options for build with boost support
ifdef STLP_BUILD_BOOST_PATH
INCLUDES += -I$(STLP_BUILD_BOOST_PATH)
endif

