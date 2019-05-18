screen=$(xrandr)

screenDirection=$(echo ${screen} | cut -c107-111)
xrandr -o 1
echo "current screen direction: ${screenDirection}"

if [ ${screenDirection} = "left" ]; then
	echo "xrandr turn to normal"
	xrandr -o 0
elif [ ${screenDirection} = "(norm" ]; then
	echo "xrandr turn to left"
	xrandr -o 1
else
	echo "the current screen resolution is not match or string cut format is wrong."
fi

exit 0
