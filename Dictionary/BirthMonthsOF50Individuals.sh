#!/bin/bash -x

echo "-------------------------------Welcome----------------------------------"
echo "checking Birth month of 50 individuals..."
sleep 2

declare -A month

j=0
for ((i=0; i<=50; i++))
do
	a=$(((RANDOM%12) + 1))
	month[$i]="$a"

	case $a in
			"1")
				p=$(($p+1))
				;;

			"2")
				q=$(($q+1))
				;;

			"3")
				r=$(($r+1))
				;;

			"4")
				s=$(($s+1))
				;;

			"5")
				t=$(($t+1))
				;;

			"6")
				u=$(($u+1))
				;;

			"7")
				v=$(($v+1))
				;;

			"8")
				w=$(($w+1))
				;;

			"9")
				x=$(($x+1))
				;;

			"10")
				y=$(($y+1))
				;;

			"11")
				z=$(($z+1))
				;;

			"12")
				e=$(($e+1))
				;;
		esac
done

echo ${month[@]}
#printf '%s\n'  "${month[@]}"|sort -n

echo "$p individuls have birth month jan"
echo "$q individuls have birth month feb"
echo "$r individuls have birth month mar"
echo "$s individuls have birth month apr"
echo "$t individuls have birth month may"
echo "$u individuls have birth month jun"
echo "$v individuls have birth month jul"
echo "$w individuls have birth month aug"
echo "$x individuls have birth month sep"
echo "$y individuls have birth month oct"
echo "$z individuls have birth month nov"
echo "$e individuls have birth month dec"

declare -A count

count[jan]="$p"
count[feb]="$q"
count[mar]="$r"
count[apr]="$s"
count[may]="$t"
count[jun]="$u"
count[jul]="$v"
count[aug]="$w"
count[sep]="$x"
count[oct]="$y"
count[nov]="$z"
count[dec]="$e"

echo -e "Storing all in dictionary=\c"
echo ${count[@]}
