pushd ..
if [%1] == [] (
rem === BUILDING UnitySDK ===
node generate.js ..\API_Specs unity-v0=..\sdks\UnitySDK -buildIdentifier test_manual_build
) else (
rem === BUILDING UnitySDK with params %* ===
node generate.js ..\API_Specs unity-v0=..\sdks\UnitySDK %*
)
popd