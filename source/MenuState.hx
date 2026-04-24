package;

import flixel.FlxState;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.util.FlxColor;

class MenuState extends FlxState
{
    var bg:FlxSprite;
    var logo:FlxSprite;
    var pressText:FlxText;

    var baseScale:Float = 0.2;

    override public function create():Void
    {
        super.create();

        bg = new FlxSprite(0, 0);

        bg.frames = FlxAtlasFrames.fromSparrow(
            "assets/images/portal.png",
            "assets/images/portal.xml"
        );

        bg.animation.addByPrefix("idle", "portal", 12, true);
        bg.animation.play("idle");

        bg.setGraphicSize(FlxG.width, FlxG.height);
        bg.updateHitbox();
        bg.screenCenter();
        bg.antialiasing = true;

        add(bg);

        logo = new FlxSprite(0, 0, "assets/images/logo.png");

        logo.scale.set(baseScale, baseScale);
        logo.updateHitbox();

        logo.screenCenter(X);
        logo.y = FlxG.height * 0.15;

        logo.antialiasing = true;

        add(logo);
    }

    override public function update(elapsed:Float):Void
    {
        super.update(elapsed);

        pressText.alpha = 0.5 + Math.sin(FlxG.game.ticks / 5) * 0.5;

        if (FlxG.keys.justPressed.ENTER)
        {
            FlxG.switchState(PlayState.new);
        }
    }
}