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

	private var fromPoint:FlxPoint = new FlxPoint();
	private var toPoint:FlxPoint = new FlxPoint();

	public static function fromTo(_x1:Float, _y1:Float, _x2:Float, _y2:Float, _thickness:Float = 2):FssLine
	{
		var _dx:Float = _x2 - _x1;
		var _dy:Float = _y2 - _y1;
		var _length:Float = Math.sqrt(_dx * _dx + _dy * _dy);
		var _angle:Float = FlxPoint.weak(_dx, _dy).degrees;
		// trace('Line angle:', _angle);
		var _line:FssLine = new FssLine(_length, _thickness);
		_line.rotateTo(_angle);
		_line.fromPoint.set(_x1, _y1);
		_line.toPoint.set(_x2, _y2);
		_line.x = _x1;
		_line.y = _y1;
		return _line;
	}

	public function setFrom(_x:Float, _y:Float):Void
	{
		fromPoint.x = _x;
		fromPoint.y = _y;

		updateShape();
	}

	public function setTo(_x:Float, _y:Float):Void
	{
		toPoint.x = _x;
		toPoint.y = _y;
		updateShape();
	}

	public function updateShape():Void
	{
		var _dx:Float = toPoint.x - fromPoint.x;
		var _dy:Float = toPoint.y - fromPoint.y;
		var _length:Float = Math.sqrt(_dx * _dx + _dy * _dy);
		var _angle:Float = FlxPoint.weak(_dx, _dy).degrees;
		this.setRectangleWidth(_length);
		rotateTo(_angle);
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
