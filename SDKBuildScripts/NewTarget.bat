pushd ..
if [%1] == [] (
rem === BUILDING NewTarget ===
node generate.js ..\API_Specs newTarget=..\sdks\NewTarget
) else (
rem === BUILDING NewTarget with params %* ===
node generate.js ..\API_Specs newTarget=..\sdks\NewTarget %*
)
popd

pause