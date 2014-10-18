var row;
var column;
var column_position;
var row_position;
for (row = 0; row < 10; row +=1) {
    row_position = (row*64)+32;
    for (column = 0; column < 15; column += 1) {
        column_position = (column*64)+32;
        instance_create(column_position, row_position, obj_grid_area)
    }
 }
