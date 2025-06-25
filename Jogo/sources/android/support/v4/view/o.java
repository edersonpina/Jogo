package android.support.v4.view;

import android.os.Build;
import android.view.ViewGroup;

/* compiled from: ViewGroupCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public final class o {
    static final c a;

    /* compiled from: ViewGroupCompat.java */
    static class a extends c {
        a() {
        }
    }

    /* compiled from: ViewGroupCompat.java */
    static class b extends a {
        b() {
        }

        public boolean a(ViewGroup viewGroup) {
            return viewGroup.isTransitionGroup();
        }
    }

    /* compiled from: ViewGroupCompat.java */
    static class c {
        c() {
        }

        public boolean a(ViewGroup viewGroup) {
            Boolean bool = (Boolean) viewGroup.getTag(b.b.a.a.tag_transition_group);
            return ((bool == null || !bool.booleanValue()) && viewGroup.getBackground() == null && n.f(viewGroup) == null) ? false : true;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            a = new b();
        } else if (i >= 18) {
            a = new a();
        } else {
            a = new c();
        }
    }

    public static boolean a(ViewGroup viewGroup) {
        return a.a(viewGroup);
    }
}
