#/bin/zsh
function checkUser(){
if [ -x $USER_CODE ]
then
    echo 'Please input user_code:'
    read  USER_CODE
    echo USER_CODE=$USER_CODE >> argument.sh
fi

if [ -x $USER_PASS ]
then
    echo 'Please input user_password:'
    read -s USER_PASS
    echo USER_PASS=$USER_PASS >> argument.sh
fi
}

function report_contant(){
    echo 'Please input reprot_contant(end of ;)'
    read  -d ";" REPORT_CONTANT 
}

function show_start_work_time(){
cat << EOF
* select working start time
* [1] 9:00 (default)
* [2] 8:30 
* [3] 8:45 
* [4] 9:15 
* [5] 9:30 
* [6] 9:45 
* [0] exit 
**************************************
EOF
}

function show_end_work_time(){
cat << EOF
* select working end time
* [1] 18:00 (default)
* [2] 17:30
* [3] 17:45
* [4] 17:15
* [5] 18:30
* [6] 18:45
* [7] input self work time 
* [0] exit 
**************************************
EOF
}

function program_end(){
cat << EOF
$START_TIME => $END_TIME (work time is : $WORK_TIME)
report_contant is:
$REPORT_CONTANT
+-------------------------------------------------+
|  Thank you for usesing!                         |
+-------------------------------------------------+
EOF
exit 0
}

