#!/bin/sh
#Madeline Huberth, 10/16/16
#this makes the files block{1..12}.coll.txt for Max to read in
#to run:
# >> ./make_experiment_blocks.sh blockorder_VERSION.csv deviants.csv pairfolder
# for example: ./make_experiment_blocks.sh blockorder_11.csv deviants.csv MW_TD
#gshuf is the mac version of the command shuf
# use brew install coreutils to get gshuf on a mac

#The coll file orders the information in the following left to right columns:
#trial number
#score, 
#which keyboard first (odd/even), 
#which phrase of keyboard 1 is the deviant in (1/2), 
#which phrase of keyboard 2 is the deviant in (1/2), 
#which note for keyboard 1 is the deviant in (4/5), 
#which note for keyboard 2 is the deviant in (4/5), 
#does the deviant descend or ascend for keyboard 1 (1/2), 
#does the deviant descend or ascend for keyboard 2 (1/2)
#trigger code identifying the trial

BLOCKORDER=$1
DEVIANTS=$2
[ ! -f $BLOCKORDER ] && { echo "$BLOCKORDER file not found"; exit 99; }
[ ! -f $DEVIANTS ] && { echo "$DEVIANTS file not found"; exit 99; }

#make block files
for((i = 1; i <= 12; i++)); do
	#name the block
	filename="$3/block$i.coll.txt"
	#if the block trial files are already made, quit
	[ -f $filename ] && { echo "$filename already made"; exit 99; }
	#make block file
   	touch "$filename"
	#read the score name and the "which keyboard first" info
	block=$(sed -n "${i}p" "$BLOCKORDER")
	
	#read deviant file, append block info to beginning of each line, and put
	#pitch direction of deviant note at end of line
	while read line
	do
		updown1=$(( ( RANDOM % 2 )  + 1 ))
		updown2=$(( ( RANDOM % 2 )  + 1 ))
	    echo "$block, $line, $updown1, $updown2," >> $filename
	done < $DEVIANTS

	#shuffle
	#gshuf -o $filename < $filename
	tmp="$3/tmp$i.txt"
	touch "$tmp"
	cat $filename | while read i;
	do echo "$RANDOM $i";
	done | sort | sed "s/^[0-9]+ //" > $tmp; mv $tmp $filename
	
	#add line order in beginning
	filename_tmp="$3/block_tmp_$i.coll.txt"
	awk '{printf "%d, %s\n", NR, $0}' $filename > $filename_tmp && mv $filename_tmp $filename
	
done


#logic to add in the trigger numbers
#reads in and parses each trial for each block, and checks against every line of the trial_logic.txt file
#when a match is found, a new file is made with all relevent info
for((i = 1; i <= 12; i++)); do
	filename="$3/block$i.coll.txt"
	limenum=1;
	while read line
	do
		arr=($line)
		#same/different
		if [ "${arr[2]}" == "piece1.coll.txt," ]; then
			samediff=1;
		fi
		if [ "${arr[2]}" == "piece3.coll.txt," ]; then
			samediff=1;
		fi
		if [ "${arr[2]}" == "piece2.coll.txt," ]; then
			samediff=2;
		fi
		if [ "${arr[2]}" == "piece4.coll.txt," ]; then
			samediff=2;
		fi
		#human/max
		if (( (i >= 5 ) && (i <= 8 ) )) ; then
			hummax=2;
		else
			hummax=1;
		fi
		#keyboard 1 first or second
		if [ "${arr[3]}" == "1," ]; then
			K1=1;
		else
			K1=2;
		fi
		#which deviant phrase keyboard 1
		if [ "${arr[4]}" == "1," ]; then
			K1dev=1;
		else
			K1dev=2;
		fi	
		#which deviant phrase keyboard 2
		if [ "${arr[5]}" == "1," ]; then
			K2dev=1;
		else
			K2dev=2;
		fi		
		
		dev_filename="$3/block$i.dev.txt"
	   	touch "$dev_filename"
		
		while read trigline
		do
			trig=($trigline)
			if (( ( $hummax == ${trig[0]} ) && ( $samediff == ${trig[1]} ) && ( $K1 == ${trig[2]} ) && ( $K1dev == ${trig[3]} ) && ( $K2dev == ${trig[4]} ) )); then
				#paste into new file - note that the sorting process from above results in a random number appearing in the intermediate file - this is
				#skipped over here by passing {arr[1]}
				( echo ${arr[0]}" "${arr[2]}" "${arr[3]}" "${arr[4]}" "${arr[5]}" "${arr[6]} "" ${arr[7]} "" ${arr[8]} "" ${arr[9]} "" ${trig[5]}";" ) >> $dev_filename
			fi
		done < "trigger_logic.txt"
	done < $filename
	
	mv $dev_filename $filename

done



