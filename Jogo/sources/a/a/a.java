package a.a;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import e.a.d.y;
import net.fdgames.GameLevel.GameLevel;
import net.fdgames.GameWorld.GameData;

/* compiled from: DonateWindow.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class a extends ClickListener {
    final /* synthetic */ e a;

    a(e eVar) {
        this.a = eVar;
    }

    public void clicked(InputEvent inputEvent, float f, float f2) {
        this.a.setVisible(false);
        if (e.a(this.a)) {
            GameLevel.b(false);
            e.a(this.a, false);
        }
        if (!GameData.O().B() || y.J() == null) {
            return;
        }
        y.J().l();
    }
}
