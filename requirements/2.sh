#!/bin/bash
user=`cat requirements/configuration/.user_not_root.txt`

source requirements/0.sh

Title
echo "[2] Information of a Person"
echo
echo "=============================================================="
echo "[1] Use Google Dorks""                                        |"
echo "--------------------------------------------------------------"
echo "[2] Use specific search engine""                              |"
echo "--------------------------------------------------------------"
echo "[3] Everything (Social Media, Websites, Images, Posts, etc.)""|"
echo "--------------------------------------------------------------"
echo "[4] Back to menu""                                            |"
echo "=============================================================="
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Write the name of the Objective (Ex: John): " name
				read -p "[*] Write the Middle Name of the Target (Ex: Vicente): " midname
				read -p "[*] Write the Last Name of the Target (Ex: Ibanez): " lname
				read -p "[*] Keyword /Optional/ (Ex: Phone, Email, Location, etc): " info
				echo
				echo "###########################################"
				echo "[☢] name: $name $midname $lname"
				echo "###########################################"
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22$name+$midname+$lname%22'" | su $user -c "firefox 'https://www.google.com/search?q=%22$name+$midname+$lname%22+$info'" 
				;;
			2 )	echo
				read -p "[*] Write the name of the Objective (Ex: John): " name
				read -p "[*] Write the Middle Name of the Target (Ex: Vicente): " midname
				read -p "[*] Write the Last Name of the Target (Ex: Ibanez): " lname
				echo
				echo "###########################################"
				echo "[☢] name: $name $midname $lname"
				echo "###########################################"
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://www.idcrawl.com/$name-$midname-$lname'"
				;;
			3 )	echo
				read -p "[*] Write the Name of the Objective (Ex: John): " name
				read -p "[*] Write the Middle Name of the Target (Ex: Vicente): " midname
				read -p "[*] Write the Last Name of the Target (Ex: Ibanez): " lname
				read -p "[*] Keyword /Optional/ (Ex: Phone, Email, Location, etc): " info
				echo
				echo "###########################################"
				echo "[☢] name: $name $midname $lname"
				echo "###########################################"
				echo
				echo
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
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22$name+$midname+$lname%22'" | su $user -c "firefox 'https://www.google.com/search?q=%22$name+$midname+$lname%22+$info'" | su $user -c "firefox 'https://www.idcrawl.com/$name-$midname-$lname'"
				;;
			4 )	bash the_black_tiger.sh
				;;
			* )	echo
				echo "$RRPLY It is not a valid option"
				sleep 1
				bash requirements/2.sh
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
			2 )	bash requirements/2.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY It is not a valid option"
	esac
