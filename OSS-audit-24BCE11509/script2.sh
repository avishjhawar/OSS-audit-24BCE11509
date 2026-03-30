#Script 2 :  Git Installation Checker
# Author : Avish Jhawar

echo "============================="
echo "   Git Installation Checker "
echo "============================="

# Checking if git exists
if command -v git &> /dev/null
then 
        echo "Git is installed"
        echo "Version $(git --version)"
else 
        echo "Git is not installed"
fi
echo "==============================="