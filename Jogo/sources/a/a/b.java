package a.a;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import net.fdgames.ek.ExiledKingdoms;

/* compiled from: DonateWindow.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class b extends InputListener {
    final /* synthetic */ e a;

    b(e eVar) {
        this.a = eVar;
    }

    public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
        if (ExiledKingdoms.r) {
            ExiledKingdoms.p.a("ek_donation_con_0");
        } else {
            ExiledKingdoms.p.a("ek_donation_con_1");
        }
        this.a.a();
        return true;
    }
}
