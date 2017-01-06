# Copy and paste the following into your ~/.bash_profile

# change terminal prompt
CUTE_EMOJI=("🐣 " "🙈 " "🐙 " "🦁 " "🐳 " "🐼 ")
DEFAULT_EMOJI=${CUTE_EMOJI[$RANDOM % ${#CUTE_EMOJI[@]} ]}
BIRTHDAY="0107"
TODAY=$(date +%m%d)
# general format
# if [ $TODAY == mmdd ]; then EMOJI="<emoji> "; # Holliday Name
if [ $TODAY == $BIRTHDAY ]; then EMOJI="🎂 "; # Birthday!
elif [ $TODAY == 1231 ]; then EMOJI="🍾 "; # New Years Eve
elif [ $TODAY == 0101 ]; then EMOJI="🎊 "; # New Years Day
elif [ $TODAY == 0214 ]; then EMOJI="💘 "; # Valentines Day
elif [ $TODAY == 0104 ]; then EMOJI="🇺🇸 "; # July 4th
elif [ $TODAY == 1031 ]; then EMOJI="🎃 "; # Halloween
elif [ $TODAY == 1231 ]; then EMOJI="🎄 "; # Christmas
else EMOJI=$DEFAULT_EMOJI
fi
export PS1="\W \u $EMOJI $ "
