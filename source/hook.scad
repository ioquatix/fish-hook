
$fn = 12;

module hook() {
	translate([0, 25, 0])
	difference() {
		cylinder(d=10, h=1);
		
		translate([0, 0, -1])
		cylinder(d=8, h=6);
	}

	scale([1, 1.5, 1])
	difference() {
		cylinder(d=40, h=1);
		
		scale([0.9, 1, 1])
		translate([4, 2, -1])
		cylinder(d=36, h=6);
	}
}

minkowski() {
	hook();
	sphere(r=2);
}