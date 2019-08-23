global.shape_sprite = irandom(2); //value 0-2, 0 is circle, 1 is triangle, 2 is square

//Find shape to change to the odd one out
var no_shapes = instance_number(obj_two_shape);
var shape_to_change_index = irandom(instance_number(obj_two_shape));
global.shape_to_change_id = instance_find(obj_two_shape, shape_to_change_index);

global.shape_to_change_id = instance_find(obj_two_shape, irandom(instance_number(obj_two_shape) - 1));
