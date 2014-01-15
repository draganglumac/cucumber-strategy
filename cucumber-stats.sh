#!/usr/bin/env sh

stats()
{
	stats_in=("$@")
	
	statistic=""
	value=0
	automated=0
	manual=0

	total=${stats_in[0]}
	echo "Coverage stats for ${stats_in[1]}"
	for (( i = 2 ; i < ${#stats_in[@]} ; i++ )) do
		if [[ "$i % 2" -eq "0" ]]; then
			value=${stats_in[$i]}
		else
			statistic="${stats_in[$i]}"
			case $statistic in
				"passed")
					let "automated += $value"
					;;
				"failed")
					let "automated += $value"
					;;
				*)
					let "manual += $value"
					;;
			esac
		fi
	done
	
	let "automated = $automated * 100 / $total"
	let "manual = 100 - $automated"
	
	echo "total=$total, automated=$automated%, manual=$manual%"
	echo ""
}

cucumber "$@" > cukes.stats
cat cukes.stats

retval=$?
echo "retval=$retval"
echo ""

scenarios=`cat cukes.stats | grep -E '(^[0-9]+ scenarios)' | sed 's/(//g' | sed 's/)//g' | sed 's/,//g'`
steps=`cat cukes.stats | grep -E '(^[0-9]+ steps)' | sed 's/(//g' | sed 's/)//g' | sed 's/,//g'`

stats $scenarios
stats $steps

rm cukes.stats
