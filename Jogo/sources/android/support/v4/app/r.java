package android.support.v4.app;

import android.view.View;
import java.util.ArrayList;

/* compiled from: FragmentTransition.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
final class r implements Runnable {
    final /* synthetic */ Object b;
    final /* synthetic */ z c;
    final /* synthetic */ View d;
    final /* synthetic */ Fragment e;
    final /* synthetic */ ArrayList f;
    final /* synthetic */ ArrayList g;
    final /* synthetic */ ArrayList h;
    final /* synthetic */ Object i;

    r(Object obj, z zVar, View view, Fragment fragment, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
        this.b = obj;
        this.c = zVar;
        this.d = view;
        this.e = fragment;
        this.f = arrayList;
        this.g = arrayList2;
        this.h = arrayList3;
        this.i = obj2;
    }

    public void run() {
        Object obj = this.b;
        if (obj != null) {
            this.c.a(obj, this.d);
            this.g.addAll(u.a(this.c, this.b, this.e, this.f, this.d));
        }
        if (this.h != null) {
            if (this.i != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.d);
                this.c.a(this.i, this.h, arrayList);
            }
            this.h.clear();
            this.h.add(this.d);
        }
    }
}
