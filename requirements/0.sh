#!/bin/bas



function Title {
	clear
	echo     
	echo "		                                         "
	echo "				X0╔╦╗┬ ┬┌─┐  ╔╗ ┬  ┌─┐┌─┐┬┌─  ╔╦╗┬┌─┐┌─┐┬─┐0X"
	echo "				111║ ├─┤├┤   ╠╩╗│  ├─┤│  ├┴┐   ║ ││ ┬├┤ ├┬┘111"
	echo "				 v1╩ ┴ ┴└─┘  ╚═╝┴─┘┴ ┴└─┘┴ ┴   ╩ ┴└─┘└─┘┴└─11"
	echo "				--------◤M@d3 With ❤ : VirusZzWarning◥--------             "   
	echo "			     -----------------------------------------------------  "   
	echo "		              Privacy is dead, & socialmedia holds the smoking gun          " 
	echo "				----------------------------------------------  "   
	echo "				Twitter: https://www.twitter.com/hrisikesh_pal      "
	echo "			      Instagram: https://www.instagram.com/viruszzwarning      "  
	echo "			     -----------------------------------------------------  "   
	echo ""
	
}





if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
	Title
	echo "[0] Install and Configure Requirements"
	echo
	echo "================================="
	echo "[1] Install requirements""         |"
	echo "[2] Configure veriphone.io API"" |"
	echo "[3] Configure shodan.io API""       |"
	echo "[4] Configure ZoomEye API""      |"
	echo "[5] Back to menu""              |"
	echo "================================="
	echo
	echo
	read -p "[*] Choose an option: " opc1
		case $opc1 in
				1 )	echo
					if ! [ -d requirements/configuration ]
						then
							mkdir requirements/configuration
					fi
					echo
					echo "System Users: " 
					echo "_____________________"
					users
					echo
					read -p "Write from the users that appear above the one that DOES NOT HAVE root permissions: " user
					echo $user > requirements/configuration/.user_not_root.txt
					
					if ! [ -d requirements/results ]
						then
							mkdir requirements/results
					fi
					
					cd requirements

					sudo apt-get install curl -y
					sudo apt-get install wget -y
					sudo apt install git -y
					sudo apt-get install python3 -y
					sudo apt install python3.8 -y
					sudo apt install python-pip -y
					sudo apt install python3-pip -y
					sudo apt install python3-pip3 -y
					sudo python -m pip3 install --upgrade pip
					sudo apt-get install nmap -y
					sudo apt-get install whatweb -y
					sudo apt-get install whois -y
					sudo apt-get install -y netdiscover
					sudo pip install shodan
					sudo apt-get install xterm -y
					sudo apt install macchanger -y
					sudo pip3 install ignorant
					sudo apt-get install exiftool -y
					sudo apt install sslscan -y
					sudo apt install hakrawler -y
					sudo apt install naabu -y
					sudo apt install gedit -y
					sudo apt install wpscan -y
					sudo apt install firefox-esr -y
					sudo apt-get install libcanberra-gtk-module
					sudo pip3 install zoomeye
					sudo apt-get install tor torsocks
					sudo rm -r Cloudmare
					sudo rm -r blackbird
					sudo rm -r osgint
					sudo rm -r holehe
					sudo rm -r ZoomEye-python


					sudo git clone https://github.com/MrH0wl/Cloudmare.git && cd Cloudmare && chmod 777 Cloudmare.py

					cd ..
					
					sudo git clone https://github.com/knownsec/ZoomEye-python.git && cd ZoomEye-python && pip3 install -r requirements.txt && python3 setup.py install
					
					cd ..
					
					sudo git clone https://github.com/hippiiee/osgint.git && cd osgint && pip3 install -r requirements.txt
					
					cd ..

					sudo git clone https://github.com/p1ngul1n0/blackbird.git && cd blackbird && pip install -r requirements.txt

					cd ..
					
					sudo git clone https://github.com/megadose/holehe.git && cd holehe && python3 setup.py install

					cd ..
					cd ..
					;;
				2 )	echo
					read -p "[*] Paste below your API from https://veriphone.io: " API1
					echo $API1 > requirements/configuration/.api_phone.txt
					echo
					echo "List"
					;;
				3 )	echo
					read -p "[*] Paste the API of your Shodan.io account below: " API2
					shodan init $API2
					echo $API2 > requirements/configuration/.api_shodan.txt
					echo
					echo "List"
					;;
				4 )	echo
					read -p "[*] Paste the API of your ZoomEye.org account below: " API3
					zoomeye init -apikey $API3
					echo $API3 > requirements/configuration/.api_zoomeye.txt
					echo
					echo "List"
					;;
				5 )	bash the_black_tiger.sh
					;;
				* )	echo
					echo "$RRPLY It is not a valid option"
					sleep 1
					bash requirements/0.sh
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
				2 )	bash requirements/0.sh
					;;
				3 )	exit
					;;
				* )	echo
					echo "$RRPLY It is not a valid option"
		esac
fi
