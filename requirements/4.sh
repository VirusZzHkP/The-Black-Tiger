#!/bin/bash
user=`cat requirements/configuration/.user_not_root.txt`

source requirements/0.sh

Title
echo "[4] Information from a Social Network"
echo
echo "========================================================="
echo "[1] Information + email of a GitHub account""         |"
echo "---------------------------------------------------------"
echo "[2] Information about an Instagram account""             |"
echo "---------------------------------------------------------"
echo "[3] Information about a TikTok account""                 |"
echo "---------------------------------------------------------"
echo "[4] Information from a Twitter account""                |"
echo "---------------------------------------------------------"
echo "[5] Information about a Twitch account""                 |"
echo "---------------------------------------------------------"
echo "[6] Information about a Telegram account""               |"
echo "---------------------------------------------------------"
echo "[7] All (GitHub,Instragram,TikTok,Twitter,Twitch,Tg)""   |"
echo "---------------------------------------------------------"
echo "[8] Back to menu""                                      |"
echo "========================================================="
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Enter the username of the Target : " username
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s cli.fyi/https://github.com/$username > requirements/results/Git-$username.txt
				echo "[*] Username: @$username"
				echo "[*] Name: " `cat requirements/results/Git-$username.txt | awk '/title/ {print $2}' | cut -c 2-`
				echo "[*] Description: " `cat requirements/results/Git-$username.txt | awk '/description/ {print}' | cut -c 25- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile picture: " `cat requirements/results/Git-$username.txt | awk '/url/&&/avatars/ {print $2}' | cut -c 2- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile URL: https://github.com/$username"
				echo
				sleep 2
				sudo python3 requirements/osgint/osgint.py -u $username
				echo
				echo "Opening Browser...."
				echo
				sleep 2
				su $user -c "firefox 'https://github.com/$username'"
				;;
			2 )	echo
				read -p "[*] Enter the username of the Target : " username
				echo
				echo "#################################"
				echo "[☢] UserName: @$username"
				echo "#################################"
				echo
				wget --wait=40 --limit-rate=40K -U Mozilla -bq https://www.picnob.com/profile/$username/ -O requirements/results/Ig-$username.txt >/dev/null
				sleep 6
				echo "[*] Username: @$username"
				echo "[*] Name: " `cat requirements/results/Ig-$username.txt | awk -F= '/"fullname">/ {print $2}' | cut -c 12- | rev | cut -c6- | rev`
				echo "[*] Description: " `cat requirements/results/Ig-$username.txt | awk '/div class="sum"/ {print}' | cut -c 18- | rev | cut -c7- | rev | awk 'NR==1{print}'`
				echo "[*] Posts: " `cat requirements/results/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==1{print}'`
				echo "[*] Followers: " `cat requirements/results/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==2{print}'`
				echo "[*] Following: " `cat requirements/results/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==3{print}'`
				echo "[*] Account Status: " `cat requirements/results/Ig-$username.txt | awk -F= '/This account/ {print}' | cut -c 18- | rev | cut -c7- | rev`
				echo
				echo "[*] Profile picture: " `cat requirements/results/Ig-$username.txt | awk '/href/&&/scontent/ {print $2}' | cut -c 7- | rev | cut -c10- | rev`
				echo
				echo "[*] Profile URL: https://www.instagram.com/$username"
				echo
				echo "Opening Browser...."
				echo
				sleep 2
				su $user -c "firefox 'https://www.picuki.com/profile/$username'" | su $user -c "firefox 'https://www.picnob.com/search/?q=$username'"
				;;
			3 )	echo
				read -p "[*] Enter the username of the Target : " username
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s https://urlebird.com/es/user/$username/ > requirements/results/TikTok-$username.txt
				echo "[*] Username: @$username"
				echo "[*] Name: " `cat requirements/results/TikTok-$username.txt | awk '/<h5 class="text-dark">/ {print}' | cut -c 23- | rev | cut -c6- | rev`
				echo "[*] Description: " `cat requirements/results/TikTok-$username.txt | awk '/<p>/ {print}' | cut -c 4- | rev | cut -c5- | rev`
				echo "[*] Followers: " `cat requirements/results/TikTok-$username.txt | awk '/followers/ {print $5}'`
				echo "[*] Following: " `cat requirements/results/TikTok-$username.txt | awk '/following/ {print $6}'`
				echo
				echo "[*] Profile picture: " `cat requirements/results/TikTok-$username.txt | awk '/"image"/ {print}' | cut -c 14- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile URL: https://www.tiktok.com/@$username"
				echo
				echo "Opening Browser...."
				echo
				sleep 2
				su $user -c "firefox 'https://urlebird.com/es/user/$username/'" | su $user -c "firefox 'https://www.tiktok.com/@$username'"
				;;
			4 )	echo
				read -p "[*] Enter the username of the Target : " username
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				wget --wait=40 --limit-rate=40K -U Mozilla -bq https://nitter.net/$username -O requirements/results/Twitter-$username.txt >/dev/null
				sleep 6
				# echo "[*] User + Name: " `cat requirements/results/Twitter-$username.txt | awk -F= '/and:title/ {print $3}' | cut -c 2- | rev | cut -c5- | rev`
				# echo "[*] Description: " `cat requirements/results/Twitter-$username.txt | awk -F= '/and:description/ {print $3}' | cut -c 2- | rev | cut -c5- | rev`
				# echo "[*] Joined in: " `cat requirements/results/Twitter-$username.txt | awk -F= '/profile-joindate/ {print $3}' | cut -c 2- | rev | cut -c13- | rev`
				# echo "[*] Tweets: " `cat requirements/results/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==1{print}'`
				# echo "[*] Following: " `cat requirements/results/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==2{print}'`
				# echo "[*] Followers: " `cat requirements/results/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==3{print}'`
				# echo "[*] Likes: " `cat requirements/results/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==4{print}'`
				# echo
				# echo "[*] Profile picture: " `cat requirements/results/Twitter-$username.txt | awk -F= '/twitter:image:src/ {print $3}' | cut -c 2- | rev | cut -c5- | rev`
				# echo
				# echo "[*] Profile URL: https://nitter.net/$username"
				# echo
				fetch_user_details() {
				url="https://nitter.net/$1"
				curl -s "$url" | pup 'meta[name="description"] attr{content}' | {
					read -r user_info
					read -r joined_info
					read -r tweets_info
					read -r following_info
					read -r followers_info
					echo "[*] User + Name: ${user_info%% on Twitter*}"
					echo "[*] Description: ${user_info##* - }"
					echo "[*] Joined in: ${joined_info##*Joined }"
					echo "[*] Tweets: ${tweets_info%% Tweets*}"
					echo "[*] Following: ${following_info%% Following*}"
					echo "[*] Followers: ${followers_info%% Followers*}"
				}
				echo "[*] Profile URL: https://nitter.net/$1"
				}
				# Check if the username is provided
				if [ -z "$username" ]; then
				echo "Please provide a username."
				exit 1
				fi

				echo "[☢] UserName: $username"
				echo "#################################"
				fetch_user_details "$username"
				echo
				echo "Opening Browser...."
				echo
				sleep 2
				su $user -c "firefox 'https://nitter.net/$username'"
				;;
			5 )	echo
				read -p "[*] Enter the username of the Target : " username
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s cli.fyi/https://www.twitch.tv/$username > requirements/results/Twitch-$username.txt
				echo "[*] Username: @$username"
				echo "[*] Name: " `cat requirements/results/Twitch-$username.txt | awk '/title/ {print}' | cut -c 19- | rev | cut -c3- | rev`
				echo "[*] Description: " `cat requirements/results/Twitch-$username.txt | awk '/description/ {print}' | cut -c 25- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile picture: " `cat requirements/results/Twitch-$username.txt | awk '/url/&&/static-cdn/ {print $2}' | cut -c 2- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile URL: https://www.twitch.tv/$username"
				echo
				echo "Opening Browser...."
				echo
				sleep 2
				su $user -c "firefox 'https://www.twitch.tv/$username'"
				;;
			6 )	echo
				read -p "[*] Enter the username of the Target : " username
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s cli.fyi/https://t.me/$username > requirements/results/Tg-$username.txt
				echo "[*] Username: @$username"
				echo "[*] Name: " `cat requirements/results/Tg-$username.txt | awk '/title/ {print}' | cut -c 19- | rev | cut -c3- | rev`
				echo "[*] Description: " `cat requirements/results/Tg-$username.txt | awk '/description/ {print}' | cut -c 25- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile picture: " `cat requirements/results/Tg-$username.txt | awk '/url/&&/cdn4/ {print $2}' | cut -c 2- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile URL: https://t.me/$username"
				echo
				echo "Opening Browser...."
				echo
				sleep 2
				su $user -c "firefox 'https://t.me/$username'"
				;;
			7 )	echo
				read -p "[*] Enter the username of the Target : " username
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Information about a GitHub account (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s cli.fyi/https://github.com/$username > requirements/results/Git-$username.txt
				echo "[*] Username: @$username"
				echo "[*] Name: " `cat requirements/results/Git-$username.txt | awk '/title/ {print $2}' | cut -c 2-`
				echo "[*] Description: " `cat requirements/results/Git-$username.txt | awk '/description/ {print}' | cut -c 25- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile picture: " `cat requirements/results/Git-$username.txt | awk '/url/&&/avatars/ {print $2}' | cut -c 2- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile URL: https://github.com/$username"
				echo
				sleep 2
				sudo python3 requirements/osgint/osgint.py -u $username
				echo
				echo "Opening the Browser...."
				echo
				sleep 2
				#su $user -c "firefox 'https://github.com/$username'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Information from an Instagram account (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				wget --wait=40 --limit-rate=40K -U Mozilla -bq https://www.picnob.com/profile/$username/ -O requirements/results/Ig-$username.txt >/dev/null
				sleep 6
				echo "[*] Username: @$username"
				echo "[*] Name: " `cat requirements/results/Ig-$username.txt | awk -F= '/"fullname">/ {print $2}' | cut -c 12- | rev | cut -c6- | rev`
				echo "[*] Description: " `cat requirements/results/Ig-$username.txt | awk '/div class="sum"/ {print}' | cut -c 18- | rev | cut -c7- | rev | awk 'NR==1{print}'`
				echo "[*] Posts: " `cat requirements/results/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==1{print}'`
				echo "[*] Followers: " `cat requirements/results/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==2{print}'`
				echo "[*] Following: " `cat requirements/results/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==3{print}'`
				echo "[*] Account Status (Empty = Public): " `cat requirements/results/Ig-$username.txt | awk -F= '/This account/ {print}' | cut -c 18- | rev | cut -c7- | rev`
				echo
				echo "[*] Profile picture: " `cat requirements/results/Ig-$username.txt | awk '/href/&&/scontent/ {print $2}' | cut -c 7- | rev | cut -c10- | rev`
				echo
				echo "[*] Profile URL: https://www.instagram.com/$username"
				echo
				sleep 2
				#su $user -c "firefox 'https://www.picuki.com/profile/$username'" | su $user -c "firefox 'https://www.picnob.com/search/?q=$username'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Information about a TikTok account  (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s https://urlebird.com/es/user/$username/ > requirements/results/TikTok-$username.txt
				echo "[*] Username: @$username"
				echo "[*] Name: " `cat requirements/results/TikTok-$username.txt | awk '/<h5 class="text-dark">/ {print}' | cut -c 23- | rev | cut -c6- | rev`
				echo "[*] Description: " `cat requirements/results/TikTok-$username.txt | awk '/<p>/ {print}' | cut -c 4- | rev | cut -c5- | rev`
				echo "[*] Followers: " `cat requirements/results/TikTok-$username.txt | awk '/followers/ {print $5}'`
				echo "[*] Following: " `cat requirements/results/TikTok-$username.txt | awk '/following/ {print $6}'`
				echo
				echo "[*] Profile picture: " `cat requirements/results/TikTok-$username.txt | awk '/"image"/ {print}' | cut -c 14- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile URL: https://www.tiktok.com/@$username"
				echo
				echo "Opening the Browser...."
				echo
				sleep 2
				#su $user -c "firefox 'https://urlebird.com/es/user/$username/'" | su $user -c "firefox 'https://www.tiktok.com/@$username'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Information about a Twitter account (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				wget --wait=40 --limit-rate=40K -U Mozilla -bq https://nitter.net/$username -O requirements/results/Twitter-$username.txt >/dev/null
				sleep 6
				echo "[*] User + Name: " `cat requirements/results/Twitter-$username.txt | awk -F= '/and:title/ {print $3}' | cut -c 2- | rev | cut -c5- | rev`
				echo "[*] Description: " `cat requirements/results/Twitter-$username.txt | awk -F= '/and:description/ {print $3}' | cut -c 2- | rev | cut -c5- | rev`
				echo "[*] Joined in: " `cat requirements/results/Twitter-$username.txt | awk -F= '/profile-joindate/ {print $3}' | cut -c 2- | rev | cut -c13- | rev`
				echo "[*] Tweets: " `cat requirements/results/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==1{print}'`
				echo "[*] Following: " `cat requirements/results/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==2{print}'`
				echo "[*] Followers: " `cat requirements/results/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==3{print}'`
				echo "[*] Likes: " `cat requirements/results/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==4{print}'`
				echo
				echo "[*] Profile picture: " `cat requirements/results/Twitter-$username.txt | awk -F= '/twitter:image:src/ {print $3}' | cut -c 2- | rev | cut -c5- | rev`
				echo
				echo "[*] Profile URL: https://nitter.net/$username"
				echo
				echo "Opening the Browser...."
				#su $user -c "firefox 'https://nitter.net/$username'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Information about a Twitch account (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s cli.fyi/https://www.twitch.tv/$username > requirements/results/Twitch-$username.txt
				echo "[*] Username: @$username"
				echo "[*] Name: " `cat requirements/results/Twitch-$username.txt | awk '/title/ {print}' | cut -c 19- | rev | cut -c3- | rev`
				echo "[*] Description: " `cat requirements/results/Twitch-$username.txt | awk '/description/ {print}' | cut -c 25- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile picture: " `cat requirements/results/Twitch-$username.txt | awk '/url/&&/static-cdn/ {print $2}' | cut -c 2- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile URL: https://www.twitch.tv/$username"
				echo
				echo "Opening the Browser...."
				sleep 2
				#su $user -c "firefox 'https://www.twitch.tv/$username'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Information about a Telegram account (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s cli.fyi/https://t.me/$username > requirements/results/Tg-$username.txt
				echo "[*] Username: @$username"
				echo "[*] Name: " `cat requirements/results/Tg-$username.txt | awk '/title/ {print}' | cut -c 19- | rev | cut -c3- | rev`
				echo "[*] Description: " `cat requirements/results/Tg-$username.txt | awk '/description/ {print}' | cut -c 25- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile picture: " `cat requirements/results/Tg-$username.txt | awk '/url/&&/cdn4/ {print $2}' | cut -c 2- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile URL: https://t.me/$username"
				echo
				echo "Opening the Browser...."
				su $user -c "firefox 'https://github.com/$username'" | su $user -c "firefox 'https://www.picuki.com/profile/$username'" | su $user -c "firefox 'https://www.picnob.com/search/?q=$username'" | su $user -c "firefox 'https://urlebird.com/es/user/$username/'" | su $user -c "firefox 'https://www.tiktok.com/@$username'" | su $user -c "firefox 'https://nitter.net/$username'" | su $user -c "firefox 'https://www.twitch.tv/$username'" | su $user -c "firefox 'https://t.me/$username'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			8 )	bash the_black_tiger.sh
				;;
			* )	echo
				echo "$RRPLY It's not a valid option."
				sleep 1
				bash requirements/4.sh
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
			2 )	bash requirements/4.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY It is not a valid option"
	esac
