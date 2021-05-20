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

	var statusText:FlxText;

	var daPlayer = new FlxSprite();
	var daGround = new FlxSprite();

	override public function create()
	{
		super.create();

		dimensionsText = new FlxText(0, 0, "Dimensions: " + FlxG.width + "x" + FlxG.height, 15);
		add(dimensionsText);

		overworldInfo = new FlxText(0, dimensionsText.y + 20, "OverWorld - " + FlxG.VERSION, 15);
		add(overworldInfo);

		statusText = new FlxText(FlxG.width - 160 - 2, 2, 160, "Placeholder lol!");
		statusText.setFormat(null, 15, FlxColor.WHITE, RIGHT, NONE, FlxColor.BLACK);
		add(statusText);

		daPlayer.makeGraphic(100, 100, FlxColor.WHITE);
		daPlayer.x = FlxG.width / 2;
		add(daPlayer);

		daGround.makeGraphic(FlxG.width, 200, FlxColor.RED);
		daGround.y = FlxG.height - daGround.height;
		add(daGround);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
