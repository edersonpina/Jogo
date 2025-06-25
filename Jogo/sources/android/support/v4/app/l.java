package android.support.v4.app;

import android.support.v4.app.k;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;

/* compiled from: FragmentManager.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class l extends k.c {
    final /* synthetic */ ViewGroup b;
    final /* synthetic */ View c;
    final /* synthetic */ Fragment d;
    final /* synthetic */ k e;

    /* compiled from: FragmentManager.java */
    class a implements Runnable {
        a() {
        }

        public void run() {
            l lVar = l.this;
            lVar.b.endViewTransition(lVar.c);
            if (l.this.d.getAnimatingAway() != null) {
                l.this.d.setAnimatingAway(null);
                l lVar2 = l.this;
                k kVar = lVar2.e;
                Fragment fragment = lVar2.d;
                kVar.a(fragment, fragment.getStateAfterAnimating(), 0, 0, false);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    l(k kVar, Animation.AnimationListener animationListener, ViewGroup viewGroup, View view, Fragment fragment) {
        super(animationListener, null);
        this.e = kVar;
        this.b = viewGroup;
        this.c = view;
        this.d = fragment;
    }

    public void onAnimationEnd(Animation animation) {
        super.onAnimationEnd(animation);
        this.b.post(new a());
    }
}
