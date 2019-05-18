# rotate-princess
This program running in ubuntu 18.04 is can rotate the screen 90 degree without typing command.

## installation Steps
# check Xrandr can work
* This program is implemented by Xrandr
* official website
  * https://www.x.org/wiki/Projects/XRandR/
* wiki
  * https://wiki.archlinux.org/index.php/Xrandr
## Download this program
  ```
  git clone https://github.com/sheng1124/rotate-princess.git
  ```
## set the program path in rotate-princess.desktop
```
[Desktop Entry]
Encoding=UTF-8
Version=1.0
Type=Application
Terminal=false
Exec=thisProgramPath rotate-princess.sh
Name=123
Icon=thisProgramPath rotate-princess.png
```
## execute the install program
  ```
  bash install.sh
  ```
* note
  * if this program path change, you have to do previous step again.
## execute this program
* then you can execute this program in applications list, I recommand to set it in favorites.
  ![](https://i.imgur.com/DP4xaMh.png)
* And then you can execute it in tools bar.
## 
