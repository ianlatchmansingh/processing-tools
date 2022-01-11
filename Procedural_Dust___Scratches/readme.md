# Procedural Dust and Scratches

![ Animation of white dust and scratches on a Black Canvas](https://github.com/ianlatchmansingh/processing-tools/blob/main/Composition_Sketcher/output.gif)

A tool for building realistic dust, scratches, and hair as PNG sequences for graphic texture on video. Built in Processing (Java). The placement and design of each element is chosen at random and influenced by noise.

## Configuration
### Frame Rate

Set frame rate (between 12 - 24 is most convincing). This is only useful for previewing as you can set the frame rate of your PNG sequence independently.

``int fRate = 24;``

### Amount of Imperfections

Set amount of dust and scratches (looks convincing at single-digit values)

```
int minNum = 1;
int maxNum = 3;
```

### Running the Sketch
This sketch uses the "saveFrame" method in the .pde file which also specifies an "output" folder relative to where the sketch is stored locally. Feel free to adjust based on your needs, or update each time to create additional output folders. This save method begins once the first frame is drawn.

``saveFrame("output/dust_scratches-######.png");``


## Special Thanks
This generator is based on the excellent Bauhaus design course by [Tim Rodenbroker](https://timrodenbroeker.de/).