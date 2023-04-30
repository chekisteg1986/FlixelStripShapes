package flixelstripshapes.parts;

import flixel.math.FlxPoint;

/**
 * VPoint is a point with UV, vertices position, texture and index in FssShape 
 */
class VPoint
{
	public var x(default, set):Float = 0;
	public var y(default, set):Float = 0;
	public var texture_x:Float = 0;
	public var texture_y:Float = 0;
	public var index:Int = -1;
	public var parent:FssShape = null;

	public function new(_x:Float = 0, _y:Float = 0, _u:Float = 0, _v:Float = 0)
	{
		x = _x;
		y = _y;
		texture_x = _u;
		texture_y = _v;
	}

	public function rotate(_angle:Float):Void
	{
		var _p:FlxPoint = FlxPoint.weak(x, y);
		_p.rotateByDegrees(_angle);
		x = _p.x;
		y = _p.y;
	}

	private function set_x(_x:Float):Float
	{
		if (parent != null)
			parent.vertices[index * 2] = _x;

		x = _x;
		return _x;
	}

	private function set_y(_y:Float):Float
	{
		if (parent != null)
			parent.vertices[index * 2 + 1] = _y;

		y = _y;
		return _y;
	}
}
