# Script 1 : System Identity Report 
# Author : Avish Jhawar | Course: Open Source Software

# ---- Variables ---- 
STUDENT_NAME="Avish Jhawar"
SOFTWARE_CHOICE="Git"

# ---- System Info ----
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DISTRO=$(lsb_release -d -s)
CURRENT_DATE=$(date "+%Y-%m-%d %H:%M:%S")
LICENSE_MSG="The linux kernel and Ubuntu OS are licensed under GNU GPL v2."

# ---- Display ----
echo "============================="
echo "Open source Audit - $STUDENT_NAME"
echo " Software focus: $SOFTWARE_CHOICE"
echo "============================="
echo "OS Distro : $DISTRO"
echo "Kernel : $KERNEL"
echo "Date/Time : $CURRENT_DATE"
echo "User : $USER_NAME"
echo "Home Dir : $HOME_DIR"
echo "Uptime : $UPTIME"
echo "------------------------------"
echo "License : $LICENSE_MSG"
echo "=============================="
