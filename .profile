# Ask before starting bash, in case bash doesn't work properly.
# From https://stackoverflow.com/questions/226703/
echo "Start bash? (y/n) "
read answer
if echo "$answer" | grep -iq "^y" ;then
	export _BPXK_AUTOCVT=ON
	export TERMINFO=$HOME/ussfiles/terminfo
	export TERM=screen-256color
	bash -i
	exit
fi
