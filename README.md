# dualpianoEEG

Update 2/17/16

What is done
- Possible deviant positions within phrase changed from 3 (3,4,5) to two (4,5)
- Number of trials per block changed from 36 to 48
- Number of blocks changed from 8 to 12
- Dropdown menu logic in run experiment and block-follow
  - This effects the trigger codes assigned within metronome tock. All but the
    Human/Max condition are fixed (this one needs two bits).
    Look at the comments in this file for more details.
- Checking for performance errors individually for each player
  - This is done pretty crudely right now, just duplicating
    check-for-performance-errors, adding a little logic, and wrapping up in
    subpatcher
- Assigning score-based trigger codes individually for even/odd player
  - Done crudely for now as well, duplicated phrase-position-triggers and added
    logic above to route only one player's note data to correct subpatch

- New color coded patch cables!
  - yellow: carrying list
  - pink: trial type
  - cyan: trial number
  - green: score type (AAAA or BCBC)
  - blue: odd/even (Status of player 1)
  - red: Human/Max status


What needs to be done
- piece-follow is looking for 31 notes total, this doesn't allow for simultaneous
  playing in phrase 5
- Auto Max conditions (player 1 and player 2)
- debug trigger codes sent from inside metronome-tock
-
