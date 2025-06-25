package a.a;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton;
import com.badlogic.gdx.scenes.scene2d.ui.Window;
import net.fdgames.Helpers.GameString;
import net.fdgames.assets.Assets;
import net.fdgames.assets.GameAssets;
import net.fdgames.ek.ExiledKingdoms;
import net.fdgames.ek.Settings;

/* compiled from: DonateWindow.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class e extends Window {
    private static float l = Math.min(Gdx.graphics.getHeight() / 720.0f, Gdx.graphics.getWidth() / 1280.0f);
    private Image b;
    private TextButton c;
    private Image d;
    private Image e;
    private Image f;
    private Label g;
    private Label h;
    private Label i;
    private Label j;
    private boolean k;

    public e() {
        super("", Assets.e());
        this.c = new TextButton(GameString.a("EXIT"), Assets.e(), "menuButton");
        this.d = new Image(Assets.f("donate1"));
        this.e = new Image(Assets.f("donate2"));
        this.f = new Image(Assets.f("donate3"));
        this.g = new Label("USD 1", Assets.e(), "menuLabelStrongStyle");
        this.h = new Label("USD 2.5", Assets.e(), "menuLabelStrongStyle");
        this.i = new Label("USD 5", Assets.e(), "menuLabelStrongStyle");
        this.j = new Label((CharSequence) "Not licensed", GameAssets.S);
        setBackground(Assets.e().getDrawable("windowbg"));
        setMovable(false);
        setModal(true);
        setWidth(Gdx.graphics.getWidth() * 0.65f);
        setHeight(Gdx.graphics.getHeight() * 0.61f);
        setPosition((Gdx.graphics.getWidth() - getWidth()) / 2.0f, (Gdx.graphics.getHeight() - getHeight()) / 2.8f);
        this.j.setWrap(true);
        this.j.setFontScale(l);
        this.b = new Image(Assets.f("EK"));
        center().top();
        row().colspan(3).padTop(l * 12.0f);
        add(this.b).center().width(l * 96.0f).height(l * 96.0f);
        row().space(l * 10.0f).height(l * 70.0f).colspan(3);
        this.j.setAlignment(1);
        add(this.j).width(getWidth() * 0.94f).center().padTop(l * 12.0f);
        row().space(l * 2.0f).padTop(l * 22.0f);
        add(this.d).width(l * 72.0f).height(l * 72.0f).padLeft(l * 120.0f);
        add(this.e).width(l * 72.0f).height(l * 72.0f);
        add(this.f).width(l * 72.0f).height(l * 72.0f).padRight(l * 120.0f);
        row();
        add(this.g).padLeft(l * 120.0f);
        add(this.h);
        add(this.i).padRight(l * 120.0f);
        this.g.setFontScale(l * 1.33f);
        this.h.setFontScale(l * 1.33f);
        this.i.setFontScale(l * 1.33f);
        row().height(l * 50.0f).spaceTop(l * 12.0f).colspan(3);
        this.c.getLabel().setFontScale(l * 0.9f);
        add(this.c).width(l * 240.0f);
        this.c.clearListeners();
        this.c.addListener(new a(this));
        this.d.addListener(new b(this));
        this.e.addListener(new c(this));
        this.f.addListener(new d(this));
        setVisible(false);
    }

    static /* synthetic */ boolean a(e eVar) {
        return eVar.k;
    }

    static /* synthetic */ boolean a(e eVar, boolean z) {
        eVar.k = z;
        return z;
    }

    public void a() {
        setVisible(false);
        ExiledKingdoms.k = true;
    }

    public void b() {
        Label label = this.j;
        StringBuilder a = d.a.a.a.a.a("[BLACK]");
        a.append(GameString.a("DONATE_TEXT"));
        a.append("[]");
        label.setText(a.toString());
        Settings.a("don1");
        Settings.a("don2");
        Settings.a("don3");
        this.c.setText(GameString.a("EXIT"));
        setVisible(true);
    }
}
