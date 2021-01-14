pushd "%~dp0\Mods\RecipeCopier"

copy /y ..\..\Content\RecipeCopier\Icons\RecipeCopier-Logo.jpg RecipeCopier-Logo.jpg

echo {"resources"^:{"icon"^:"RecipeCopier-Logo.jpg"}} > "resources.json"

jq --tab -s ".[0] * .[1]" "data.json" "resources.json" > "data-fixed.json"

move /y "data-fixed.json" "data.json"

del /q "resources.json"

popd
