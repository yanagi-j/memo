#!/bin/sh
#1)make link sample
#ln -s Testshell.sh Testshell_01.sh
#ln -s Testshell.sh Testshell_02.sh
#ln -s Testshell.sh Testshell_A.sh
#ln -s Testshell.sh Testshell_B.sh
#ln -s Testshell.sh Testshell_C.sh
#ln -s Testshell.sh Testshell_D.sh

MYFILE=`basename $0|sed -e "s/\.sh//"`
MYWORD=`echo ${MYFILE}|wc -c`
CUTC=`expr ${MYWORD} - 2`
MEN=`echo ${MYFILE} |cut -c${CUTC}-`

case ${MEN} in
	"01")
		echo "１面用"
		;;
	"02")
		echo "２面用"
		;;
	"_A")
		echo "A面用"
		;;
	"_B")
		echo "B面用"
		;;
	"_C")
		echo "C面用"
		;;
	"_D")
		echo "D面用"
		;;
	*)
		echo "本番用"
		;;
esac

