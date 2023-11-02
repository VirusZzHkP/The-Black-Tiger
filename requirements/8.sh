#!/bin/bash
user=`cat requirements/configuration/.user_not_root.txt`

source requirements/0.sh

Title
echo "[8] YouTube Video/Channel Information"
echo
echo "======================================"
echo "[1] Information about a Video / Channel""  |"
echo "--------------------------------------"
echo "[2] Statistics of a Video / Channel"" |"
echo "--------------------------------------"
echo "[3] Everything (Information and Statistics)""|"
echo "--------------------------------------"
echo "[4] Back to menu""                   |"
echo "======================================"
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Paste the Link/URL of the Video or YouTube Channel: " link
				echo
				echo "################################################################"
				echo "[☢] URL: $link"
				echo "################################################################"
				echo
				echo "Opening Browser...."
                echo
				sleep 2
                su $user -c "firefox 'https://mattw.io/youtube-metadata/?url=$link&submit=true'"

				;;
			2 )	echo
				read -p "[*] Paste the Link/URL of the Video or YouTube Channel: " link
				echo
				echo "################################################################"
				echo "[☢] URL: $link"
				echo "################################################################"
				echo
				echo "Opening Browser...."
                echo
				sleep 2
                su $user -c "firefox 'https://mattw.io/youtube-metadata/bulk?url=$link&submit=true'"
				;;
			3 )	echo
				read -p "[*] Paste the Link/URL of the Video or YouTube Channel: " link
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Missing Information about a Video / YouTube Channel (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "################################################################"
				echo "[☢] URL: $link"
				echo "################################################################"
				echo
				echo "Opening the Browser (When the processes are completed)...."
                echo
				sleep 2
                #su $user -c "firefox 'https://mattw.io/youtube-metadata/?url=$link&submit=true'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Generating Statistics of a YouTube Video / Channel (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "################################################################"
				echo "[☢] URL: $link"
				echo "################################################################"
				echo
				echo "Abriendo Navegador y Todas las Pestañas...."
                echo
				sleep 2
                su $user -c "firefox 'https://mattw.io/youtube-metadata/?url=$link&submit=true'" | su $user -c "firefox 'https://mattw.io/youtube-metadata/bulk?url=$link&submit=true'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			4 )	bash the_black_tiger.sh
				;;
			* )	echo
				echo "$RRPLY It is not a valid option"
				sleep 1
				bash requirements/8.sh
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
			2 )	bash requirements/8.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY It is not a valid option"
	esac
