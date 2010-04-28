#bash lib.

########################
#      Template        #
########################

################################################
# Param:    <Name>
# Describe: <Describe>
################################################

################################################
# Param:    WGET
# Describe: replace orginal wget
################################################
export WGET="$(which wget) -c --tries=3"

################################################
# Param:    PLAT_NAME
# Value:    i386/x86_64
# Describe: Get arch info
################################################
case $(getconf LONG_BIT) in
"32")
    export PLAT_NAME="i386"
;;
"64")
    export PLAT_NAME="x86_64"
;;
esac
