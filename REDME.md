# Log Spiral
This gnuplot script is a simulator of **logarithmic spiral** curve.

## Demo
|![logarithmic_spiral.gif](logarithmic_spiral.gif)|
|:---:|
|**logarithmic_spiral.gif**|

## Equations
<img src="https://render.githubusercontent.com/render/math?math=%5CLarge+%5Cdisplaystyle+x%28%5Ctheta%29+%3Dae%5E%7Bb%5Ctheta%7D%5Ccos%5Ctheta%5Cqquad%0Ay%28%5Ctheta%29+%3Dae%5E%7Bb%5Ctheta%7D%5Csin%5Ctheta" alt="x(\theta) =ae^{b\theta}\cos\theta\qquad y(\theta) =ae^{b\theta}\sin\theta">


<!-- ## Features
You enable to switch terminal type `qt` or `pngcairo` by using **`qtMode`**.
- If you select `qt` terminal (`qtMode==1`), gnuplot opens qt window and you can run this simulator.
The drawing speed of the qt window can be adjusted with the `pause` command and the variable `DELAY_TIME`.

- On the other hand, in `pngcairo` terminal (`qtMode!=1`), you can get a lot of PNG images of the simulation.
By using the outputted images, you can make a video or an animated GIF. -->

<!-- # Operating environment -->
## Requirement
- macOS Big Sur 12.2 / Macbook Air (M1, 2020) 16GB
- gnuplot version 5.4 patchlevel 3

<!-- # Installation -->
 
## Usage
```
git clone https://github.com/hiroloquy/logarithmic-spiral.git
cd logarithmic-spiral
gnuplot
load 'logarithmic_spiral.plt'
```

## Author
* Hiro Shigeyoshi
* Twitter: [@hiroloquy](https://twitter.com/hiroloquy)

### Blog
This article is written in English. You can translate it in your language.  
https://hirossoliloquy.blogspot.com/2018/10/c-dat-diffusioneq.html

### YouTube
https://youtu.be/vz9N5GG8Tfw  
[![Logarithmic Spiral Animation [gnuplot]](http://img.youtube.com/vi/VTMW4J4yUCM/0.jpg)](https://youtu.be/VTMW4J4yUCM "Logarithmic Spiral Animation [gnuplot]")

## License
"logarithmic-spiral" is under [MIT license](https://github.com/hiroloquy/logarithmic-spiral/blob/master/LICENSE).
 