package flixelstripshapes;

import flixel.FlxStrip;
import flixel.util.FlxColor;
import flixelstripshapes.parts.VPart;
import flixelstripshapes.parts.VPoint;
import flixelstripshapes.parts.VTriangle;

class FssShape extends FlxStrip
{
	public var points:Array<VPoint> = new Array();
	// public var parts:Array<VPart> = new Array();
	public var triangles:Array<VTriangle> = new Array();

	// public var points:Array<VPoint> = new Array();

	public function new()
	{
		super();

		this.makeGraphic(1, 1, FlxColor.RED);
	}

	public function rotateTo(_angle:Float):Float
	{
		for (_p in points)
			_p.rotate(_angle - angle);
		this.angle = _angle;
		return _angle;
	}

	public function addTriangle(_triangle:VTriangle):Void
	{
		triangles.push(_triangle);
		for (_p in _triangle.points)
		{
			if (points.indexOf(_p) == -1)
			{
				_p.index = points.push(_p) - 1;
				_p.parent = this;
				this.vertices.push(_p.x);
				this.vertices.push(_p.y);
				this.uvtData.push(_p.texture_x);
				this.uvtData.push(_p.texture_y);
			}
			this.indices.push(_p.index);
		}
	}
	/*public function addPart(_part:VPart):Void
		{
			parts.push(_part);
			for (_triangle in _part.triangles)
			{
				for (_point in _triangle.points)
				{
					if (_point.index == -1)
					{
						_point.index = Math.floor(vertices.length / 2);
						vertices.push(_point.x);
						vertices.push(_point.y);
						uvtData.push(_point.texture_x);
						uvtData.push(_point.texture_y);
					}
					this.indices.push(_point.index);
				}
			}
	}*/
}
