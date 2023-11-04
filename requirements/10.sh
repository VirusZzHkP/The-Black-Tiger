#!/bin/bash

# Grant root access to the X server
xhost +SI:localuser:root

# Set XDG_RUNTIME_DIR for the root user
export XDG_RUNTIME_DIR="/run/user/$(id -u root)"

# Disable the canberra-gtk-module
export GTK_MODULES=canberra-gtk-module

user=`cat requirements/configuration/.user_not_root.txt`

source requirements/0.sh

Title
echo "[10] Record Search"
echo
echo "==================================================================="
echo "[1] Search by Email""                                    |"
echo "-------------------------------------------------------------------"
echo "[2] Search by Username""                                 |"
echo "-------------------------------------------------------------------"
echo "[3] Search by License Plate""                           |"
echo "-------------------------------------------------------------------"
echo "[4] Search by First Name""                                |"
echo "-------------------------------------------------------------------"
echo "[5] Search by Last Name""                                 |"
echo "-------------------------------------------------------------------"
echo "[6] Search by Password""                                  |"
echo "-------------------------------------------------------------------"
echo "[7] Search by Domain Name""                              |"
echo "-------------------------------------------------------------------"
echo "[8] Search by IP Address""                               |"
echo "-------------------------------------------------------------------"
echo "[9] Search by Address""                                  |"
echo "-------------------------------------------------------------------"
echo "[10] Search by Birth Year""                               |"
echo "-------------------------------------------------------------------"
echo "[11] Back to menu""                                       |"
echo "==================================================================="
echo
read -p "Choose an option: " opc1
case $opc1 in
    1 ) echo
        read -p "[*] Enter the Email to search for: " search_email
        echo
        echo "######################################"
        echo "[☢] Email: $search_email"
        echo "######################################"
        echo
        su $user -c "firefox 'https://search.0t.rocks/records?emails=$search_email&exact=true'" 2>/dev/null
        ;;
    2 ) echo
        read -p "[*] Enter the Username to search for: " search_username
        echo
        echo "######################################"
        echo "[☢] Username: $search_username"
        echo "######################################"
        echo
        su $user -c "firefox 'https://search.0t.rocks/records?usernames=$search_username&exact=true'" 2>/dev/null
        ;;
    3 ) echo
        read -p "[*] Enter the License Plate to search for: " search_plate
        echo
        echo "######################################"
        echo "[☢] License Plate: $search_plate"
        echo "######################################"
        echo
        su $user -c "firefox 'https://search.0t.rocks/records?VRN=$search_plate&exact=true'" 2>/dev/null
        ;;
    4 ) echo
        read -p "[*] Enter the First Name to search for: " search_first_name
        echo
        echo "######################################"
        echo "[☢] First Name: $search_first_name"
        echo "######################################"
        echo
        su $user -c "firefox 'https://search.0t.rocks/records?firstName=$search_first_name&exact=true'" 2>/dev/null
        ;;
    5 ) echo
        read -p "[*] Enter the Last Name to search for: " search_last_name
        echo
        echo "######################################"
        echo "[☢] Last Name: $search_last_name"
        echo "######################################"
        echo
        su $user -c "firefox 'https://search.0t.rocks/records?lastName=$search_last_name&exact=true'" 2>/dev/null
        ;;
    6 ) echo
        read -p "[*] Enter the Password to search for: " search_password
        echo
        echo "######################################"
        echo "[☢] Password: $search_password"
        echo "######################################"
        echo
        su $user -c "firefox 'https://search.0t.rocks/records?passwords=$search_password&exact=true'" 2>/dev/null
        ;;
    7 ) echo
        read -p "[*] Enter the Domain Name to search for: " search_domain
        echo
        echo "######################################"
        echo "[☢] Domain Name: $search_domain"
        echo "######################################"
        echo
        su $user -c "firefox 'https://search.0t.rocks/records?domain=$search_domain&exact=true'" 2>/dev/null
        ;;
    8 ) echo
        read -p "[*] Enter the IP Address to search for (e.g., XXX.XXX.XXX.XXX): " search_ip
        echo
        echo "######################################"
        echo "[☢] IP Address: $search_ip"
        echo "######################################"
        echo
        su $user -c "firefox 'https://search.0t.rocks/records?ips=$search_ip&exact=true'" 2>/dev/null
        ;;
    9 ) echo
        read -p "[*] Enter the Address to search for: " search_address
        echo
        echo "######################################"
        echo "[☢] Address: $search_address"
        echo "######################################"
        echo
        su $user -c "firefox 'https://search.0t.rocks/records?address=$search_address'" 2>/dev/null
        ;;
    10 ) echo
        read -p "[*] Enter the Birth Year to search for: " search_birth_year
        echo
        echo "######################################"
        echo "[☢] Birth Year: $search_birth_year"
        echo "######################################"
        echo
        su $user -c "firefox 'https://search.0t.rocks/records?birthYear=$search_birth_year'" 2>/dev/null
        ;;
    11 ) bash the_black_tiger.sh
        ;;
    * ) echo
        echo "$RRPLY It is not a valid option"
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
    1 ) bash the_black_tiger.sh
        ;;
    2 ) bash requirements/10.sh
        ;;
    3 ) exit
        ;;
    * ) echo
        echo "$RRPLY It is not a valid option"
esac

