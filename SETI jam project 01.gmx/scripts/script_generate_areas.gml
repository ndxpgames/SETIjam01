var row;
var column;
var column_position;
var row_position;
for (row = 0; row < 22; row +=1) {
    row_position = (row*32)+16;
    for (column = 0; column < 31; column += 1) {
        column_position = (column*32)+16;
        instance_create(column_position, row_position, obj_grid_area)
    }
 }
