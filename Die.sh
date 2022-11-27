#!/bin/bash -x

One=0
two=0
three=0
four=0
five=0
six=0

declare -A Diceroll

while (($One<10 && $two<10 && $three<10 && $four<10 && $five<10 && $six<10))
do
	dice_roll=$((RANDOM%6+1))
		case $dice_roll in
				1)
				echo 1
				((one++))
				;;
				2)
				echo 2
				((two++))
				;;
				3)
				echo 3
				((three++))
				;;
				4)
				echo 4
				((four++))
				;;
				5)
				echo 5
				((five++))
				;;
				6)
				echo 6
				((six++))
				;;
			esac
done
		echo "total one1:" $one
		echo "total two2:" $two
		echo "total three3:" $three
		echo "total four4:" $four
 		echo "total five5:" $five
		echo "total six6:" $six

		arr=($one,$two,$three,$four,$five,$six)
		echo ${arr[@]}

if (($one>$two & $one>$three & $one>$four & $one>$five & $one>$six))
then
	echo "1 comes maximum times"
fi
if (($one<$two & $one<$three & $one<$four & $one<$five & $one<$six))
then
        echo "1 comes minimum times"
fi
if (($two>$one & $two>$three & $two>$four & $two>$five & $two>$six))
then
        echo "2 comes maximum times"
fi
if (($two<$one & $two<$three & $two<$four & $two<$five & $two<$six))
then
        echo "2 comes miniimum times"
fi
if (($three>$one & $three>$two & $three>$four & $three>$five & $three>$six))
then
        echo "3 comes maximum times"
fi
if (($three<$one & $three<$two & $three<$four & $three<$five & $three<$six))
then
        echo "3 comes minimum times"
fi
if (($four>$one & $four>$two & $four>$three & $four>$five & $four>$six))
then
        echo "4 comes maximum times"
fi
if (($four<$one & $four<$two & $four<$three & $four<$five & $four<$six))
then
        echo "4 comes minimum times"
fi
if (($five>$one & $five>$two & $five>$three & $five>$four & $five>$six))
then
        echo "5 comes maximum times"
fi
if (($five<$one & $five<$two & $five<$four & $five<$four & $five<$six))
then
        echo "5 comes minimum times"
fi
if (($six>$one & $six>$two & $six>$three & $six>$four & $six>$five))
then
        echo "6 comes maximum times"
fi
if (($six<$one & $six<$two & $six<$three & $six<$four & $six<$five))
then
        echo "6 comes minimum times"
fi

 	Diceroll=$arr
        echo ${Diceroll[@]}
	echo ${!Diceroll[@]}
	echo ${#Diceroll[@]}

