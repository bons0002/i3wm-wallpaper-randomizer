# i3wm Background Randomizer

A small shell script to randomize the desktop background on `i3wm` using `feh` on a given interval (random slideshow)

## Usage

1. Ensure that `feh` is installed
2. Place `bg-slideshow.sh` in the same directory as the i3 `config` file (Presumably `~/.config/i3/`)
3. Make `bg-slideshow.sh` executable (`chmod u+x bg-slideshow.sh`)
4. Create a `wallpaper` directory (containing all wallpapers to be used) within the `~/.config/i3/` directory
5. Add this line:
    ```
    exec_always --no-startup-id ~/.config/i3/bg-slideshow.sh <interval>
    ```
    to the `config` file (where `<interval>` is the number of seconds between the wallpaper changing)
