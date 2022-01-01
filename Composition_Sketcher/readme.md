# Composition Sketcher

![White Primitive Shapes being arranged on a Black Canvas](https://github.com/ianlatchmansingh/processing-tools/blob/main/Composition_Sketcher/output.gif)

A tool for building simple compositions from primitives in a greyscale environment. Built in Processing (Java). This sketcher uses a grid to align and scale objects to, including rotations on rectangular elements. The shape of each element is chosen at random.

## Configuration
### Number of Sketches

The system defaults to generating 500 PNG sketches. This is set relatively high in order to produce enough useful compositions. Feel free to increase or decrease based on your changes.

``int numSketch = 500; // set amount of sketches to generate``

### Number of Objects

The default number of objects is set to 5. You can adjust this in the Composition_Sketcher.pde file.

``int numObj = 5; // initialize number of objects``

### Destination

The "saveFrame" method in the Composition_Sketcher.pde file specifies an "output" folder relative to where the sketch is stored locally. Feel free to adjust based on your needs, or update each time to create additional output folders.

``saveFrame("output/sketch###.png");``

## Control
### Increase or Decrease Grid Size

The grid has a minimum value of 4 maximum value of 64. At this time, both X and Y axes are controlled simultaneously. The following keyboard commands will allow you to modify the grid size and run the generator.

* ARROW UP = Increase Grid Size
* ARROW DOWN = Decrease Grid Size
* ENTER = Run Generator

## Special Thanks
This generator is based on the excellent Bauhaus design course by [Tim Rodenbroker](https://timrodenbroeker.de/).