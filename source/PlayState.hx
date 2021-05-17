package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	var dimensionsText:FlxText;
	var overworldInfo:FlxText;

	var daPlayer = new FlxSprite();
	var daGround = new FlxSprite();

	override public function create()
	{
		super.create();

		dimensionsText = new FlxText(0, 0, "Dimensions: " + FlxG.width + "x" + FlxG.height, 15);
		add(dimensionsText);

		overworldInfo = new FlxText(0, dimensionsText.y + 20, "OverWorld - " + FlxG.VERSION, 15);
		add(overworldInfo);

		daPlayer.makeGraphic(100, 100, FlxColor.WHITE);
		daPlayer.screenCenter();
		add(daPlayer);

		daGround.makeGraphic(FlxG.width, 360, FlxColor.RED);
		daGround.screenCenter();
		add(daGround);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
