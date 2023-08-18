#!/usr/bin/env bash
# Open a new gnome-terminal with different path on new tab
working_path=`readlink -f .`
paths=(
"${working_path}/"
"${working_path}/addons/larpem_erplibre_larpem_addons"

)
cmd_before="cd "
# when change directory, open a new tab with command to execute
cmd_after=";gnome-terminal --tab -- bash -c 'git status;bash';"
#cmd_after=";gnome-terminal --tab;"

LONGCMD=""
for t in "${paths[@]}"; do
  LONGCMD+=${cmd_before}${t}${cmd_after}
done

#echo $LONGCMD

# Open all terminal from paths list
#echo "gnome-terminal --window -- bash -c \"${LONGCMD}\""
gnome-terminal --window -- bash -c "${LONGCMD}"
