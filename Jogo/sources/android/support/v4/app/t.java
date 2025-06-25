package android.support.v4.app;

import android.graphics.Rect;
import android.support.v4.app.u;
import android.view.View;
import java.util.ArrayList;

/* compiled from: FragmentTransition.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
final class t implements Runnable {
    final /* synthetic */ z b;
    final /* synthetic */ b.b.c.d.a c;
    final /* synthetic */ Object d;
    final /* synthetic */ u.a e;
    final /* synthetic */ ArrayList f;
    final /* synthetic */ View g;
    final /* synthetic */ Fragment h;
    final /* synthetic */ Fragment i;
    final /* synthetic */ boolean j;
    final /* synthetic */ ArrayList k;
    final /* synthetic */ Object l;
    final /* synthetic */ Rect m;

    t(z zVar, b.b.c.d.a aVar, Object obj, u.a aVar2, ArrayList arrayList, View view, Fragment fragment, Fragment fragment2, boolean z, ArrayList arrayList2, Object obj2, Rect rect) {
        this.b = zVar;
        this.c = aVar;
        this.d = obj;
        this.e = aVar2;
        this.f = arrayList;
        this.g = view;
        this.h = fragment;
        this.i = fragment2;
        this.j = z;
        this.k = arrayList2;
        this.l = obj2;
        this.m = rect;
    }

    public void run() {
        b.b.c.d.a a = u.a(this.b, this.c, this.d, this.e);
        if (a != null) {
            this.f.addAll(a.values());
            this.f.add(this.g);
        }
        u.a(this.h, this.i, this.j, a, false);
        Object obj = this.d;
        if (obj != null) {
            this.b.b(obj, this.k, this.f);
            View a2 = u.a(a, this.e, this.l, this.j);
            if (a2 != null) {
                this.b.a(a2, this.m);
            }
        }
    }
}
