# Wire Spool Generator
[OpenSCAD based wire spool generator](https://www.printables.com/model/87228-electrical-wire-spools-with-customizable-generator/) that produces strong 3D printable spools suitable for winding electrical wire and similar material.

This is based on the original by [Gladius](https://www.prusaprinters.org/prints/18981-customizeable-wire-spools) with some key improvements:

* Stronger design because both rims have cores that mate with each other. The original had the core mating with a small indent in the rim. I found this approach tended to break at the seam even with super glue.
* Enabling wire holes enables them in both rims instead of just the one.
* Tolerance is set in mm instead of %.

## Sample Parameters

### 80mm Spool
  ```
  tolerance=0.1;
  thicknessOfRim=2;
  diameterOfRim=80.0;
  heightOfSpool=40.0;
  diameterOfCore=25.0;
  diameterOfHoleInRim=20.0;
  coreWallThickness=1.2;
  wireHoles=true;
  diameterOfWireHoles=3.0;
  $fn=100;
  ```

## More Info and Makes
https://www.printables.com/model/87228-electrical-wire-spools-with-customizable-generator/

## License
https://creativecommons.org/licenses/by/4.0/

Remixed from ["Customizeable wire Spools"](https://www.prusaprinters.org/prints/18981-customizeable-wire-spools)
