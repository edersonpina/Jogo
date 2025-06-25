package android.support.v4.view;

import android.os.Build;
import android.util.Log;
import android.view.LayoutInflater;
import java.lang.reflect.Field;

/* compiled from: LayoutInflaterCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public final class c {
    private static Field a;
    private static boolean b;
    static final b c;

    /* compiled from: LayoutInflaterCompat.java */
    static class a extends b {
        a() {
        }

        public void a(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
            layoutInflater.setFactory2(factory2);
        }
    }

    /* compiled from: LayoutInflaterCompat.java */
    static class b {
        b() {
        }

        public void a(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
            layoutInflater.setFactory2(factory2);
            LayoutInflater.Factory2 factory = layoutInflater.getFactory();
            if (factory instanceof LayoutInflater.Factory2) {
                c.a(layoutInflater, factory);
            } else {
                c.a(layoutInflater, factory2);
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            c = new a();
        } else {
            c = new b();
        }
    }

    static void a(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        if (!b) {
            try {
                a = LayoutInflater.class.getDeclaredField("mFactory2");
                a.setAccessible(true);
            } catch (NoSuchFieldException e) {
                StringBuilder a2 = d.a.a.a.a.a("forceSetFactory2 Could not find field 'mFactory2' on class ");
                a2.append(LayoutInflater.class.getName());
                a2.append("; inflation may have unexpected results.");
                Log.e("LayoutInflaterCompatHC", a2.toString(), e);
            }
            b = true;
        }
        Field field = a;
        if (field != null) {
            try {
                field.set(layoutInflater, factory2);
            } catch (IllegalAccessException e2) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 could not set the Factory2 on LayoutInflater " + layoutInflater + "; inflation may have unexpected results.", e2);
            }
        }
    }

    public static void b(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        c.a(layoutInflater, factory2);
    }
}
