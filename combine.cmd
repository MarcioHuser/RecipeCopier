pushd "%~dp0\Mods\RecipeCopier"

copy /y ..\..\Content\RecipeCopier\Icons\RecipeCopier-Logo2.png RecipeCopier-Logo2.png

echo {"resources"^:{"icon"^:"RecipeCopier-Logo2.png"}} > "resources.json"

jq --tab -s ".[0] * .[1]" "data.json" "resources.json" > "data-fixed.json"

move /y "data-fixed.json" "data.json"

del /q "resources.json"

popd
