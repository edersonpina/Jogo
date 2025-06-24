package a.a;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.NinePatchDrawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import net.fdgames.Helpers.GameString;
import net.fdgames.assets.Assets;
import net.fdgames.assets.GameAssets;
import net.fdgames.ek.Settings;

/* compiled from: LicenseTable.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.ralexander.reforged/classes.dex */
public class f extends Table {
    private static final float e = Math.min(Gdx.graphics.getHeight() / 720.0f, Gdx.graphics.getWidth() / 1280.0f);
    private Image b = new Image();
    private Table c = new Table();
    private float d;

    public f(int i, boolean z) {
        setBackground(new NinePatchDrawable(GameAssets.P));
        float f = e;
        this.d = f * 5.0f;
        setWidth(f * 880.0f);
        pad(this.d);
        if (Settings.f() == 2) {
            if (z) {
                this.b.setDrawable(new TextureRegionDrawable(Assets.f("available_ES")));
            } else {
                this.b.setDrawable(new TextureRegionDrawable(Assets.f("not_available_ES")));
            }
        } else if (z) {
            this.b.setDrawable(new TextureRegionDrawable(Assets.f("available")));
        } else {
            this.b.setDrawable(new TextureRegionDrawable(Assets.f("not_available")));
        }
        if (i == 0 && Settings.q().booleanValue()) {
            this.b.setVisible(false);
        } else {
            this.b.setVisible(true);
        }
        this.c.clear();
        String str = i == 1 ? "FULL_FEATURE_" : "FREE_FEATURE_";
        int i2 = (int) (e * 10.0f);
        for (int i3 = 0; i3 < 3; i3++) {
            Image image = new Image();
            image.setDrawable(Assets.e().getDrawable("default-rect-down"));
            String a = GameString.a(str + i3);
            StringBuilder a2 = d.a.a.a.a.a("[BLUE]");
            a2.append(h.m);
            a2.append("[]");
            Label label = new Label((CharSequence) d.a.a.a.a.a("[BLACK]", a.replace("{p}", a2.toString()), "[]"), GameAssets.S);
            label.setFontScale(e);
            label.setWrap(true);
            this.c.row().spaceBottom(i2);
            this.c.add(image).width(e * 12.0f).height(e * 12.0f).top().padTop(e * 5.0f);
            this.c.add(label).width(e * 525.0f).padLeft(e * 5.0f).top();
        }
        Image image2 = new Image();
        if (i == 0) {
            image2.setDrawable(new TextureRegionDrawable(Assets.f("free_license")));
        }
        if (i == 1) {
            image2.setDrawable(new TextureRegionDrawable(Assets.f("full_license")));
        }
        add(image2).width(e * 150.0f).height(e * 150.0f);
        add(this.b).width(e * 150.0f).height(e * 150.0f).pad(this.d * 2.0f).spaceRight(e * 15.0f);
        add(this.c).width(e * 540.0f);
        center();
    }
}
