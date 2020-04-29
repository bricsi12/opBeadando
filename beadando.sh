#!/bin/bash
clear
echo -e "\n"
echo -e "\t~~~<<<***MENETREND***>>>~~~"
case $1 in 
	busz)
		echo -e "\t------------Busz-----------";;
	vonat)
		echo -e "\t-----------Vonat-----------";;
esac
echo -e "\n"
now=$(date +"%T")
echo -e '\nPontos ido:  ' $now '\nHonnan: ' $2 '\nHová: '$3 
if [ $2 != $3 ]
then
mikor=cat | grep --color -i -w  $2  menetrend
mikor2=cat | grep --color -i -w  $3  menetrend
mikor3=$mikor $mikor2

else
echo "Hibás paraméterek!"
fi
echo $mikor3

