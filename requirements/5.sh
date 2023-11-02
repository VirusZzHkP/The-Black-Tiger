#!/bin/bash
user=`cat requirements/configuration/.user_not_root.txt`

source requirements/0.sh

Title
echo "[5] Information from an Email"
echo
echo "=========================================================="
echo "[1] Information from an Email""                              |"
echo "----------------------------------------------------------"
echo "[2] Search in 121 social networks for an account with that Email""|"
echo "----------------------------------------------------------"
echo "[3] Check if you have GitHub and find out your Username""        |"
echo "----------------------------------------------------------"
echo "[4] Use Google Dorks (See where the Email has been published)""|"
echo "----------------------------------------------------------"
echo "[5] Verify if the Email exists""                         |"
echo "----------------------------------------------------------"
echo "[6] All (Info, Verificar Email, 121 redes, Google Dorks)""|"
echo "----------------------------------------------------------"
echo "[7] Back to menu""                                       |"
echo "=========================================================="
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Enter the Email of the Target [Gmail, Yahoo, Outlook]: " email
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				sudo curl -s emailrep.io/$email > requirements/results/Info-$email.txt
				cat requirements/results/Info-$email.txt
				echo
				echo
				echo "If the Option (suspicious: true) appears as (true) it is due to; We have not observed this email address on the Internet, it is a free provider and does not have profiles on major services such as LinkedIn, Facebook and iCloud. Lack of digital presence may simply indicate a new email address, but is often suspicious."
				echo
				echo "/\/\/\/\/\ Next, a website will open in which we will click on the magnifying glass and fill out the Captcha /\/\/\/\/"
				echo
				echo "Opening Browser...."
				sleep 3
				su $user -c "firefox 'https://epieos.com/?q=$email'"
				;;
			2 )	echo
				read -p "[*] Enter the Email of the Target [Gmail, Yahoo, Outlook]: " email
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				sudo holehe --only-used --no-clear $email
				;;
			3 )	echo
				read -p "[*] Enter the Email of the Target [Gmail, Yahoo, Outlook]: " email
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				sudo python3 requirements/osgint/osgint.py -e $email
				echo
				echo "In the event that you have returned a Username to us, within Section [4] Information of a Social Network"
				echo "We have the option [6] Information + email of a GitHub account which will return Account Information"
				;;
			4 )	echo
				read -p "[*] Enter the Email of the Target [Gmail, Yahoo, Outlook]: " email
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22$email%22'"
				;;
			5 )	echo
				echo "Enter the email address of the target below: "
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://verify-email.org'"
				;;
			6 )	echo
				read -p "[*] Enter the Email of the Target [Gmail, Yahoo, Outlook]: " email
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Information from an Email (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				sudo curl -s emailrep.io/$email requirements/results/Info-$email.txt
				cat requirements/results/Info-$email.txt
				echo
				echo "If the Option (suspicious: true) appears as (true) it is due to; We have not observed this email address on the Internet, it is a free provider and does not have profiles on major services such as LinkedIn, Facebook and iCloud. Lack of digital presence may simply indicate a new email address, but is often suspicious."
				echo
				echo "/\/\/\/\/\ Next, a website will open in which we will click on the magnifying glass and fill out the Captcha /\/\/\/\/"
				echo
				echo "Opening Browser...."
				sleep 2
				#su $user -c "firefox 'https://epieos.com/?q=$email'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Search in 121 social networks for an account with that Email (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				sudo holehe --only-used --no-clear $email
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Searching for GitHub account linked to that email (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				sudo python3 requirements/osgint/osgint.py -e $email
				echo
				echo "In the event that you have returned a Username to us, within Section [4] Information of a Social Network"
				echo "We have the option [6] Information + email of a GitHub account which will return Account Information"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Use Google Dorks (See where the Email has been published) (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				echo "Opening the Browser....."
				#su $user -c "firefox 'https://www.google.com/search?q=%22$email%22'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Verify if the Email exists (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				echo "Opening Browser and All Tabs...."
				sleep 2
				su $user -c "firefox 'https://epieos.com/?q=$email'" | su $user -c "firefox 'https://www.google.com/search?q=%22$email%22'" | su $user -c "firefox 'https://verify-email.org'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			7 )	bash the_black_tiger.sh
				;;
			* )	echo
				echo "$RRPLY It is not a valid option"
				sleep 1
				bash requirements/5.sh
	esac
echo
echo
echo "#####################"
echo "[1] Back to menu"
echo "[2] Volver a ejecutar"
echo "[3] Salir"
echo "#####################"
echo
read -p "Choose an option: " opc2
	case $opc2 in
			1 )	bash the_black_tiger.sh
				;;
			2 )	bash requirements/5.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY It is not a valid option"
	esac
