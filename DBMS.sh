#!/bin/bash
menu1=$(zenity --list \
	--title="Choose the Bugs You Wish to View" \
	--column="manu" \
	"operations on DataBases" \
	"operations on Tables" | awk 'BEGIN{FS="|"} {print $1}')

case $menu1 in
	"operations on DataBases")
		menu2=$(zenity --list \
			--title="create new DataBase" \
			--column="operations" \
			"Create New DataBase" \
		    	"Rename DataBase" \
			"Delete DataBase" | awk 'BEGIN{FS="|"} {print $1}') 
		case $menu2 in
			"Create New DataBase")
				./createDB.sh	
				;;
			"Rename DataBase")
				./renameDB.sh
				;;
			"Delete DataBase")
				./deleteDB.sh
				;;
		esac
		;;
		
	"operations on Tables")
		menu2=$(zenity --list \
			--title="create new DataBase" \
			--column="operations" \
			"Create New Table" \
			"Insert Into Table" \
			"Update Table" \
			"Select From Table" \
			"Delete From Table" \
			"Drop Table" | awk 'BEGIN{FS="|"} {print $1}') 
		case $menu2 in
			"Create New Table")
				./createTable.sh	
				;;
			"Insert Into Table")
				./InsertIntoTable.sh
				;;
			"Update Table")
				./updateTable.sh
				;;
			"Select From Table")
				./selectFromTable.sh	
				;;
			"Delete From Table")
				./deleteFromTable.sh
				;;
			"Drop Table")
				./dropTable.sh
				;;
		esac
		;;
esac
