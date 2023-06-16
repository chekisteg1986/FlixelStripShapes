package flixelstripshapes;

import flixelstripshapes.parts.VPoint;
import flixelstripshapes.parts.VTriangle;

class FssRectangle extends FssShape
{
	public function new(_width:Float, _height:Float)
	{
		super();

		var _p1:VPoint = new VPoint(_width, 0);
		var _p2:VPoint = new VPoint(0, _height);

		var _tr1:VTriangle = new VTriangle(new VPoint(0, 0), _p1, _p2);
		addTriangle(_tr1);
		var _tr2:VTriangle = new VTriangle(new VPoint(_width, _height), _p1, _p2);
		addTriangle(_tr2);
	}

	public function setRectangleWidth(_w:Float):Void
	{
		triangles[0].points[0].x = 0;
		triangles[0].points[1].x = _w;
		triangles[0].points[2].x = 0;
		triangles[1].points[0].x = _w;
	}
}
