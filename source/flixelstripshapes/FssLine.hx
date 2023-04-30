package flixelstripshapes;

import flixel.FlxStrip;
import flixel.math.FlxPoint;

/**
 * Draw a line using FssLine
 */
class FssLine extends FssRectangle
{
	public var thickness:Float = 0;
	public var length:Float = 0;

	public static function fromTo(_x1:Float, _y1:Float, _x2:Float, _y2:Float, _thickness:Float = 2):FssLine
	{
		var _dx:Float = _x2 - _x1;
		var _dy:Float = _y2 - _y1;
		var _length:Float = Math.sqrt(_dx * _dx + _dy * _dy);
		var _line:FssLine = new FssLine(_length, _thickness);
		var _angle:Float = FlxPoint.weak(_dx, _dy).degrees;
		trace('Line angle:', _angle);
		_line.angle = _angle;
		_line.x = _x1;
		_line.y = _y1;
		return _line;
	}

	public function new(_length:Float, _thickness:Float = 2)
	{
		super(_length, 0);
		length = _length;
		setThickness(_thickness);
	}

	public function setThickness(_thickness:Float):Void
	{
		thickness = _thickness;
		triangles[0].points[0].y = -_thickness / 2;
		triangles[0].points[1].y = -_thickness / 2;
		triangles[0].points[2].y = _thickness / 2;
		triangles[1].points[0].y = _thickness / 2;
	}
}
