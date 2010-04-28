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

################################################
# Param:    USERS
# Describe: Get all user id
################################################
export USERS=$(cat /etc/passwd | grep bash | cut -d ":" -f 1)

################################################
# Param:    GET_USER_HOME
# Describe: Get user's home directory
# Example: GET_USER_HOME userid
# Return: User_Home
################################################
function GET_USER_HOME
{
    export User_Home=$(grep $1 /etc/passwd | cut -d ":" -f 6)
}



