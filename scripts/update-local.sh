# @Author: Dana Buehre <creaturesurvive>
# @Date:   20-03-2017 2:10:27
# @Email:  dbuehre@me.com
# @Filename: update-local.sh
# @Last modified by:   creaturesurvive
# @Last modified time: 02-10-2017 3:21:46
# @Copyright: Copyright © 2014-2017 CreatureSurvive


#!/bin/bash

#clean up
#find ./debs -type f -name '*.deb' -delete
#rm -r Packages.bz2

#debs
# dpkg-deb --bZlzma Projects/<projectname> <output folder>
# dpkg-deb -bZlzma ~/Projects/Theos/tweaks/motuumls/.theos/_ debs
# dpkg-deb -bZlzma ~/Projects/Theos/tweaks/fastdel/.theos/_ debs
# dpkg-deb -bZlzma ~/Projects/Theos/tweaks/flightradar24/.theos/_ debs
# dpkg-deb -bZlzma ~/Projects/Theos/tweaks/switcherRadii/.theos/_ debs
# dpkg-deb -bZlzma ~/Projects/Theos/tweaks/copyvideourl/.theos/_ debs



#packages
dpkg-scanpackages -m ./debs > Packages
bzip2 -fks Packages
