package android.support.v4.widget;

import android.os.Build;
import android.widget.EdgeEffect;

/* compiled from: EdgeEffectCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public final class f {
    private static final b a;

    /* compiled from: EdgeEffectCompat.java */
    static class a extends b {
        a() {
        }

        public void a(EdgeEffect edgeEffect, float f, float f2) {
            edgeEffect.onPull(f, f2);
        }
    }

    /* compiled from: EdgeEffectCompat.java */
    static class b {
        b() {
        }

        public void a(EdgeEffect edgeEffect, float f, float f2) {
            edgeEffect.onPull(f);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            a = new a();
        } else {
            a = new b();
        }
    }

    public static void a(EdgeEffect edgeEffect, float f, float f2) {
        a.a(edgeEffect, f, f2);
    }
}
