# dualpianoEEG

Update 2/27/16

- Color coded patch cables!
  - yellow: carrying list
  - pink: trial type (0-15)
  - cyan: trial number (0-47+)
  - green: score type (AAAA or BCBC)
  - blue: P1 odd/even (1,2)
  - red: Human/Max status (1,2,3)

What is done
- Possible deviant positions within phrase changed from 3 (3,4,5) to two (4,5)
- Number of trials per block changed from 36 to 48
- Number of blocks changed from 8 to 12
- Note duration logic
  - If held for < 375ms, wait until 375ms and send note off
  - If held for > 375ms, send note off through as soon as it's received
- Dropdown menu logic in run experiment and block-follow
  - This effects the trigger codes assigned within metronome tock. All but the
    Human/Max condition are fixed (this one needs two bits).
    Look at the comments in this file for more details.
- Assigning score-based trigger codes individually for even/odd player logic above to route only one player's note data to correct subpatch

TODO:
- Skynet mode needs to send trigger codes
- debug trigger codes sent from inside metronome-tock
- If player is holding old note and plays new note, cut off old note
