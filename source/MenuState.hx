package;

import flixel.FlxState;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.graphics.frames.FlxAtlasFrames;

class MenuState extends FlxState
{
    var bg:FlxSprite;
    var logo:FlxSprite;

    var options:Array<String> = ["Jogar", "Créditos", "Doar", "Opções"];
    var optionTexts:Array<FlxText> = [];
    var optionButtons:Array<FlxSprite> = [];
    var selected:Int = 0;

    var baseScale:Float = 0.1;
    var buttonScale:Float = 0.3;

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
        logo.y = FlxG.height * 0.03;
        logo.antialiasing = true;

        add(logo);

        for (i in 0...options.length)
        {
            var txt = new FlxText(0, 0, 0, options[i], 32);
            txt.setFormat("assets/fonts/comic.ttf", 32, FlxColor.RED, "center");

            txt.borderStyle = OUTLINE;
            txt.borderColor = FlxColor.YELLOW;
            txt.borderSize = 2;

            txt.screenCenter(X);
            txt.y = 400 + i * 70;

            var btn = new FlxSprite();
            btn.loadGraphic("assets/images/botao.png");
            btn.antialiasing = true;

            var scale = Math.max(txt.width / 120, txt.height / 25) * buttonScale;
            btn.scale.set(scale, scale);
            btn.updateHitbox();

            btn.x = txt.x + (txt.width - btn.width) / 2;
            btn.y = txt.y - 10;

            add(btn);
            optionButtons.push(btn);

            add(txt);
            optionTexts.push(txt);
        }

        updateSelection();
    }

    function updateSelection()
    {
        for (i in 0...optionTexts.length)
        {
            var selectedNow = (i == selected);

            optionTexts[i].alpha = selectedNow ? 1 : 0.5;
            optionTexts[i].scale.set(selectedNow ? 1.25 : 1, selectedNow ? 1.25 : 1);

            optionButtons[i].loadGraphic(
                selectedNow ? "assets/images/botaoSelecionado.png" : "assets/images/botao.png"
            );

            var scale = Math.max(optionTexts[i].width / 120, optionTexts[i].height / 25) * buttonScale;
            optionButtons[i].scale.set(scale, scale);
            optionButtons[i].updateHitbox();

            optionButtons[i].x = optionTexts[i].x + (optionTexts[i].width - optionButtons[i].width) / 2;
            optionButtons[i].y = optionTexts[i].y - 10;
        }
    }

    override public function update(elapsed:Float):Void
    {
        super.update(elapsed);

        if (FlxG.keys.justPressed.DOWN)
        {
            selected++;
            if (selected >= options.length) selected = 0;
            updateSelection();
        }

        if (FlxG.keys.justPressed.UP)
        {
            selected--;
            if (selected < 0) selected = options.length - 1;
            updateSelection();
        }

        if (FlxG.keys.justPressed.ENTER)
        {
            switch (selected)
            {
                case 0: FlxG.switchState(PlayState.new);
                case 1: trace("Créditos");
                case 2: trace("Doar");
                case 3: trace("Opções");
            }
        }
    }
}