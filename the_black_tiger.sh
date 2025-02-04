#!/bin/bash

source requirements/0.sh

Title
echo -e "\n\033[1;32m                               [0] ==>Install and Configure Requirements<==    🛠"
echo "                               [1] Information about a Website/Company         🔍"
echo "                               [2] Information of a Person                     🔍"
echo "                               [3] Information about a Nickname/Alias/Nickname 🔍"
echo "                               [4] Information from a Social Network           🔍"
echo "                               [5] Email Information                           🔍"
echo "                               [6] Telephone Number Information                🔍"
echo "                               [7] Public IP Information                       🔍"
echo "                               [8] YouTube Video/Channel Information           🔍"
echo "                               [9] Image Information                           🔍"
echo "                               [10] Record Search                              🔍"
echo "                               [11] Threat Intelligence                        🔍"
echo -e "\033[1;31m                               [99] ----------------> Exit"" <------------------\033[0m "
echo -e "\033[0;96m"
read -p "[*] Choose an option: " opc1
echo -e "\033[0"
	case $opc1 in
			0 )	bash requirements/0.sh
				;;
			1 )	bash requirements/1.sh
				;;
			2 )	bash requirements/2.sh
				;;
			3 )	bash requirements/3.sh
				;;
			4 )	bash requirements/4.sh
				;;
			5 )	bash requirements/5.sh
				;;    
			6 )	bash requirements/6.sh
				;;
			7 )	bash requirements/7.sh
				;;
			8 )	bash requirements/8.sh
				;;
			9 )	bash requirements/9.sh
				;;
			10 )    bash requirements/10.sh
				;;
			11 )    bash requirements/11.sh
				;;
			99 ) echo -e "\033[1;33mThanks for using The-Black-tiger!! M@d3 With Love - VirusZzWarning\033[0m"	
				exit
				;;
			* )	echo
				echo "$RRPLY It is not a valid option"
				bash the_black_tiger.sh
	esac
