package a.a;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton;
import com.badlogic.gdx.scenes.scene2d.ui.Window;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import e.a.d.l1;
import e.a.d.y;
import net.fdgames.GameLevel.GameLevel;
import net.fdgames.GameWorld.GameData;
import net.fdgames.Helpers.GameString;
import net.fdgames.assets.Assets;
import net.fdgames.assets.GameAssets;
import net.fdgames.ek.ExiledKingdoms;
import net.fdgames.ek.Settings;

/* compiled from: StoreWindow.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class h extends Window {
    private static float l = Math.min(Gdx.graphics.getHeight() / 720.0f, Gdx.graphics.getWidth() / 1280.0f);
    public static String m = "$0";
    private Image b;
    private TextButton c;
    private TextButton d;
    private TextButton e;
    private Label f;
    private f g;
    private f h;
    private Table i;
    private boolean j;
    private Stage k;

    /* compiled from: StoreWindow.java */
    class a extends ChangeListener {

        /* compiled from: StoreWindow.java */
        class a extends l1 {
            a(String str) {
                super(str, 1.0f);
            }

            protected void result(Object obj) {
                h.b(h.this);
            }
        }

        a() {
        }

        public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
            ExiledKingdoms.p.b();
            new a(GameString.a("RESTORING_LICENSE")).show(h.a(h.this));
        }
    }

    /* compiled from: StoreWindow.java */
    class b extends ChangeListener {
        b(h hVar) {
        }

        public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
            if (ExiledKingdoms.q) {
                Gdx.net.openURI("https://www.exiledkingdoms.com/support/support_android.html");
            }
        }
    }

    /* compiled from: StoreWindow.java */
    class c extends ClickListener {
        c() {
        }

        public void clicked(InputEvent inputEvent, float f, float f2) {
            h.this.setVisible(false);
            if (h.c(h.this)) {
                GameLevel.b(false);
                h.a(h.this, false);
            }
            if (!GameData.O().B() || y.J() == null) {
                return;
            }
            y.J().l();
        }
    }

    /* compiled from: StoreWindow.java */
    class d extends InputListener {

        /* compiled from: StoreWindow.java */
        class a extends l1 {
            a(d dVar, String str) {
                super(str, 1.0f);
            }

            protected void result(Object obj) {
            }
        }

        d() {
        }

        public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
            if (Settings.q().booleanValue()) {
                return true;
            }
            if (!((com.badlogic.gdx.u.m.a.a) ExiledKingdoms.p.a()).a()) {
                new a(this, ExiledKingdoms.r ? "Couldn't connect to App Store. Please verify your Apple ID in Settings." : "Couldn't connect to Play Store. Please check your Play Store settings and verify your account payment methods.").show(h.a(h.this));
                return true;
            }
            ExiledKingdoms.p.a("full_ek_license");
            h.this.setVisible(false);
            return true;
        }
    }

    public h(Stage stage) {
        super("", Assets.e());
        this.b = new Image(new TextureRegion(new Texture(Gdx.files.internal("data/ui/logo.png"))));
        this.c = new TextButton(GameString.a("EXIT"), Assets.e(), "menuButton");
        this.d = new TextButton("Test", Assets.e(), "menuButton");
        this.e = new TextButton(GameString.a("RESTORE_PURCHASE"), Assets.e(), "menuButton");
        this.f = new Label((CharSequence) "Not licensed", GameAssets.S);
        this.i = new Table();
        setBackground(Assets.e().getDrawable("windowbg"));
        setMovable(false);
        setModal(true);
        setWidth(Gdx.graphics.getWidth() * 0.84f);
        setHeight(Gdx.graphics.getHeight() * 0.96f);
        if (getHeight() * 1.2f > getWidth()) {
            setHeight(Gdx.graphics.getHeight() * 0.76f);
        }
        setPosition((Gdx.graphics.getWidth() - getWidth()) / 2.0f, (Gdx.graphics.getHeight() - getHeight()) / 2.8f);
        this.f.setWrap(true);
        this.f.setFontScale(l);
        this.k = stage;
        center();
        row().colspan(3);
        add(this.b).center().width(l * 340.0f).height(l * 118.0f);
        row().space(l * 10.0f).height(l * 70.0f).colspan(3).spaceBottom(l * 20.0f).center();
        add(this.f).width(getWidth() * 0.98f).center().padLeft(l * 20.0f);
        row().colspan(3).space(l * 5.0f);
        c();
        add(this.i);
        row().height(l * 50.0f).spaceTop(l * 15.0f);
        this.e.getLabel().setFontScale(l);
        this.c.getLabel().setFontScale(l);
        this.d.getLabel().setFontScale(l);
        this.d.setColor(Color.LIME);
        add(this.e).width(l * 275.0f);
        this.e.addListener(new a());
        this.d.addListener(new b(this));
        add(this.d).width(l * 275.0f);
        add(this.c).width(l * 275.0f);
        this.c.clearListeners();
        this.c.addListener(new c());
        setVisible(false);
    }

    static /* synthetic */ Stage a(h hVar) {
        return hVar.k;
    }

    static /* synthetic */ boolean a(h hVar, boolean z) {
        hVar.j = z;
        return z;
    }

    static /* synthetic */ void b(h hVar) {
        hVar.a();
    }

    private void c() {
        this.i.clear();
        this.h = new f(0, true);
        this.g = new f(1, Settings.q().booleanValue());
        this.g.addListener(new d());
        if (Settings.q().booleanValue()) {
            this.i.row().colspan(3).space(l * 5.0f);
            this.i.add(this.g);
            this.i.row().colspan(3).height(l * 140.0f).space(l * 5.0f);
            this.i.add(this.h);
            return;
        }
        this.i.row().colspan(3).height(l * 140.0f).space(l * 5.0f);
        this.i.add(this.h);
        this.i.row().colspan(3).space(l * 5.0f);
        this.i.add(this.g);
    }

    static /* synthetic */ boolean c(h hVar) {
        return hVar.j;
    }

    public void a() {
        com.badlogic.gdx.u.d a2 = ((com.badlogic.gdx.u.m.a.a) ExiledKingdoms.p.a()).a("full_ek_license");
        if (a2 == null || a2.equals(com.badlogic.gdx.u.d.e)) {
            m = "<<ERROR!>>";
        } else {
            m = a2.b() + " " + a2.a();
        }
        d.a.a.a.a.a("LICENSE_INFO_IOS", d.a.a.a.a.a("[DARK_GRAY]"), "[]", this.f);
        this.c.setText(GameString.a("EXIT"));
        this.e.setText(GameString.a("RESTORE_PURCHASE"));
        if (Settings.q().booleanValue()) {
            this.e.setDisabled(true);
        } else {
            this.e.setDisabled(false);
        }
        this.d.setText(GameString.a("HELP_LICENSE"));
        if (ExiledKingdoms.q) {
            this.d.setVisible(true);
        } else {
            this.d.setVisible(false);
        }
        c();
        setVisible(true);
    }

    public void b() {
        this.j = true;
    }
}
