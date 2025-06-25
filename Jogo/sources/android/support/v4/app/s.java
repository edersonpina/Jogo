package android.support.v4.app;

import android.graphics.Rect;
import android.view.View;

/* compiled from: FragmentTransition.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
final class s implements Runnable {
    final /* synthetic */ Fragment b;
    final /* synthetic */ Fragment c;
    final /* synthetic */ boolean d;
    final /* synthetic */ b.b.c.d.a e;
    final /* synthetic */ View f;
    final /* synthetic */ z g;
    final /* synthetic */ Rect h;

    s(Fragment fragment, Fragment fragment2, boolean z, b.b.c.d.a aVar, View view, z zVar, Rect rect) {
        this.b = fragment;
        this.c = fragment2;
        this.d = z;
        this.e = aVar;
        this.f = view;
        this.g = zVar;
        this.h = rect;
    }

    public void run() {
        u.a(this.b, this.c, this.d, this.e, false);
        View view = this.f;
        if (view != null) {
            this.g.a(view, this.h);
        }
    }
}
