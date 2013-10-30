#!/bin/bash
# alternative MMAX2 startup script by Niels Ott <nott@sfs.uni-tuebingen.de>
# May 2013
#
# automatically handles class path, working directory and command line arguments

scriptname=$(readlink -f "$0")
localdir=$(dirname "$scriptname")
classpath=$(find "$localdir/libs" -iname "*.jar" | tr '\n' ':')
exec java -cp "$classpath" org.eml.MMAX2.core.MMAX2 $*