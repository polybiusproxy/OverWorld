package;

import flixel.FlxG;
import flixel.FlxObject;
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

		statusText = new FlxText(FlxG.width - 160 - 2, 2, 160, "Made by PolybiusProxy");
		statusText.setFormat(null, 15, FlxColor.WHITE, RIGHT, NONE, FlxColor.BLACK);
		add(statusText);

		#if debug
		var Player:Player = new Player(false);
		add(Player);
		#end

		daPlayer.makeGraphic(100, 100, FlxColor.WHITE);
		daPlayer.x = FlxG.width / 2;
		daPlayer.maxVelocity.x = 500;
		daPlayer.acceleration.y = 1000;
		daPlayer.drag.x = daPlayer.maxVelocity.x * 4;
		add(daPlayer);

		daGround.makeGraphic(FlxG.width, 200, FlxColor.RED);
		daGround.y = FlxG.height - daGround.height;
		daGround.immovable = true;
		add(daGround);
	}

	override public function update(elapsed:Float)
	{
		daPlayer.acceleration.x = 0;

		if (FlxG.keys.anyPressed([LEFT, A]))
		{
			daPlayer.acceleration.x -= daPlayer.drag.x;
		}

		if (FlxG.keys.anyPressed([RIGHT, D]))
		{
			daPlayer.acceleration.x += daPlayer.drag.x;
		}

		// For reference later!

		// if (FlxG.keys.anyJustPressed([SPACE, UP, W]) && daPlayer.isTouching(FlxObject.FLOOR))
		// {
		// daPlayer.velocity.y = -daPlayer.maxVelocity.y / 2;
		// }

		if (FlxG.keys.anyJustPressed([SPACE, UP, W]) && daPlayer.isTouching(FlxObject.FLOOR))
		{
			daPlayer.velocity.y = -daPlayer.acceleration.y * 0.51;
		}

		super.update(elapsed);

		FlxG.collide();

		if (daPlayer.y > FlxG.height)
		{
			FlxG.resetState();
		}
	}
}
