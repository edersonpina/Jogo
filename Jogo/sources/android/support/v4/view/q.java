package android.support.v4.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

/* compiled from: ViewPropertyAnimatorCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public final class q {
    private WeakReference a;
    Runnable b = null;
    Runnable c = null;
    int d = -1;

    /* compiled from: ViewPropertyAnimatorCompat.java */
    class a extends AnimatorListenerAdapter {
        final /* synthetic */ r a;
        final /* synthetic */ View b;

        a(q qVar, r rVar, View view) {
            this.a = rVar;
            this.b = view;
        }

        public void onAnimationCancel(Animator animator) {
            this.a.a(this.b);
        }

        public void onAnimationEnd(Animator animator) {
            this.a.b(this.b);
        }

        public void onAnimationStart(Animator animator) {
            this.a.c(this.b);
        }
    }

    /* compiled from: ViewPropertyAnimatorCompat.java */
    class b implements ValueAnimator.AnimatorUpdateListener {
        final /* synthetic */ t a;
        final /* synthetic */ View b;

        b(q qVar, t tVar, View view) {
            this.a = tVar;
            this.b = view;
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.a.a(this.b);
        }
    }

    q(View view) {
        this.a = new WeakReference(view);
    }

    private void a(View view, r rVar) {
        if (rVar != null) {
            view.animate().setListener(new a(this, rVar, view));
        } else {
            view.animate().setListener((Animator.AnimatorListener) null);
        }
    }

    public q a(float f) {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    public q a(long j) {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    public q a(r rVar) {
        View view = (View) this.a.get();
        if (view != null) {
            int i = Build.VERSION.SDK_INT;
            a(view, rVar);
        }
        return this;
    }

    public q a(t tVar) {
        View view = (View) this.a.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            view.animate().setUpdateListener(tVar != null ? new b(this, tVar, view) : null);
        }
        return this;
    }

    public q a(Interpolator interpolator) {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    public void a() {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public long b() {
        View view = (View) this.a.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    public q b(float f) {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }

    public q b(long j) {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().setStartDelay(j);
        }
        return this;
    }

    public void c() {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().start();
        }
    }
}
