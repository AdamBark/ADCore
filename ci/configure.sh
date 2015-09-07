#!/bin/bash
# Configure ADCore in preparation for build

# Generate the configure/RELEASE.local and configure/CONFIG_SITE.linux-x86_64.Common
# with the details of where to find various external libraries.
echo "EPICS_BASE=/usr/lib/epics"             >> configure/RELEASE.local
echo "HDF5=/usr"                             >> configure/CONFIG_SITE.linux-x86_64.Common
echo "HDF5_LIB=/usr/lib"                     >> configure/CONFIG_SITE.linux-x86_64.Common
echo "HDF5_INCLUDE=-I/usr/include"           >> configure/CONFIG_SITE.linux-x86_64.Common
echo "XML2_INCLUDE=-I/usr/include/libxml2"   >> configure/CONFIG_SITE.linux-x86_64.Common
echo "BOOST=/usr"                            >> configure/CONFIG_SITE.linux-x86_64.Common
echo "BOOST_LIB=/usr/lib"                    >> configure/CONFIG_SITE.linux-x86_64.Common
echo "BOOST_INCLUDE=/usr/include"            >> configure/CONFIG_SITE.linux-x86_64.Common
echo "HOST_OPT=NO"                           >> configure/CONFIG_SITE.linux-x86_64.Common 
echo "USR_CXXFLAGS_Linux=--coverage"         >> configure/CONFIG_SITE.linux-x86_64.Common 
echo "USR_LDFLAGS_Linux=--coverage"          >> configure/CONFIG_SITE.linux-x86_64.Common 

echo "ASYN=`pwd`/external/asyn4-26"          >> configure/RELEASE.local

