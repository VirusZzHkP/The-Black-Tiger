#!/bin/bash
user=`cat requirements/configuration/.user_not_root.txt`

source requirements/0.sh

Title
echo "[3] Information about a Nickname/Alias/Nickname"
echo
echo "======================================================================"
echo "[1] Search in 574 social networks for an account with that Nickname"" |"
echo "----------------------------------------------------------------------"
echo "[2] Use Google Dorks (See where that Nickname is published)""         |"
echo "----------------------------------------------------------------------"
echo "[3] Use specific search engine""                                      |"
echo "----------------------------------------------------------------------"
echo "[4] Everything (Social Media, Websites, Images, Posts, etc.)""        |"
echo "----------------------------------------------------------------------"
echo "[5] Back to menu""                                                    |"
echo "======================================================================"
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Enter the Nickname, Alias or Nickname of the Target  : " nick
				echo
				echo "################################"
				echo "[☢] Nickname: $nick"
				echo "################################"
				echo
				echo
				cd requirements/blackbird
				echo "==========================="
				echo "  Searching account $nick"
				echo "   in 574 Social Networks"
				echo "==========================="
				echo "------->""                  |"
				sleep 1
				echo "------------>""             |"
				sleep 1
				echo "------------------->""      |"
				sleep 1
				echo "------------------------->""|"
				echo "==========================="
				sudo python3 blackbird.py -u $nick
				cd ..
				cd ..
				;;
			2 )	echo
				read -p "[*] Enter the Nickname, Alias or Nickname of the Target  : " nick
				echo
				echo "################################"
				echo "[☢] Nickname: $nick"
				echo "################################"
				echo
				echo "Opening Browser...."
				sleep 2
				xdg-open "https://www.google.com/search?q=%22$nick%22"
				;;
			3 )	echo
				read -p "[*] Enter the Nickname, Alias or Nickname of the Target  : " nick
				echo
				echo "################################"
				echo "[☢] Nickname: $nick"
				echo "################################"
				echo
				echo
				echo " Opening Browser...."
				sleep 2
				xdg-open "https://www.idcrawl.com/u/$nick"
				;;
			4 )	echo
				read -p "[*] Enter the Nickname, Alias or Nickname of the Target  : " nick
				echo
				echo "################################"
				echo "[☢] Nickname: $nick"
				echo "################################"
				echo
				echo
				cd requirements/blackbird
				echo "==========================="
				echo " Gathering Information"
				echo "  and opening browsers"
				echo "==========================="
				echo "------->""                  |"
				sleep 1
				echo "------------>""             |"
				sleep 1
				echo "------------------->""      |"
				sleep 1
				echo "------------------------->""|"
				echo "==========================="
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Social networks with Nickname $nick (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				sudo python3 blackbird.py -u $nick
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Searching the Internet for information about $nick (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "################################"
				echo "[☢] Nickname: $nick"
				echo "################################"
				echo
				cd ..
				cd ..
				echo
				echo " Opening Browser...."
				sleep 2
				xdg-open "https://www.google.com/search?q=%22$nick%22" 
				xdg-open "https://www.idcrawl.com/u/$nick"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			5 )	bash the_black_tiger.sh
				;;
			* )	echo
				echo "$RRPLY It is not a valid option"
				sleep 1
				bash requirements/3.sh
	esac
echo
echo
echo "#####################"
echo "[1] Back to menu"
echo "[2] Rerun"
echo "[3] Exit"
echo "#####################"
echo
read -p "Choose an option: " opc2
	case $opc2 in
			1 )	bash the_black_tiger.sh
				;;
			2 )	bash requirements/3.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY It is not a valid option"
	esac
