#!/bin/bash

if [[ $# -ne 1 ]]; then
        echo "You need to write the name of the course"
        exit 1
fi

course_name=$1
#check if the course name is already exists
if [ -d $course_name ]; then
        echo $course_name folder already exists
        exit 2
fi

mkdir $course_name
cd $course_name
#create the folders in the course folder
mkdir Lecturs
mkdir Recitations
mkdir FinalExam
mkdir HW
cd HW
for i in {1..13}
do
        mkdir "Exercise_$i"
done

#all the folders were created successfully and return to the original folder
echo $course_name course folder was created successfully
exit 0
