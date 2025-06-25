package android.support.v4.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.widget.CompoundButton;
import java.lang.reflect.Field;

/* compiled from: CompoundButtonCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public final class c {
    private static final c a;

    /* compiled from: CompoundButtonCompat.java */
    static class a extends c {
        a() {
        }

        public void a(CompoundButton compoundButton, ColorStateList colorStateList) {
            compoundButton.setButtonTintList(colorStateList);
        }

        public void a(CompoundButton compoundButton, PorterDuff.Mode mode) {
            compoundButton.setButtonTintMode(mode);
        }
    }

    /* compiled from: CompoundButtonCompat.java */
    static class b extends a {
        b() {
        }

        public Drawable a(CompoundButton compoundButton) {
            return compoundButton.getButtonDrawable();
        }
    }

    /* compiled from: CompoundButtonCompat.java */
    static class c {
        private static Field a;
        private static boolean b;

        c() {
        }

        public Drawable a(CompoundButton compoundButton) {
            if (!b) {
                try {
                    a = CompoundButton.class.getDeclaredField("mButtonDrawable");
                    a.setAccessible(true);
                } catch (NoSuchFieldException e) {
                    Log.i("CompoundButtonCompat", "Failed to retrieve mButtonDrawable field", e);
                }
                b = true;
            }
            Field field = a;
            if (field != null) {
                try {
                    return (Drawable) field.get(compoundButton);
                } catch (IllegalAccessException e2) {
                    Log.i("CompoundButtonCompat", "Failed to get button drawable via reflection", e2);
                    a = null;
                }
            }
            return null;
        }

        public void a(CompoundButton compoundButton, ColorStateList colorStateList) {
            if (compoundButton instanceof k) {
                ((k) compoundButton).setSupportButtonTintList(colorStateList);
            }
        }

        public void a(CompoundButton compoundButton, PorterDuff.Mode mode) {
            if (compoundButton instanceof k) {
                ((k) compoundButton).setSupportButtonTintMode(mode);
            }
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            a = new b();
        } else if (i >= 21) {
            a = new a();
        } else {
            a = new c();
        }
    }

    public static Drawable a(CompoundButton compoundButton) {
        return a.a(compoundButton);
    }

    public static void a(CompoundButton compoundButton, ColorStateList colorStateList) {
        a.a(compoundButton, colorStateList);
    }

    public static void a(CompoundButton compoundButton, PorterDuff.Mode mode) {
        a.a(compoundButton, mode);
    }
}
