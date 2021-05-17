package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;

class PlayState extends FlxState
{
	var dimensionsText:FlxText;
	var overworldInfo:FlxText;

	override public function create()
	{
		super.create();

		dimensionsText = new FlxText(0, 0, "Dimensions: " + FlxG.width + "x" + FlxG.height, 15);
		add(dimensionsText);

		overworldInfo = new FlxText(0, dimensionsText.y + 20, "OverWorld - " + FlxG.VERSION, 15);
		add(overworldInfo);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
