/// @description Esplode
var damageObj = instance_create_layer(x, y, "Instances", oDamage);
damageObj.depth = id.depth - 1;
damageObj.creator = id;
damageObj.image_xscale = 2.5;
damageObj.image_yscale = 2.5;
damageObj.damage = 30;
instance_destroy();