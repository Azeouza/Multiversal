package;

import flixel.FlxState;
import flixel.FlxG;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class DonateState extends FlxState
{
    override public function create()
    {
        super.create();

        var txt = new FlxText(0, 0, 0, "TELA DE DOAÇÃO\n\nENTER = doar\nESC = voltar", 24);
        txt.setFormat(null, 24, FlxColor.WHITE, "center");
        txt.screenCenter();

        add(txt);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        if (FlxG.keys.justPressed.ENTER)
        {
            FlxG.openURL("https://livepix.gg/azeouza");
        }

        if (FlxG.keys.justPressed.ESCAPE)
        {
            FlxG.switchState(MenuState.new);
        }
    }
}