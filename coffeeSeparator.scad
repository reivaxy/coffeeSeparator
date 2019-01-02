// mesuré sur le haut du cône : un grand diam extérieur de 53 mm, un rayon intérieur de 51 mm, (2mm d’épaisseur en haut).
// mesuré sur le bas du cône : un grand diam extérieur de 52 mm, un rayon intérieur de 48 mm, (4mm d’épaisseur en bas).
// 5 mm pour la hauteur du cône.
// Avec un arrondi/congé de 3,5 mm de diam, sur le côté extérieur bas du cône (car le fond du filtre a un congé). L’épaisseur totale en bas est donc de 4mm épaisseur – 3,5 mm de congé = 0,5mm.

outerTopDiameter = 53;
innerTopDiameter = 51;

outerBottomDiameter = 52;
innerBottomDiameter = 48;

height = 5;

chamferConeHeight = 2;
innerChamferBottomDiameter = innerBottomDiameter + 2;
innerChamferTopDiameter = innerChamferBottomDiameter + 2 * chamferConeHeight;


separator();
// circularChamfer();

module separator() {
  difference() {
    cylinder(d2 = outerTopDiameter, d1 = outerBottomDiameter, h = height, $fn = 200);
    cylinder(d2 = innerTopDiameter, d1 = innerBottomDiameter, h = height, $fn = 200);
    circularChamfer();
  }

}

module circularChamfer() {
  difference()   {
    cylinder(d2 = innerChamferTopDiameter + 10, d1 = innerChamferBottomDiameter + 10, h = chamferConeHeight, $fn = 200);
    cylinder(d2 = innerChamferTopDiameter, d1 = innerChamferBottomDiameter, h = chamferConeHeight, $fn = 200);
  }
}
