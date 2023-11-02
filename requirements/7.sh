#!/bin/bash
user=`cat requirements/configuration/.user_not_root.txt`

source requirements/0.sh

Title
echo "[7] Information about a Public IP"
echo
echo "=========================================================="
echo "[1] See which Internet Service Provider the IP belongs to""       |"
echo "----------------------------------------------------------"
echo "[2] Geolocation of the exact city of the IP""         |"
echo "----------------------------------------------------------"
echo "[3] Search for open ports and their services ""         |"
echo "----------------------------------------------------------"
echo "[4] Check the Status of an IP (See if it is down) ""   |"
echo "----------------------------------------------------------"
echo "[5] All (Company, Geolocation, Ports, State)     ""    |"
echo "----------------------------------------------------------"
echo "[6] Back to menu""                                       |"
echo "=========================================================="
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "Write the Public IP of the Target: " ip
				echo
				echo "########################"
				echo "[☢] IP: $ip"
				echo "########################"
				echo
				echo "[*] Internet Service Provider: " `curl -s "http://ip-api.com/line/$ip?fields=isp"`
				;;
			2 )	echo
				read -p "Write the Public IP of the Target: " ip
				echo
				echo "########################"
				echo "[☢] IP: $ip"
				echo "########################"
				echo
				echo "[*] Continent: " `curl -s "http://ip-api.com/line/$ip?fields=continent"`
				echo
				echo "[*] Country: " `curl -s "http://ip-api.com/line/$ip?fields=country"`
				echo
				echo "[*] City: " `curl -s "http://ip-api.com/line/$ip?fields=city"`
				echo
				echo "I recommend comparing the data obtained with that of https://nordvpn.com/ip-lookup"
				echo "since they have the most reliable and precise data about a Public IP"
				;;
			3 )	echo
				read -p "Write the Public IP of the Target: " ip
				read -p "Scan the 1000 most used ports (y) or the 65535 (n)? (y/n): " opc2
				echo
					if [ $opc2 = y ]
						then
							echo
							echo "########################"
							echo "[☢] IP: $ip"
							echo "########################"
							echo
							echo "1º Scanning using Naabu (No API): "
							echo "_________________________________"
							echo
							sudo naabu -host $ip -silent -json
							echo
							echo "2º Scanning using Shodan (API): "
							echo "_______________________________"
							echo
							sudo shodan host $ip
							echo
							echo "3º Port Scanning using ZoomEye (API): "
							echo "___________________________________________"
							echo
							sudo zoomeye ip $ip
							echo
							echo "4º Scanning using Shodan Web (No API): "
							echo "______________________________________"
							echo
							echo "Opening Browser...."
							sleep 2
							su $user -c "firefox 'https://www.shodan.io/host/$ip'"
							echo
							echo
							echo "/\/\/\/\/\ If you use a VPN, it is likely that Option 1 will have incorrect ports /\/\/\/\/"
						else
							echo
							echo "########################"
							echo "[☢] IP: $ip"
							echo "########################"
							echo
							echo "1º Scanning using Nmap /65535 ports\ (No API): "
							echo "________________________________________________"
							sudo nmap -sV -O -p "*" $ip
							echo
							echo "2º Scanning using Naabu (No API): "
							echo "_________________________________"
							echo
							sudo naabu -host $ip -silent -json
							echo
							echo "3º Scanning using Shodan (API): "
							echo "_______________________________"
							echo
							sudo shodan host $ip
							echo
							echo "4º Port Scanning using ZoomEye (API): "
							echo "___________________________________________"
							echo
							sudo zoomeye ip $ip
							echo
							echo "5º Scanning using Shodan Web (No API): "
							echo "______________________________________"
							echo
							echo "Opening Browser...."
							sleep 2
							su $user -c "firefox 'https://www.shodan.io/host/$ip'"
							echo
							echo
							echo "/\/\/\/\/\If you use a VPN, it is likely that Option 1 and 2 will give the wrong ports. /\/\/\/\/"
					fi
				;;
			4 )	echo
				read -p "Write the Public IP of the Target: " ip
				echo
				echo "########################"
				echo "[☢] IP: $ip"
				echo "########################"
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://check-host.net/check-ping?host=$ip'"
				;;
			5 )	Title
				echo "[7] Information about a Public IP"
				echo
				read -p "Write the Public IP of the Target: " ip
				read -p "Scan the 1000 most used ports (y) or the 65535 (n)? (y/n): " opc2
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Information about a Public IP (Geolocation, Internet Service Provider, Timezone, Proxy) (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "########################"
				echo "[☢] IP: $ip"
				echo "########################"
				echo
				echo "[*] Internet Service Provider: " `curl -s "http://ip-api.com/line/$ip?fields=isp"`
				echo
				echo "[*] Continent: " `curl -s "http://ip-api.com/line/$ip?fields=continent"`
				echo
				echo "[*] Country: " `curl -s "http://ip-api.com/line/$ip?fields=country"`
				echo
				echo "[*] City: " `curl -s "http://ip-api.com/line/$ip?fields=city"`
				echo
				echo "[*] Timezone: " `curl -s "http://ip-api.com/line/$ip?fields=timezone"`
				echo
				echo "[*] Proxy: " `curl -s "http://ip-api.com/line/$ip?fields=proxy"`
				echo
				echo "I recommend comparing the data obtained with that of https://nordvpn.com/ip-lookup"
				echo "since they have the most reliable and precise data about a Public IP"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Listing open ports and their services (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
					if [ $opc2 = y ]
						then
							echo
							echo "########################"
							echo "[☢] IP: $ip"
							echo "########################"
							echo
							echo "1º Scanning using Naabu (No API): "
							echo "_________________________________"
							echo
							sudo naabu -host $ip -silent -json
							echo
							echo "2º Scanning using Shodan (API): "
							echo "_______________________________"
							echo
							sudo shodan host $ip
							echo
							echo "3º Port Scanning using ZoomEye (API): "
							echo "___________________________________________"
							echo
							sudo zoomeye ip $ip
							echo
							echo "4º Scanning using Shodan Web (No API): "
							echo "______________________________________"
							echo
							echo "Opening the Browser (When the processes are completed)...."
							#su $user -c "firefox 'https://www.shodan.io/host/$ip'"
							echo
							echo
							echo "/\/\/\/\/\ If you use a VPN, it is likely that Option 1 will have incorrect ports /\/\/\/\/"
						else
							echo
							echo "########################"
							echo "[☢] IP: $ip"
							echo "########################"
							echo
							echo "1º Scanning using Nmap /65535 ports\ (No API): "
							echo "________________________________________________"
							sudo nmap -sV -O -p "*" $ip
							echo
							echo "2º Scanning using Naabu (No API): "
							echo "_________________________________"
							echo
							sudo naabu -host $ip -silent -json
							echo
							echo "3º Scanning using Shodan (API): "
							echo "_______________________________"
							echo
							sudo shodan host $ip
							echo
							echo "4º Port Scanning using ZoomEye (API): "
							echo "___________________________________________"
							echo
							sudo zoomeye ip $ip
							echo
							echo "5º Scanning using Shodan Web (No API): "
							echo "______________________________________"
							echo
							echo "Opening the Browser (When the processes are completed)...."
							#su $user -c "firefox 'https://www.shodan.io/host/$ip'"
							echo
							echo
							echo "/\/\/\/\/\If you use a VPN, it is likely that Option 1 and 2 will give the wrong ports. /\/\/\/\/"
					fi
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Check the Status of an IP (See if it is down) (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "########################"
				echo "[☢] IP: $ip"
				echo "########################"
				echo
				echo "Opening Browser and All Tabs...."
				sleep 2
				su $user -c "firefox 'https://www.shodan.io/host/$ip'" | su $user -c "firefox 'https://check-host.net/check-ping?host=$ip'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			6 )	bash the_black_tiger.sh
				;;
			* )	echo
				echo "$RRPLY It is not a valid option"
				sleep 1
				bash requisitos/7.sh
	esac
echo
echo
echo "#####################"
echo "[1] Back to menu"
echo "[2] Rerun"
echo "[3] Exit"
echo "#####################"
echo
read -p "Choose an option: " opc3
	case $opc3 in
			1 )	bash the_black_tiger.sh
				;;
			2 )	bash requisitos/7.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY It is not a valid option"
	esac
