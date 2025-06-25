package android.support.v4.app;

import android.view.View;
import android.view.ViewTreeObserver;

/* compiled from: OneShotPreDrawListener.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class k0 implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
    private final View b;
    private ViewTreeObserver c;
    private final Runnable d;

    private k0(View view, Runnable runnable) {
        this.b = view;
        this.c = view.getViewTreeObserver();
        this.d = runnable;
    }

    public static k0 a(View view, Runnable runnable) {
        k0 k0Var = new k0(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(k0Var);
        view.addOnAttachStateChangeListener(k0Var);
        return k0Var;
    }

    public void a() {
        if (this.c.isAlive()) {
            this.c.removeOnPreDrawListener(this);
        } else {
            this.b.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.b.removeOnAttachStateChangeListener(this);
    }

    public boolean onPreDraw() {
        a();
        this.d.run();
        return true;
    }

    public void onViewAttachedToWindow(View view) {
        this.c = view.getViewTreeObserver();
    }

    public void onViewDetachedFromWindow(View view) {
        a();
    }
}
