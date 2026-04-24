package;

import flixel.FlxGame;
import openfl.display.Sprite;
import flixel.FlxSprite;

class Main extends FlxGame
{
    public function new()
    {
		FlxSprite.defaultAntialiasing = true;

        super(1280, 720, MenuState);
    }
}