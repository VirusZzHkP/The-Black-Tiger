#!/bin/bash
user=`cat requirements/configuration/.user_not_root.txt`

source requirements/0.sh

Title
echo "[9] Information about an Image"
echo
echo "=========================================="
echo "[1] Extract Image Metadata""              |"
echo "------------------------------------------"
echo "[2] Google Image Search""                 |"
echo "------------------------------------------"
echo "[3] Use specific search engine""          |"
echo "------------------------------------------"
echo "[4] Enlarge an Image with x4 quality""    |"
echo "------------------------------------------"
echo "[5] All (Medata, Search Engines, Tools)"" |"
echo "------------------------------------------"
echo "[6] Back to menu""                        |"
echo "=========================================="
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Write the file name with its path (/home/kali/Desktop/Test.png): " imagen
				echo
				echo "################################################################"
				echo "[☢] Image: $imagen"
				echo "################################################################"
				echo
				primera=`echo $imagen | head -c 1`
				coma="'"
				if [ $primera = $coma ]
					then
						imagen=`echo $imagen | cut -c 2- | rev | cut -c2- | rev`
				fi
				sudo exiftool -v -s -G $imagen
				;;
			2 )	echo
				echo "Then when the Website will open, drop the Image and the search will begin"
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/imghp?hl=en&ogbl='"
				echo
				;;
			3 )	echo
				echo "Then when the Website will open, drop the Image and the search will begin"
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://tineye.com'"
				echo
				;;
			4 )	echo
				echo "Next, when the Web Page will open, click on the button (Drag or Drop), select the Image and press (Start All)"
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://imgupscaler.com/'"
				echo
				;;
			5 )	echo
				read -p "[*] Write the file name with its path (/home/kali/Desktop/Test.png): " imagen
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Extracting Metadata from the Image (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "################################################################"
				echo "[☢] Image: $imagen"
				echo "################################################################"
				echo
				primera=`echo $imagen | head -c 1`
				coma="'"
				if [ $primera = $coma ]
					then
						imagen=`echo $imagen | cut -c 2- | rev | cut -c2- | rev`
				fi
				sudo exiftool -v -s -G $imagen
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Search the Image through Google to use its neural network and use a specific Search Engine(x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "################################################################"
				echo "[☢] Image: $imagen"
				echo "################################################################"
				echo
				echo "Then when the Website will open, drop the Image and the search will begin"
				echo
				echo "Opening Browser and All Tabs...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/imghp?hl=en&ogbl='" | su $user -c "firefox 'https://tineye.com'" | su $user -c "firefox 'https://imgupscaler.com/'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			6 )	bash the_black_tiger.sh
				;;
			* )	echo
				echo "$RRPLY It is not a valid option"
				sleep 2
				bash requirements/9.sh
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
			2 )	bash requirements/9.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY It is not a valid option"
	esac
