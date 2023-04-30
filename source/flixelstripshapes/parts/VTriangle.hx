package flixelstripshapes.parts;

class VTriangle
{
	public var points:Array<VPoint> = new Array();

	public function new(_p1:VPoint, _p2:VPoint, _p3:VPoint)
	{
		points.push(_p1);
		points.push(_p2);
		points.push(_p3);
	}
}
