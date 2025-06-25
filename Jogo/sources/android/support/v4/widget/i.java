package android.support.v4.widget;

import android.os.Build;
import android.support.v4.view.n;
import android.util.Log;
import android.view.View;
import android.widget.PopupWindow;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* compiled from: PopupWindowCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public final class i {
    static final d a;

    /* compiled from: PopupWindowCompat.java */
    static class a extends d {
        a() {
        }

        public void a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
            popupWindow.showAsDropDown(view, i, i2, i3);
        }
    }

    /* compiled from: PopupWindowCompat.java */
    static class b extends a {
        private static Field c;

        static {
            try {
                c = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                c.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", e);
            }
        }

        b() {
        }

        public void a(PopupWindow popupWindow, boolean z) {
            Field field = c;
            if (field != null) {
                try {
                    field.set(popupWindow, Boolean.valueOf(z));
                } catch (IllegalAccessException e) {
                    Log.i("PopupWindowCompatApi21", "Could not set overlap anchor field in PopupWindow", e);
                }
            }
        }
    }

    /* compiled from: PopupWindowCompat.java */
    static class c extends b {
        c() {
        }

        public void a(PopupWindow popupWindow, int i) {
            popupWindow.setWindowLayoutType(i);
        }

        public void a(PopupWindow popupWindow, boolean z) {
            popupWindow.setOverlapAnchor(z);
        }
    }

    /* compiled from: PopupWindowCompat.java */
    static class d {
        private static Method a;
        private static boolean b;

        d() {
        }

        public void a(PopupWindow popupWindow, int i) {
            if (!b) {
                try {
                    a = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", new Class[]{Integer.TYPE});
                    a.setAccessible(true);
                } catch (Exception unused) {
                }
                b = true;
            }
            Method method = a;
            if (method != null) {
                try {
                    method.invoke(popupWindow, new Object[]{Integer.valueOf(i)});
                } catch (Exception unused2) {
                }
            }
        }

        public void a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
            if ((a.a.g.a(i3, n.d(view)) & 7) == 5) {
                i -= popupWindow.getWidth() - view.getWidth();
            }
            popupWindow.showAsDropDown(view, i, i2);
        }

        public void a(PopupWindow popupWindow, boolean z) {
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            a = new c();
            return;
        }
        if (i >= 21) {
            a = new b();
        } else if (i >= 19) {
            a = new a();
        } else {
            a = new d();
        }
    }

    public static void a(PopupWindow popupWindow, int i) {
        a.a(popupWindow, i);
    }

    public static void a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
        a.a(popupWindow, view, i, i2, i3);
    }

    public static void a(PopupWindow popupWindow, boolean z) {
        a.a(popupWindow, z);
    }
}
