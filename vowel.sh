while read line ; do

	ary=( $(echo ${line} | sed 's/\./ /g'))

	for index in $(seq 0 1 ${#ary[0]} ); do

		letter=( ${ary[0]:${index}:1} )

		if [ "${letter}" == "${prev}" ] ; then continue ; fi

		prev=( ${letter} )

		if echo ${letter} | grep [AEIOUaeiou] > /dev/null ; then

		echo -n ${ary[0]} | sed "s/\(.\)/\1\1/$((index+1))"

		echo .${ary[1]}

		fi

	done

done < name.txt
