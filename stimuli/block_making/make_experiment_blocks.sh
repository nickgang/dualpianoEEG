#Madeline Huberth, 10/16/16
#Piano Duet study: this script makes the files block{1..12}.coll.txt for Max to read in

#to run:
# >> ./make_experiment_blocks.sh blockorder_VERSION.csv pairfolder
# for example: ./make_experiment_blocks.sh blockorder_11.csv MW_TD

#The coll file orders the information in the following left to right columns:
#trial number,
#max/human (1/2)
#practice/non-practice (1/2)
#score (1/2/3/4)
#which keyboard first (odd/even, 1/2)
#which phrase of keyboard 1 is the deviant in (1/2) 
#which phrase of keyboard 2 is the deviant in (1/2)
#which note for keyboard 1 is the deviant in (4/5) 
#which note for keyboard 2 is the deviant in (4/5) 
#does the deviant descend or ascend for keyboard 1 (-2/2) 
#does the deviant descend or ascend for keyboard 2 (-2/2)
#trigger code identifying the trial

##REQUIREMENTS TO RUN
#bash 4.2 and above


BLOCKORDER=$1
[ ! -f $BLOCKORDER ] && { echo "$BLOCKORDER file not found"; exit 99; }
[ ! -f "deviants.csv" ] && { echo "deviants file not found"; exit 99; }
[ ! -f "trigger_logic.txt" ] && { echo "trigger logic file not found"; exit 99; }

#make block files
for((i = 1; i <= 12; i++)); do
	#name the block
	filename="$2/block$i.coll.txt"
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
		if [ $updown1 == 1 ]; then
			ud1=-2;
		elif [ $updown1 == 2 ]; then
			ud1=2;
		fi
		if [ $updown2 == 1 ]; then
			ud2=-2;
		elif [ $updown2 == 2 ]; then
			ud2=2;
		fi
	    echo "$block, $line, $ud1, $ud2," >> $filename
	done < "deviants.csv"

	#shuffle
	#gshuf -o $filename < $filename
	tmp="$2/tmp$i.txt"
	touch "$tmp"
	cat $filename | while read i;
	do echo "$RANDOM $i";
	done | sort | sed "s/^[0-9]+ //" > $tmp; mv $tmp $filename
	
	#add line order in beginning
	filename_tmp="$2/block_tmp_$i.coll.txt"
	awk '{printf "%d, %s\n", NR, $0}' $filename > $filename_tmp && mv $filename_tmp $filename
	
done


#logic to add in the trigger numbers
#reads in and parses each trial for each block, and checks against every line of the trial_logic.txt file
#when a match is found, a new file is made with all relevent info
for((i = 1; i <= 12; i++)); do
	filename="$2/block$i.coll.txt"
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
			hummax=1;
		else
			hummax=2;
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
		
		dev_filename="$2/block$i.dev.txt"
	   	touch "$dev_filename"
		
		##writing two practice trials first, somewhat by hand ***CHECK THE METRONOME TRIAL CODE
		if [ "${arr[0]}" == "1," ]; then
			( echo -2" "1" "$hummax" "${arr[2]::-1}" "${arr[3]::-1}" "0" "0" "0" "0" "0" "0" "233";" ) >> $dev_filename
			( echo -1" "1" "$hummax" "${arr[2]::-1}" "${arr[3]::-1}" "0" "0" "0" "0" "0" "0" "233";" ) >> $dev_filename
		fi
		
		while read trigline
		do
			trig=($trigline)
			if (( ( $hummax == ${trig[0]} ) && ( $samediff == ${trig[1]} ) && ( $K1 == ${trig[2]} ) && ( $K1dev == ${trig[3]} ) && ( $K2dev == ${trig[4]} ) )); then
				#paste into new file - note that the sorting process from above results in a random number appearing in the intermediate file - this is
				#skipped over here by passing {arr[1]}
				
				##  the syntax ::-1 removes the commas from the strings
				#order is trialnum, practice/not, max/human, piece, which keyboard first, deviant phrase k1, k2, deviant note k1, k2, updown k1, k2, trial number
				( echo ${arr[0]}" "2" "$hummax" "${arr[2]::-1}" "${arr[3]::-1}" "${arr[4]::-1}" "${arr[5]::-1}" "${arr[6]::-1}" "${arr[7]::-1}" "${arr[8]::-1}" "${arr[9]::-1}" "${trig[5]}";" ) >> $dev_filename
			fi
		done < "trigger_logic.txt"
	done < $filename
	
	mv $dev_filename $filename

done
