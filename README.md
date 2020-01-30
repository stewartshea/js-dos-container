# JS-DOS CONTAINER
This is a simple js container image that runs games with js-dos. Please see the source section below for more details. 
This was originally inspired by the desire to play Oregon Trail! 

# Building Locally with Podman

```shell
podman build -t js-dos-container .
```

# Choosing a game
Review the public/games.csv file and set the GAME environment variable to the name of the game (the first value). 

Local example: 
```shell
podman run -e GAME=oregon -p 3000:3000 localhost/js-dos-container
```

# Source
- https://js-dos.com/Oregon%20Trail/
- https://github.com/caiiiycuk/js-dos
- https://js-dos.com/
- https://github.com/duluca/minimal-node-web-server
- https://www.myabandonware.com/game/oregon-trail-deluxe-1h9#download