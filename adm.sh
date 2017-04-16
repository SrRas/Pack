#!/bin/bash

#Script de Administração
#Autor: SrRas
#Data 16/04/2017

while true
do

	clear
	menu="\n\\t1) Ver processos ativos
\\t2) Mostrar os files sistems da maquina
\\t3) Mostrar quanto tempo a maquina estar no ar
\\t4) Usuarios ativos na maquina
\\t5) Versão do kernel
\\t6) Lista de usuarios da maquina
\\t7) Sair"

	echo -e "$menu"
	echo "Escolha uma opção: "
	read op
	
		case $op in
				1) ps x aux ;;
				2) df ;;
				3) tempo=`uptime | cut -d:	-f4,5`
					echo "A máquina está no ar a $tempo" ;;
				4) users | tr \	\\n ;;
				5) cat /proc/version | cut -d:	-f3 ;;
				6) cat /etc/passwd | cut -d:	-f1 ;;
				7) exit ;;
				*) echo -e "Opcao invalida!\n"
				
				esac
				echo -e "\nPressione ENTER para voltar ao menu..\n"
			read tecla

done