package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.WeakHashMap;

/* compiled from: ViewCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class n {
    static final j a;

    /* compiled from: ViewCompat.java */
    static class a extends j {
        a() {
        }

        public boolean g(View view) {
            return view.hasOnClickListeners();
        }
    }

    /* compiled from: ViewCompat.java */
    static class b extends a {
        b() {
        }

        public void a(View view, Drawable drawable) {
            view.setBackground(drawable);
        }

        public void a(View view, Runnable runnable) {
            view.postOnAnimation(runnable);
        }

        public void a(View view, Runnable runnable, long j) {
            view.postOnAnimationDelayed(runnable, j);
        }

        public int d(View view) {
            return view.getMinimumHeight();
        }

        public boolean h(View view) {
            return view.hasOverlappingRendering();
        }

        public void k(View view) {
            view.postInvalidateOnAnimation();
        }

        public void l(View view) {
            view.requestFitSystemWindows();
        }
    }

    /* compiled from: ViewCompat.java */
    static class c extends b {
        c() {
        }

        public int c(View view) {
            return view.getLayoutDirection();
        }

        public int f(View view) {
            return view.getWindowSystemUiVisibility();
        }
    }

    /* compiled from: ViewCompat.java */
    static class d extends c {
        d() {
        }
    }

    /* compiled from: ViewCompat.java */
    static class e extends d {
        e() {
        }

        public boolean i(View view) {
            return view.isAttachedToWindow();
        }

        public boolean j(View view) {
            return view.isLaidOut();
        }
    }

    /* compiled from: ViewCompat.java */
    static class f extends e {

        /* compiled from: ViewCompat.java */
        class a implements View.OnApplyWindowInsetsListener {
            final /* synthetic */ k a;

            a(f fVar, k kVar) {
                this.a = kVar;
            }

            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                return (WindowInsets) u.a(this.a.a(view, u.a(windowInsets)));
            }
        }

        f() {
        }

        public ColorStateList a(View view) {
            return view.getBackgroundTintList();
        }

        public u a(View view, u uVar) {
            WindowInsets windowInsets = (WindowInsets) u.a(uVar);
            WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
            if (onApplyWindowInsets != windowInsets) {
                windowInsets = new WindowInsets(onApplyWindowInsets);
            }
            return u.a(windowInsets);
        }

        public void a(View view, float f) {
            view.setElevation(f);
        }

        public void a(View view, ColorStateList colorStateList) {
            view.setBackgroundTintList(colorStateList);
            if (Build.VERSION.SDK_INT == 21) {
                Drawable background = view.getBackground();
                boolean z = (view.getBackgroundTintList() == null || view.getBackgroundTintMode() == null) ? false : true;
                if (background == null || !z) {
                    return;
                }
                if (background.isStateful()) {
                    background.setState(view.getDrawableState());
                }
                view.setBackground(background);
            }
        }

        public void a(View view, PorterDuff.Mode mode) {
            view.setBackgroundTintMode(mode);
            if (Build.VERSION.SDK_INT == 21) {
                Drawable background = view.getBackground();
                boolean z = (view.getBackgroundTintList() == null || view.getBackgroundTintMode() == null) ? false : true;
                if (background == null || !z) {
                    return;
                }
                if (background.isStateful()) {
                    background.setState(view.getDrawableState());
                }
                view.setBackground(background);
            }
        }

        public void a(View view, k kVar) {
            if (kVar == null) {
                view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) null);
            } else {
                view.setOnApplyWindowInsetsListener(new a(this, kVar));
            }
        }

        public void a(View view, String str) {
            view.setTransitionName(str);
        }

        public PorterDuff.Mode b(View view) {
            return view.getBackgroundTintMode();
        }

        public String e(View view) {
            return view.getTransitionName();
        }

        public void l(View view) {
            view.requestApplyInsets();
        }

        public void m(View view) {
            view.stopNestedScroll();
        }
    }

    /* compiled from: ViewCompat.java */
    static class g extends f {
        g() {
        }

        public void a(View view, int i, int i2) {
            view.setScrollIndicators(i, i2);
        }
    }

    /* compiled from: ViewCompat.java */
    static class h extends g {
        h() {
        }
    }

    /* compiled from: ViewCompat.java */
    static class i extends h {
        i() {
        }
    }

    /* compiled from: ViewCompat.java */
    static class j {
        private static WeakHashMap b;
        WeakHashMap a = null;

        j() {
        }

        public ColorStateList a(View view) {
            if (view instanceof m) {
                return ((m) view).getSupportBackgroundTintList();
            }
            return null;
        }

        public u a(View view, u uVar) {
            return uVar;
        }

        public void a(View view, float f) {
        }

        public void a(View view, int i, int i2) {
        }

        public void a(View view, ColorStateList colorStateList) {
            if (view instanceof m) {
                ((m) view).setSupportBackgroundTintList(colorStateList);
            }
        }

        public void a(View view, PorterDuff.Mode mode) {
            if (view instanceof m) {
                ((m) view).setSupportBackgroundTintMode(mode);
            }
        }

        public void a(View view, Drawable drawable) {
            throw null;
        }

        public void a(View view, android.support.v4.view.a aVar) {
            view.setAccessibilityDelegate(aVar == null ? null : aVar.a);
        }

        public void a(View view, k kVar) {
        }

        public void a(View view, Runnable runnable) {
            throw null;
        }

        public void a(View view, Runnable runnable, long j) {
            throw null;
        }

        public void a(View view, String str) {
            if (b == null) {
                b = new WeakHashMap();
            }
            b.put(view, str);
        }

        public PorterDuff.Mode b(View view) {
            if (view instanceof m) {
                return ((m) view).getSupportBackgroundTintMode();
            }
            return null;
        }

        public int c(View view) {
            return 0;
        }

        public int d(View view) {
            throw null;
        }

        public String e(View view) {
            WeakHashMap weakHashMap = b;
            if (weakHashMap == null) {
                return null;
            }
            return (String) weakHashMap.get(view);
        }

        public int f(View view) {
            return 0;
        }

        public boolean g(View view) {
            throw null;
        }

        public boolean h(View view) {
            throw null;
        }

        public boolean i(View view) {
            return view.getWindowToken() != null;
        }

        public boolean j(View view) {
            return view.getWidth() > 0 && view.getHeight() > 0;
        }

        public void k(View view) {
            throw null;
        }

        public void l(View view) {
            throw null;
        }

        public void m(View view) {
            if (view instanceof android.support.v4.view.f) {
                ((android.support.v4.view.f) view).stopNestedScroll();
            }
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            a = new i();
            return;
        }
        if (i2 >= 24) {
            a = new h();
            return;
        }
        if (i2 >= 23) {
            a = new g();
            return;
        }
        if (i2 >= 21) {
            a = new f();
            return;
        }
        if (i2 >= 19) {
            a = new e();
            return;
        }
        if (i2 >= 18) {
            a = new d();
        } else if (i2 >= 17) {
            a = new c();
        } else {
            a = new b();
        }
    }

    public static q a(View view) {
        j jVar = a;
        if (jVar.a == null) {
            jVar.a = new WeakHashMap();
        }
        q qVar = (q) jVar.a.get(view);
        if (qVar != null) {
            return qVar;
        }
        q qVar2 = new q(view);
        jVar.a.put(view, qVar2);
        return qVar2;
    }

    public static u a(View view, u uVar) {
        return a.a(view, uVar);
    }

    public static void a(View view, float f2) {
        a.a(view, f2);
    }

    public static void a(View view, int i2, int i3) {
        a.a(view, i2, i3);
    }

    public static void a(View view, ColorStateList colorStateList) {
        a.a(view, colorStateList);
    }

    public static void a(View view, PorterDuff.Mode mode) {
        a.a(view, mode);
    }

    public static void a(View view, Drawable drawable) {
        a.a(view, drawable);
    }

    public static void a(View view, android.support.v4.view.a aVar) {
        a.a(view, aVar);
    }

    public static void a(View view, k kVar) {
        a.a(view, kVar);
    }

    public static void a(View view, Runnable runnable) {
        a.a(view, runnable);
    }

    public static void a(View view, Runnable runnable, long j2) {
        a.a(view, runnable, j2);
    }

    public static void a(View view, String str) {
        a.a(view, str);
    }

    public static ColorStateList b(View view) {
        return a.a(view);
    }

    public static PorterDuff.Mode c(View view) {
        return a.b(view);
    }

    public static int d(View view) {
        return a.c(view);
    }

    public static int e(View view) {
        return a.d(view);
    }

    public static String f(View view) {
        return a.e(view);
    }

    public static int g(View view) {
        return a.f(view);
    }

    public static boolean h(View view) {
        return a.g(view);
    }

    public static boolean i(View view) {
        return a.h(view);
    }

    public static boolean j(View view) {
        return a.i(view);
    }

    public static boolean k(View view) {
        return a.j(view);
    }

    public static void l(View view) {
        a.k(view);
    }

    public static void m(View view) {
        a.l(view);
    }
}
