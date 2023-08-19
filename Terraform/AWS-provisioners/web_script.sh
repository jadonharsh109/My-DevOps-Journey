#!/bin/bash

YES=1
yum --help &> /dev/null
if [ $? -eq 0 ]
then
   echo "Running Script on CentOs..."
   echo "#################################"
   echo
      echo "Installing httpd wget unzip"
      sudo yum update -y
      sudo yum install httpd wget unzip -y > /dev/null
      sudo systemctl start httpd
      sudo systemctl enable httpd

      URL="https://www.tooplate.com/zip-templates/2109_the_card.zip"
      echo
      URLNAME="2109_the_card"
      echo "_______________________"

      echo "Downloading Website"
      sudo wget $URL > /dev/null
      echo "_______________________"

      echo "Unzipping..."
      sudo unzip $URLNAME.zip > /dev/null
      echo "_______________________"

      echo "Website published!!"
      sudo rm -rf /var/www/html/*
      sudo cp -r $URLNAME/* /var/www/html/
      echo "_______________________"

      echo "Services Restared"
      sudo systemctl restart httpd
      sudo rm -rf $URLNAME
      sudo rm -f $URLNAME.zip
      echo "_______________________"

# for ubuntu os
else
   echo "Running Script On UbuntuOS..."
   echo "#################################"
   echo

      echo "Installing Apache wget unzip"
      sudo apt update
      sudo apt install apache2 wget unzip -y > /dev/null

      URL="https://www.tooplate.com/zip-templates/2109_the_card.zip"
      echo
      URLNAME="2109_the_card"
      echo "_______________________"

      echo "Downloading Website"
      sudo wget $URL > /dev/null
      echo "_______________________"

      echo "Unzipping..."
      sudo unzip $URLNAME.zip > /dev/null
      echo "_______________________"

      echo "Website published!!"
      sudo rm -rf /var/www/html/*
      sudo cp -r $URLNAME/* /var/www/html/
      echo "_______________________"

      echo "Services Restared"
      sudo systemctl restart apache2
      sudo rm -rf $URLNAME
      sudo rm -f $URLNAME.zip
      echo "_______________________"
fi
