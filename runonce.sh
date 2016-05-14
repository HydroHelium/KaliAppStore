#!/bin/bash
echo "deb http://security.kali.org/kali-security/ sana/updates main contrib non-free"  >> /etc/apt/sources.list
echo "deb-src http://security.kali.org/kali-security/ sana/updates main contrib non-free" >> /etc/apt/sources.list
echo "deb http://http.kali.org/kali sana main non-free contrib" >> /etc/apt/sources.list

echo "deb http://ftp.de.debian.org/debian jessie main" >> /etc/apt/sources.list

echo "deb http://security.debian.org/debian-security jessie/updates main" >> /etc/apt/sources.list

echo "deb http://httpredir.debian.org/debian jessie main" >> /etc/apt/sources.list

echo "deb-src http://httpredir.debian.org/debian jessie main" >> /etc/apt/sources.list

echo "deb http://httpredir.debian.org/debian jessie-updates main" >> /etc/apt/sources.list

echo "deb-src http://httpredir.debian.org/debian jessie-updates main" >> /etc/apt/sources.list

echo "deb http://security.debian.org/ jessie/updates main" >> /etc/apt/sources.list


echo "deb http://ftp.de.debian.org/debian wheezy main " >> /etc/apt/sources.list

