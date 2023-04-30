package flixelstripshapes.parts;

class VPart
{
	public var parts:Array<VPart> = new Array();
	public var triangles:Array<VTriangle> = new Array();

	// public var uv:Array<Float> = [0, 0, 0, 0, 0, 0, 0, 0]; // 8
	// public var vertices:Array<Float> = [0, 0, 0, 0, 0, 0, 0, 0]; // 8
	// public var indexes:Array<Int> = [0, 1, 2, 1, 2, 3]; // 6

	public function new() {}

	public function addTriangle(_triangle:VTriangle):Void
	{
		triangles.push(_triangle);
		// calculating verticies and UV
	}
}
