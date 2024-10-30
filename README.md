# i3wm Wallpaper Randomizer

A small shell script to randomize the desktop wallpaper on `i3wm` using `feh` on a given interval (random slideshow)

## Usage

1. Ensure that `feh` is installed
2. Place `i3-wallpaper-random.sh` in the same directory as the i3 `config` file (Presumably `~/.config/i3/`)
3. Make `i3-wallpaper-random.sh` executable (```chmod u+x i3-wallpaper-random.sh```)
4. Create a `wallpaper` directory (containing all wallpapers to be used) within the `~/.config/i3/` directory
5. Add this line:
    ```
    exec_always --no-startup-id ~/.config/i3/i3-wallpaper-random.sh <interval>
    ```
    to the `config` file (where `<interval>` is the number of seconds between the wallpaper changing)
