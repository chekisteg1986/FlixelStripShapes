package flixelstripshapes;

import flixel.FlxStrip;
import flixel.math.FlxPoint;
import flixelstripshapes.parts.VPart;
import flixelstripshapes.parts.VPoint;
import flixelstripshapes.parts.VTriangle;

class FssTriangle extends FssShape
{
	public function new(_x1:Float, _y1:Float, _x2:Float, _y2:Float, _x3:Float, _y3:Float)
	{
		super();

		var _triangle:VTriangle = new VTriangle(new VPoint(_x1, _y1), new VPoint(_x2, _y2), new VPoint(_x3, _y3));
		/*_triangle.points[0].x = _x1;
			_triangle.points[0].y = _y1;
			_triangle.points[1].x = _x2;
			_triangle.points[1].y = _y2;
			_triangle.points[2].x = _x3;
			_triangle.points[2].y = _y3; */
		addTriangle(_triangle);
	}
}
