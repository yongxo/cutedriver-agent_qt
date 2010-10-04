############################################################################
##
## Copyright (C) 2010 Nokia Corporation and/or its subsidiary(-ies).
## All rights reserved.
## Contact: Nokia Corporation (testabilitydriver@nokia.com)
##
## This file is part of Testability Driver Qt Agent
##
## If you have questions regarding the use of this file, please contact
## Nokia at testabilitydriver@nokia.com .
##
## This library is free software; you can redistribute it and/or
## modify it under the terms of the GNU Lesser General Public
## License version 2.1 as published by the Free Software Foundation
## and appearing in the file LICENSE.LGPL included in the packaging
## of this file.
##
############################################################################

TEMPLATE = subdirs

symbian: {	
	!CONFIG(no_mobility)  {
		CONFIG += mobility
	}
}
windows: {	
	!CONFIG(no_mobility)  {
		CONFIG += mobility
	}
}

CONFIG(maemo){
	!CONFIG(no_mobility)  {
		CONFIG += mobility
	}
}

CONFIG(mobility){
        SUBDIRS += mobilitysfwfixture
        SUBDIRS += contactfixture
}

SUBDIRS += signalfixture

SUBDIRS += tasfixture

SUBDIRS += fpsfixture

SUBDIRS += filefixture

SUBDIRS += popupfixture

symbian: {
#	SUBDIRS += utilfixture
}
CONFIG(maemo){
#SUBDIRS += duifixture #not supported anymore
}

SUBDIRS += tapfixture

SUBDIRS += dialogfixture

CONFIG  += ordered
