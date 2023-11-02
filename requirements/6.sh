#!/bin/bash
api=`cat requirements/configuration/.api_phone.txt`
user=`cat requirements/configuration/.user_not_root.txt`

source requirements/0.sh

Title
echo "[6] Information about a Telephone Number"
echo
echo "============================================================="
echo "[1] See the Company and Country of the Telephone Number""        |"
echo "-------------------------------------------------------------"
echo "[2] See if you are registered on Instagram, Amazon or Snapchat"" |"
echo "-------------------------------------------------------------"
echo "[3] Use Google Dorks (See where the Phone has been published)""|"
echo "-------------------------------------------------------------"
echo "[4] Try to extract the real name of the owner of the Phone""  |"
echo "-------------------------------------------------------------"
echo "[5] Everything (Company, Networks, Google Dorks, Owner Name))""  |"
echo "-------------------------------------------------------------"
echo "[6] Back to menu""                                          |"
echo "============================================================="
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Write the country code of the Target Phone (Ex: 91): " code
				read -p "[*] Write the phone number of the Target (Ex: 9578463763): " phone
				echo
				echo "#############################"
				echo "[☢] Phone: +$code $phone"
				echo "#############################"
				echo
				curl -s "https://api.veriphone.io/v2/verify?phone=%2B$code-$phone&key=$api" > requirements/results/$phone.txt
				echo "[*] Valid: " `cat requirements/results/$phone.txt | awk -F',' '{print $3}' | cut -c 16-`
				echo "[*] Country: " `cat requirements/results/$phone.txt | awk -F',' '{print $6}' | cut -c 13- | rev | cut -c2- | rev`
				echo "[*] Company: " `cat requirements/results/$phone.txt | awk -F',' '{print $12}' | cut -c 13- | rev | cut -c3- | rev`
				;;
			2 )	echo
				read -p "[*] Write the country code of the Target Phone (Ex: 91): " code
				read -p "[*] Write the phone number of the Target (Ex: 9876549036): " phone
				echo
				echo "#############################"
				echo "[☢] Phone: +$code $phone"
				echo "#############################"
				echo
				sudo ignorant --only-used --no-clear $code $phone
				;;
			3 )	echo
				read -p "[*] Write the country code of the Target Phone (Ex: 91): " code
				read -p "[*] Write the phone number of the Target (Ex: 9876549036): " phone
				read -p "[*] Keyword /Optional/ (Ex: Name, Email, Location, etc.): " info
				echo
				echo "#############################"
				echo "[☢] Phone: +$code $phone"
				echo "#############################"
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22+$code$phone%22'" | su $user -c "firefox 'https://www.google.com/search?q=%22+$code$phone%22+$info'"
				;;
			4 )	echo
				echo "Next, write the phone number on the Web, choose the Country and fill out the captcha that appear when you click search"
				echo
				echo "Opening Browser...."
				sleep 3
				su $user -c "firefox 'https://www.truecaller.com'"
				;;
			5 )	echo
				read -p "[*] Write the country code of the Target Phone (Ex: 91): " code
				read -p "[*] Write the phone number of the Target (Ex: 9876549036): " phone
				read -p "[*] Keyword /Optional/ (Ex: Name, Email, Location, etc.): " info
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) See the Company and Country of the Telephone Number (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#############################"
				echo "[☢] Phone: +$code $phone"
				echo "#############################"
				echo
				curl -s "https://api.veriphone.io/v2/verify?phone=%2B$code-$phone&key=$api" > requirements/results/$phone.txt
				echo "[*] Valid: " `cat requirements/results/$phone.txt | awk -F',' '{print $3}' | cut -c 16-`
				echo "[*] Country: " `cat requirements/results/$phone.txt | awk -F',' '{print $6}' | cut -c 12-`
				echo "[*] Company: " `cat requirements/results/$phone.txt | awk -F',' '{print $12}' | cut -c 12-`
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) See if you are registered on Instagram, Amazon or Snapchat (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#############################"
				echo "[☢] Phone: +$code $phone"
				echo "#############################"
				echo
				sudo ignorant --only-used --no-clear $code $phone
				echo
				sleep 3
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Use Google Dorks (See where the Phone has been published) (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#############################"
				echo "[☢] Phone: +$code $phone"
				echo "#############################"
				echo
				echo "Opening the Browser...."
				#su $user -c "firefox 'https://www.google.com/search?q=%22+$code$phone%22'"
				#su $user -c "firefox 'https://www.google.com/search?q=%22+$code$phone%22+$info'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Try to extract the real name of the owner of the Phone (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#############################"
				echo "[☢] Phone: +$code $phone"
				echo "#############################"
				echo
				echo "Next, write the phone number on the Web, choose the Country and fill out the captha that appear when you click search"
				echo
				echo "Opening the Browser...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22+$code$phone%22'" | su $user -c "firefox 'https://www.google.com/search?q=%22+$code$phone%22+$info'" | su $user -c "firefox 'https://www.truecaller.com'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			6 )	bash the_black_tiger.sh
				;;
			* )	echo
				echo "$RRPLY It is not a valid option"
				sleep 1
				bash requirements/6.sh
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
			2 )	bash requirements/6.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY It is not a valid option"
	esac
