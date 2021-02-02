



// number of rows and columns, beware that odd rows have one cell less 
// than even rows, so the total number of cells will be about rows * (columns - 1/2) 
rows          = 5; 
columns       = 6; 

// number of stacks 
levels = 2; 

// cell step is hole size between opposite hexagon walls plus inner wall thickness 

walls         = 1.5; 
cell_interior = 15.2; 
height        = 10; 

module honeycomb(rows, columns, cell_interior, walls, height) { 
    for (i = [0 : rows - 1]) { 
        linear_extrude(height=height) { 
            for (j = [0 : (columns - 1 - i%2)]) { 
                translate([(j + (i % 2) /2) * (cell_interior + walls), 
                           (cell_interior + walls) * i * sqrt(3) / 2]) 
                rotate([0,0,30]) 
                difference() { 
                  circle(r=(cell_interior + 2 * walls)/sqrt(3),$fn=6); // comment out to get inverse 
                  circle(r=cell_interior/sqrt(3),$fn=6); 
                } 
            } 
        } 
    } 
} 

module frame(rows, columns, cell_interior, walls, height) { 
    linear_extrude(height=height*levels) { 
        translate([-((cell_interior + walls) + walls)/2, 
                   -(cell_interior + 2 * walls) / sqrt(3)]) 
        difference() { 
            square([columns * (cell_interior + walls) + walls, 
                    ((3 * rows + 1) * (cell_interior + walls) / 2 + 2 * walls) / sqrt(3)]); 
            translate([walls, walls]) 
            square([columns*(cell_interior + walls)-walls, 
                    ((3 * rows + 1) * (cell_interior + walls) / 2 + 2 * walls) / sqrt(3)-2*walls]); 
        } 
    } 
} 