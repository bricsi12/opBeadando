#!/bin/bash
magenta=`tput setaf 5`
red=`tput setaf 1`
bcground=`tput setab 7`
bcground2=`tput setab 1`
reset=`tput sgr0`

echo "${bcground2}Try -h for help.${reset}"

while getopts 'hasmd' opt;
do

echo  "____________________________"
echo  "                            "
echo  "        S I M P L E         "
echo  "    C A L C U L A T O R     "
echo  "____________________________"

case "$opt" in

	h)echo "-a ==> ADDITION"
	  echo "-s ==> SUBTRACTION"
	  echo "-m ==> MULTIPLICATION"
	  echo "-d ==> DIVISION"
	;;
	a)echo "${red}~~ADDITION~~${reset}"
	  echo  1st number:
	  read num1
	  echo 2nd number:
	  read num2
	  result=`expr $num1 + $num2`
	  echo "${magenta}${bcground}$num1 + ${magenta}${bcground}$num2 = ${bcground}$result${reset}"
	;;
	s)echo "${red}~~SUBTRACTION~~${reset}"
	  echo 1st number:
          read num1
          echo 2nd number:
          read num2
          result=`expr $num1 - $num2`
	  echo "${magenta}${bcground}$num1 - ${magenta}${bcground}$num2 = ${bcground}$result${reset}"
	;;
	m)echo "${red}~~MULTIPLICATION~~${reset}"
	  echo 1st number:
          read num1
          echo 2nd number:
          read num2
          result=`expr $num1 \* $num2`
	  echo "${magenta}${bcground}$num1 * ${magenta}${bcground}$num2 = ${bcground}$result${reset}"
	;;
	d)echo "${red}~~DIVISION~~${reset}"
	  echo 1st number:
          read num1
          echo 2nd number:
          read num2
          result=`expr $num1 / $num2`
	  echo "${magenta}${bcground}$num1 / ${magenta}${bcground}$num2 = ${bcground}$result${reset}"
	;;
	
esac

done

