package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;
import flixelstripshapes.FssLine;
import flixelstripshapes.FssRectangle;
import flixelstripshapes.FssTriangle;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		var _spr:FlxSprite = new FlxSprite(0, 0);
		_spr.makeGraphic(800, 600, FlxColor.GRAY);
		add(_spr);
		var _triangle:FssTriangle = new FssTriangle(0, 0, 120, 40, 90, 80);
		add(_triangle);
		var _rectangle:FssRectangle = new FssRectangle(300, 50);
		_rectangle.y = 100;
		_rectangle.x = 20;
		_rectangle.rotateTo(-30);
		add(_rectangle);

		var _line:FssLine = FssLine.fromTo(30, 200, 300, 230);
		add(_line);
		_line = FssLine.fromTo(30, 200, 300, 230);
		add(_line);
		_line.makeGraphic(1, 1, FlxColor.GREEN);
		_line.setTo(400, 330);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
