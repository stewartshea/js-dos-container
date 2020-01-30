#/bin/sh
export MOUNT=$(grep -w "$GAME" public/games.csv | awk -F "," '{print $2}')
export EXE=$(grep -w "$GAME" public/games.csv | awk -F "," '{print $3}')
sed -i "s|GAME_MOUNT|$MOUNT|g" public/index.html 
sed -i "s|GAME_EXE|$EXE|g" public/index.html
echo "Starting $GAME with $MOUNT and $EXE"

# /usr/local/bin/dumb-init --
npm start
