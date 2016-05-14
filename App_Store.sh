#!/bin/bash

echo -e "
   ▄█   ▄█▄    ▄████████  ▄█        ▄█  
  ███ ▄███▀   ███    ███ ███       ███  
  ███▐██▀     ███    ███ ███       ███▌ 
 ▄█████▀      ███    ███ ███       ███▌ 
▀▀█████▄    ▀███████████ ███       ███▌ 
  ███▐██▄     ███    ███ ███       ███  
  ███ ▀███▄   ███    ███ ███▌    ▄ ███   
  ███   ▀█▀   ███    █▀  █████▄▄██ █▀                             
  ▀                      ▀                                        
   ▄████████    ▄███████▄    ▄███████▄ 
  ███    ███   ███    ███   ███    ███ 
  ███    ███   ███    ███   ███    ███ 
  ███    ███   ███    ███   ███    ███ 
▀███████████ ▀█████████▀  ▀█████████▀  
  ███    ███   ███          ███        
  ███    ███   ███          ███        
  ███    █▀   ▄████▀       ▄████▀      

   ▄████████     ███      ▄██████▄     ▄████████    ▄████████ 
  ███    ███ ▀█████████▄ ███    ███   ███    ███   ███    ███ 
  ███    █▀     ▀███▀▀██ ███    ███   ███    ███   ███    █▀  
  ███            ███   ▀ ███    ███  ▄███▄▄▄▄██▀  ▄███▄▄▄     
▀███████████     ███     ███    ███ ▀▀███▀▀▀▀▀   ▀▀███▀▀▀     
         ███     ███     ███    ███ ▀███████████   ███    █▄  
   ▄█    ███     ███     ███    ███   ███    ███   ███    ███ 
 ▄████████▀     ▄████▀    ▀██████▀    ███    ███   ██████████ 
                                      ███    ███                                                     
             
"

read -p "press any key to continue" input_cmd
echo -e "\n"
echo "1)  Chromium	"
echo "2)  Tor-Anonymous Browsing"
echo "3)  Skype"	
echo "4)  Team Viewer"
echo "5)  Adobe Flash Player"
echo "6)  Notepad++"
echo "7)  Sublime text"
echo "8)  Virtual Box"
echo "9)  Unetbootin- Live Usb Creator"
echo "10) Claws Mail Client"
echo "11) xChat-IRC"  
echo "12) LibreOffice"		     
echo "13) Audiocity-audio editor"
echo "14) Pinta-(Ms-Paint)"
echo "15) Audacious-Audio Player"
echo "16) Amarok(Music)player"	
echo "17) VLC video player"
echo "18) JAVA JDK"
echo "19) Inkscape-Graphics Editor"
echo "20) Printer driver"
echo "21) filezillia-ftp"
echo "22) video disk recorder"
echo "23) c torrent-client"
echo "24) video screen recorder"
echo "25) WordPress"
echo "26) Eclipse"
echo "27) Pidgin- IM"
echo "28) qbittorrent "
echo "29) uget downloader"
echo "30) keep password manager"
echo "31) gufw firewall"
echo "32) GIMP image editor"  
echo "33) backuppc"
echo "34) kate-editor"	
echo "35) deluge-torrent client"
echo "36) Google Chrome (unstable)"
echo "37) Rhythmbox- Music player"
echo "38) Dosbox"
echo "39) WPS office "
echo "40) Calligra office "
echo "41) Free office"
echo "42) Synaptic "
echo "43) Kmail "
echo "44) Kopete"
echo "45) Emacs"
echo "46) Internet explorer"
echo "47) Tuxpaint"
echo "48) kftpgrabber"
echo "49) Sonata"
echo "50) joe"


echo "to uninstall apps just add " - "(minus) infront of the app number"
echo -e "\n"
echo -e "Enter your selection \c"
read var
case "$var" in


1) apt-get -y install chromium
apt-get update
clear scr
echo " Chromium has been successfully installed" ;;


2) wget https://www.torproject.org/dist/torbrowser/5.0.6/tor-browser-linux32-5.0.6_en-US.tar.xz
echo "deb http://deb.torproject.org/torproject.org wheezy main" >> /etc/apt/sources.list
clear scr
echo "[*] Installing the keys...."
gpg --keyserver keys.gnupg.net --recv 886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -
echo "Ready!!"
clear scr
echo "[*] Updating Repositories...."
apt-get update
clear scr
echo "[*] Installing TOR"
apt-get install deb.torproject.org-keyring
apt-get install tor
echo "Ready!!"
echo "[*] Installing Vidalia"
apt-get install vidalia
echo "Ready!!"
echo "[*] Installing iceweasel-torbutton"
apt-get install iceweasel-torbutton
echo "Ready!!"
clear scr
echo "[*] Installing Privoxy"
apt-get install privoxy
echo "[*] Configuring privoxy"
echo "forward-socks5 / 127.0.0.1:9050 ." >> /etc/privoxy/config
echo "Ready!!"
service tor restart
service privoxy restart
clear scr
echo "Tor has been installed successfully." ;;


3)apt-get update 
 wget "http://download.skype.com/linux/skype-debian_4.3.0.37-1_i386.deb"
dpkg -i skype-debian_4.3.0.37-1_i386.deb
gdebi skype-debian_4.3.0.37-1_i386.deb 
clear scr
echo " skype has been successfully installed";;

4)apt-get update 
wget "http://download.teamviewer.com/download/teamviewer_i386.deb"
dpkg --add-architecture i386
apt-get install libjpeg62:i386
gdebi teamviewer_i386.deb
clear scr
echo " team viewer has been successfully installed";;

5)apt-get update 
wget "https://fpdownload.adobe.com/get/flashplayer/pdc/11.2.202.559/install_flash_player_11_linux.x86_64.tar.gz"
apt-get install flashplugin-nonfree
update -flashplugin-nonfree --install 
clear scr
echo " flash player has been successfully installed" ;;

6)apt-get update 
 wget "https://notepad-plus-plus.org/repository/6.x/6.8.8/npp.6.8.8.Installer.exe"
apt-get -y install wine
wine npp.6.8.8.Installer.exe 
clear scr
echo " notepad++ has been successfuly installed";;

7)apt-get update 
 wget "c758482.r82.cf2.rackcdn.com/sublime-text_build-3083_amd64.deb"
dpkg -i sublime-text_build-3083_amd64.deb
gdebi sublime-text_build-3083_amd64.deb
apt-get -y install sublime-text 
clear scr
echo " sublime-text  has been successfully installed";;

8)apt-get update 
wget "http://download.virtualbox.org/virtualbox/5.0.12/virtualbox-5.0_5.0.12-104815~Debian~wheezy_i386.deb"
dpkg -i virtualbox-5.0_5.0.12-104815~Debian~wheezy_i386.deb
gdebi virtualbox-5.0_5.0.12-104815~Debian~wheezy_i386.deb 
apt-get -y install virtualbox
clear scr
echo " virtualbox  has been successfully installed";;

9)apt-get update 
wget "http://ftp.de.debian.org/debian/pool/main/u/unetbootin/unetbootin_471-2_amd64.deb"
dpkg -i unetbootin_471-2_amd64.deb
gdebi unetbootin_471-2_amd64.deb 
apt-get -y install unetbootin
clear scr
echo " unetbootin has been successfully installed" ;;

10)apt-get update 
 wget "http://ftp.us.debian.org/debian/pool/main/c/claws-mail/claws-mail_3.11.1-3_amd64.deb"
dpkg -i claws-mail_3.11.1-3_amd64.deb
gdebi claws-mail_3.11.1-3_amd64.deb 
apt-get -y install claws-mail
clear scr
echo " Claws-mail has been successfully installed";;

11)apt-get update 
 wget "http://ftp.us.debian.org/debian/pool/main/x/xchat/xchat_2.8.8-7.3_i386.deb"
dpkg -i xchat_2.8.8-7.3_i386.deb
gdebi xchat_2.8.8-7.3_i386.deb
apt-get -y install xchat 
clear scr
echo "xchat has been successfully installed";;

12)apt-get update 
 wget "security.debian.org/debian-security/pool/updates/main/libr/libreoffice/libreoffice_4.3.3-2+deb8u2_i386.deb"
dpkg -i libreoffice_4.3.3-2+deb8u2_i386.deb
gdebi libreoffice_4.3.3-2+deb8u2_i386.deb 
apt-get -y install libreoffice 
clear scr
echo "Libreoffice has been successfully installed" ;;

13)apt-get update 
 wget "http://ftp.us.debian.org/debian/pool/main/a/audacity/audacity_2.0.6-2_i386.deb"
dpkg -i audacity_2.0.6-2_i386.deb
gdebi audacity_2.0.6-2_i386.deb 
apt-get -y install audacity
clear scr
echo "Audacity has been successfully installed ";;

14)apt-get update 
 wget "http://ftp.us.debian.org/debian/pool/main/p/pinta/pinta_1.3-3_all.deb "
dpkg -i pinta_1.3-3_all.deb 
gdebi pinta_1.3-3_all.deb  
apt-get -y install pinta
clear scr
echo "Pinta has been successfully installed";;

15)apt-get update 
wget "http://ftp.us.debian.org/debian/pool/main/a/audacious/audacious_3.5-2_amd64.deb "
dpkg -i audacious_3.5-2_amd64.deb 
gdebi audacious_3.5-2_amd64.deb 
apt-get -y install audacious
clear scr
echo "Audacious has been successfully installed";;

16)apt-get update 
wget " http://ftp.us.debian.org/debian/pool/main/a/amarok/amarok_2.8.0-2.1+b1_amd64.deb"
dpkg -i amarok_2.8.0-2.1+b1_amd64.deb
gdebi amarok_2.8.0-2.1+b1_amd64.deb
apt-get -y install amarok
clear scr
echo "Amarok  has been successfully installed";;

17)apt-get update 
apt-get -y install vlc
clear scr
echo "Vlc  has been successfully installed";;

18) apt-get update 
wget "http://ftp.us.debian.org/debian/pool/main/j/java-common/default-jdk_1.7-52_amd64.deb"
dpkg -i default-jdk_1.7-52_amd64.deb
gdebi default-jdk_1.7-52_amd64.deb 
apt-get -y install default-jdk 
clear scr
echo " Default-jdk has been successfully installed";;

19) apt-get update
apt-get -y install inkscape 
clear scr
echo " Inkscape  has been successfully installed";;

20)apt-get update 
 wget "http://ftp.us.debian.org/debian/pool/main/p/printing-metas/printer-driver-all_0.20140714_all.deb "
dpkg -i printer-driver-all_0.20140714_all.deb
gdebi printer-driver-all_0.20140714_all.deb 
apt-get -y install printer-driver-all 
clear scr
echo "Printer-drivers has been successfully installed";;

21)apt-get update 
 wget " http://ftp.us.debian.org/debian/pool/main/f/filezilla/filezilla_3.9.0.5-1_amd64.deb"
dpkg -i filezilla_3.9.0.5-1_amd64.deb
gdebi filezilla_3.9.0.5-1_amd64.deb
apt-get -y install filezilla 
clear scr
echo " Filezilla  has been successfully installed";;

22)apt-get update 
 wget "http://ftp.us.debian.org/debian/pool/main/v/vdr/vdr_2.0.3-3_amd64.deb "
dpkg -i vdr_2.0.3-3_amd64.deb
gdebi vdr_2.0.3-3_amd64.deb
apt-get -y install vdr 
clear scr
echo "Vdr has been successfully installed";;

23)apt-get update 
 wget "http://ftp.us.debian.org/debian/pool/main/c/ctorrent/ctorrent_1.3.4.dnh3.3.2-4_amd64.deb "
dpkg -i ctorrent_1.3.4.dnh3.3.2-4_amd64.deb 
gdebi ctorrent_1.3.4.dnh3.3.2-4_amd64.deb 
apt-get -y install ctorrent  
clear scr
echo " Ctorrent has been successfully installed";;

24)apt-get update 
 wget "http://ftp.us.debian.org/debian/pool/main/g/gtk-recordmydesktop/gtk-recordmydesktop_0.3.8-4.1_all.deb "
dpkg -i gtk-recordmydesktop_0.3.8-4.1_all.deb
gdebi gtk-recordmydesktop_0.3.8-4.1_all.deb 
apt-get -y install recordmydesktop
clear scr
echo "Recordmydesktop was successfully installed";;

25)apt-get update 
wget " http://ftp.us.debian.org/debian/pool/main/l/lekhonee-gnome/lekhonee-gnome_0.11-3_amd64.deb"
dpkg -i lekhonee-gnome_0.11-3_amd64.deb
gdebi lekhonee-gnome_0.11-3_amd64.deb 
apt-get -y install lekhonee-gnome
clear scr
echo "Lekhonee-gnome was successfully installed";;

26)apt-get update  
wget " http://ftp.us.debian.org/debian/pool/main/e/eclipse/eclipse_3.8.1-7_all.deb"
dpkg -i eclipse_3.8.1-7_all.deb
gdebi eclipse_3.8.1-7_all.deb 
apt-get -y install eclipse 
clear scr
echo "Eclipse was successfully installed";;

27)apt-get update 
wget "http://ftp.us.debian.org/debian/pool/main/p/pidgin/pidgin_2.10.11-1_amd64.deb "
dpkg -i pidgin_2.10.11-1_amd64.deb
gdebi pidgin_2.10.11-1_amd64.deb 
apt-get -y install pidgin 
clear scr
echo "Pidgin was successfully installed";;

28)apt-get update 
wget " http://ftp.us.debian.org/debian/pool/main/q/qbittorrent/qbittorrent_3.1.10-1_amd64.deb"
dpkg -i qbittorrent_3.1.10-1_amd64.deb
gdebi qbittorrent_3.1.10-1_amd64.deb
apt-get -y install qbittorrent 
clear scr
echo "Qbittorrent was successfully installed" ;;

29)apt-get update 
wget "http://ftp.us.debian.org/debian/pool/main/u/uget/uget_1.10.4-1_amd64.deb"
dpkg -i uget_1.10.4-1_amd64.deb
gdebi uget_1.10.4-1_amd64.deb 
apt-get -y install uget
clear scr
echo "Uget downloader was successfully installed";;

30)apt-get update 
wget " http://ftp.us.debian.org/debian/pool/main/k/keepass2/keepass2_2.28+dfsg-1_all.deb"
dpkg -i keepass2_2.28+dfsg-1_all.deb
gdebi keepass2_2.28+dfsg-1_all.deb 
apt-get -y install keepass2 
clear scr
echo "Keepass2 was successfully installed";;

31) apt-get update 
wget "http://ftp.us.debian.org/debian/pool/main/g/gui-ufw/gufw_12.10.0-1_all.deb "
dpkg -i gufw_12.10.0-1_all.deb 
gdebi gufw_12.10.0-1_all.deb 
apt-get -y install gufw 
clear scr
echo "Gu-firewall was successfully installed";;

32)
apt-get update 
wget "http://ftp.us.debian.org/debian/pool/main/g/gimp/gimp_2.8.14-1+b1_amd64.deb "
dpkg -i gimp_2.8.14-1+b1_amd64.deb
gdebi gimp_2.8.14-1+b1_amd64.deb
apt-get -y install gimp 
clear scr
echo "Gimp image editor was successfully installed";;

33)
apt-get update
apt-get -y install backuppc 
clear scr
echo "Backuppc was successfully installed";;

34)
apt-get update
apt-get -y install kate
clear scr
echo "Kate was successfully installed";;

35)
apt-get update 
apt-get -y install deluge
clear scr
echo "Deluge torrent was successfully installed";;

36)
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
gdebi '/root/google-chrome-stable_current_amd64.deb' 
clear scr
echo "Google Chrome is successfully installed" ;;

37) apt-get update
apt-get -y install rhythmbox
clear scr
echo "Rhythmbox is successfully installed" ;;

38)
apt-get update
apt-get install dosbox
clear scr
echo " Dosbox is successfully installed" ;;

39) 
wget "kdl.cc.ksosoft.com/wps-community/download/a20/wps-office_10.1.0.5503~a20p2_amd64.deb"
gdebi "wps-office_10.1.0.5503~a20p2_amd64.deb"
clear scr
echo " WPS successfully installed" ;;


40) apt-get install calligra
clear scr
echo " Calligra is successfully installed" ;;

41) wget http://www.softmaker.net/down/softmaker-freeoffice_703-01_i386.deb
gdebi softmaker-freeoffice_703-01_i386.deb
clear scr
echo " FreeOffice is successfuly installed" ;;

42) apt-get install synaptic
clear scr
echo " Synaptic is successfully installed" ;;

43) apt-get install kmail
clear scr
echo " Kmail is successfully installed" ;;

44) apt-get install kopete
clear scr
echo " kopete was successfully installed" ;;

45) apt-get install emacs
clear scr
echo " emacs was successfully installed" ;;

46) wine '/root/.wine/drive_c/Program Files/Internet Explorer/iexplore.exe' 
echo "internet explorer successfully installed" ;;

47) apt-get -y install tuxpaint
clear scr
echo "tuxpaint successfully installed" ;;

48) apt-get -y install kftpgrabber
clear scr
echo "kftpgrabber is successfully installed" ;;

49)
apt-get -y install sonata
clear scr
echo "sonata is successfully installed" ;;

50)
apt-get -y install joe
clear scr
echo " joe is successfully installed" ;;


-1) apt-get autoremove chromium 
echo " Chromium is successfully uninstalled" ;;

-2)  apt-get autoremove vidalia 
    apt-get autoremove deb.torproject.org-keyring 
    apt-get autoremove iceweasel-torbutton
    apt-get autoremove privoxy
echo " Tor is successfully uninstalled" ;;

-3) apt-get autoremove skype 
clear scr
echo "skype successfully uninstalled";;

-4) apt-get autoremove teamviewer 
clear scr
echo "teamviewer successfully uninstalled" ;;

-5) apt-get autoremove flashplugin-nonfree 
clear scr
echo "flashplugin successfully uninstalled" ;;

-6) rm -f -r .wine
clear scr
echo "notepad++ successfully uninstalled"  ;;

-7)  apt-get autoremove sublime-text 
clear scr
echo "sublime-text was successfully uninstalled" ;;

-8) apt-get autoremove virtualbox
clear scr
echo "virtual box was successfully uninstalled" ;;

-9) apt-get autoremove unetbootin 
clear scr
echo "unetbootin was successfully uninstalled" ;;

-10) apt-get autoremove claws-mail 
clear scr
echo " claws-mail was successfully uninstalled" ;;

-11) apt-get autoremove xchat
clear scr
echo "xchat was successfully unistalled" ;;

-12) apt-get autoremove libreoffice
clear scr
echo "libreoffice was successfully uninstalled" ;;

-13) apt-get autoremove audacity
clear scr
echo "audacity was successfully uninstalled" ;;

-14) apt-get autoremove pinta
clear scr
echo "pinta was successfully uninstalled" ;;

-15) apt-get autoremove audacious 
clear scr
echo "audacious was successfully uninstalled " ;;

-16) apt-get autoremove amarok 
clear scr
echo "amarok was successfully uninstalled" ;;

-17) apt-get autoremove vlc 
clear scr
echo " vlc was successfully uninstalled" ;;

-18) apt-get autoremove default-jdk 
clear scr
echo " default-jdk was successfully uninstalled" ;;

-19) apt-get autoremove inkscape 
clear scr
echo " inkscape was successfully uninstalled " ;;

-20) apt-get autoremove printer-driver-all 
clear scr
echo " printer-driver-all  was successfully uninstalled" ;;

-21) apt-get autoremove filezilla
clear scr
echo " filezilla  was successfully uninstalled" ;;

-22) apt-get autoremove vdr
clear scr
echo " vdr  was successfully uninstalled" ;;

-23) apt-get autoremove ctorrent
clear scr
echo " ctorrent  was successfully uninstalled" ;;

-24) apt-get autoremove recordmydesktop
clear scr
echo " recordmydesktop  was successfully uninstalled" ;;

-25) apt-get autoremove lekhonee-gnome
clear scr
echo " wordpress was successfully uninstalled" ;;

-26) apt-get autoremove eclipse
clear scr
echo " eclipse  was successfully uninstalled" ;;

-27) apt-get autoremove pidgin
clear scr
echo " pidgin was successfully uninstalled" ;;

-28) apt-get autoremove qbittorrent
clear scr
echo " printer-driver-all  was successfully uninstalled" ;;

-29) apt-get autoremove uget
clear scr
echo " uget  was successfully uninstalled" ;;

-30) apt-get autoremove keepass2
clear scr
echo " keepass2  was successfully uninstalled" ;;

-31) apt-get autoremove gufw
clear scr
echo " gufw  was successfully uninstalled" ;;

-32) apt-get autoremove gimp
clear scr
echo " gimp  was successfully uninstalled" ;;

-33) apt-get autoremove backuppc
clear scr
echo " backuppc  was successfully uninstalled" ;;

-34) apt-get autoremove kate
clear scr
echo " kate  was successfully uninstalled" ;;

-35) apt-get autoremove deluge
clear scr
echo " deluge  was successfully uninstalled" ;;

-36) apt-get remove google-chrome-stable
clear scr
echo " Google chrome is successfully uninstalled" ;;

-37) apt-getremove rhythmbox 
clear scr
echo " Rhythmbox is successfully uninstalled";;

-38) apt-get remove dosbox 
clear scr
echo "Dosbox is successfully uninstalled" ;;


-39) apt-get remove wps-office 
clear scr
echo "Wps-office is successfully uninstalled" ;;

-40) apt-get remove calligra
clear scr
echo " Calligra successfully uninstalled" ;;


-41) apt-get remove softmaker-freeoffice
clear scr
echo " softmaker-freeoffice is successfully uninstalled";;

-42) apt-get remove synaptic
clear scr
echo "Synaptic is successfully uninstalled" ;;

-43) apt-get remove kmail
clear scr
echo " Kmail is successfully uninstalled" ;;

-44) apt-get remove kopete 
clear scr
echo "kopete is successfully uninstalled" ;;

-45) apt-get remove emacs
clear scr
echo "emacs was successfully uninstalled";;

-46) rm -f -r .wine
clear scr
echo " Internet explorer is successfully uninstalled" ;;

-47)apt-get remove tuxpaint
clear scr
echo "tuxpaint is successfully removed" ;;


-48) apt-get remove kftpgrabber
clear scr
echo "kftpgrabber is successfully removed" ;;



-49) apt-get remove sonata
clear scr
echo "sonata is successfully removed" ;;

-50)apt-get remove joe
clear scr
echo "joe is successfully remove" ;;

esac
echo -e "Hit enter to continue \c"
read input




