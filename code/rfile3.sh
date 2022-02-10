#! /usr/bin/bash
#rutwij-phonebook

file_name=rutwij_phonebook.txt
i=0
if ! [ -e "$file_name" ]; 
	then
    touch rutwij_phonebook.txt
fi
echo "enter choices:"
	echo "1 to add new phone contact"
	echo "2 to display all contacts"
	echo "3 to search contact"

read choice

case $choice in 

	1)
		echo "Create a new Record"       
	read -p "Enter First Name: " first_Name
	read -p "Enter Last Name: " last_Name    
	read -p "Enter phone number: " phone_Number  
echo "firstname:"$first_Name "last name:"$last_Name "phone number:"$phone_Number >> rutwij_phonebook.txt  ;;
		


		2)
			echo "displaying contacts"
	
	while read line 
do
	i=$[ $i +1 ]
    	echo "$i $line"
	done < $file_name ;;


		3)
		echo "Search a contact"
	read -p "Enter First or Last Name or phone number : " search
	contact_found=$(grep $search $file_name)
	if  [ "$contact_found" = "" ] 
	then
	echo "No Item found"
	else 
	 echo $contact_found

	fi
esac

