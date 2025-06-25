package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;

/* compiled from: MenuItemCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public final class d {
    static final c a;

    /* compiled from: MenuItemCompat.java */
    static class a extends b {
        a() {
        }

        public void a(MenuItem menuItem, char c, int i) {
            menuItem.setAlphabeticShortcut(c, i);
        }

        public void a(MenuItem menuItem, ColorStateList colorStateList) {
            menuItem.setIconTintList(colorStateList);
        }

        public void a(MenuItem menuItem, PorterDuff.Mode mode) {
            menuItem.setIconTintMode(mode);
        }

        public void a(MenuItem menuItem, CharSequence charSequence) {
            menuItem.setContentDescription(charSequence);
        }

        public void b(MenuItem menuItem, char c, int i) {
            menuItem.setNumericShortcut(c, i);
        }

        public void b(MenuItem menuItem, CharSequence charSequence) {
            menuItem.setTooltipText(charSequence);
        }
    }

    /* compiled from: MenuItemCompat.java */
    static class b implements c {
        b() {
        }

        public void a(MenuItem menuItem, char c, int i) {
        }

        public void a(MenuItem menuItem, ColorStateList colorStateList) {
        }

        public void a(MenuItem menuItem, PorterDuff.Mode mode) {
        }

        public void a(MenuItem menuItem, CharSequence charSequence) {
        }

        public void b(MenuItem menuItem, char c, int i) {
        }

        public void b(MenuItem menuItem, CharSequence charSequence) {
        }
    }

    /* compiled from: MenuItemCompat.java */
    interface c {
        void a(MenuItem menuItem, char c, int i);

        void a(MenuItem menuItem, ColorStateList colorStateList);

        void a(MenuItem menuItem, PorterDuff.Mode mode);

        void a(MenuItem menuItem, CharSequence charSequence);

        void b(MenuItem menuItem, char c, int i);

        void b(MenuItem menuItem, CharSequence charSequence);
    }

    static {
        if (Build.VERSION.SDK_INT >= 26) {
            a = new a();
        } else {
            a = new b();
        }
    }

    public static MenuItem a(MenuItem menuItem, android.support.v4.view.b bVar) {
        if (menuItem instanceof b.b.c.b.a.b) {
            return ((b.b.c.b.a.b) menuItem).a(bVar);
        }
        Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
        return menuItem;
    }

    public static void a(MenuItem menuItem, char c2, int i) {
        if (menuItem instanceof b.b.c.b.a.b) {
            ((b.b.c.b.a.b) menuItem).setAlphabeticShortcut(c2, i);
        } else {
            a.a(menuItem, c2, i);
        }
    }

    public static void a(MenuItem menuItem, ColorStateList colorStateList) {
        if (menuItem instanceof b.b.c.b.a.b) {
            ((b.b.c.b.a.b) menuItem).setIconTintList(colorStateList);
        } else {
            a.a(menuItem, colorStateList);
        }
    }

    public static void a(MenuItem menuItem, PorterDuff.Mode mode) {
        if (menuItem instanceof b.b.c.b.a.b) {
            ((b.b.c.b.a.b) menuItem).setIconTintMode(mode);
        } else {
            a.a(menuItem, mode);
        }
    }

    public static void a(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof b.b.c.b.a.b) {
            ((b.b.c.b.a.b) menuItem).setContentDescription(charSequence);
        } else {
            a.a(menuItem, charSequence);
        }
    }

    public static void b(MenuItem menuItem, char c2, int i) {
        if (menuItem instanceof b.b.c.b.a.b) {
            ((b.b.c.b.a.b) menuItem).setNumericShortcut(c2, i);
        } else {
            a.b(menuItem, c2, i);
        }
    }

    public static void b(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof b.b.c.b.a.b) {
            ((b.b.c.b.a.b) menuItem).setTooltipText(charSequence);
        } else {
            a.b(menuItem, charSequence);
        }
    }
}
