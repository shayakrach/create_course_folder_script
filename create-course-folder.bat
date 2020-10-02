@ECHO OFF 
::check if the course name is not empty
if "%1"=="" goto END
::check if the course name is already exists
set course_name=%1
if exist %course_name% (
echo %course_name% folder already exists
) else (
md %course_name%
cd %course_name%
::create the folders in the course folder 
md Lecturs
md Recitations
md FinalExam
md HW
cd HW
FOR /L %%A IN (1,1,13) DO (
  md Exercise_%%A
)
::all the folders were created successfully and return to the original folder
echo %course_name% course folder was created successfully
cd ..\..
)
:END

 
