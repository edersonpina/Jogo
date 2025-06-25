package android.support.v4.app;

import android.view.View;
import java.util.ArrayList;

/* compiled from: FragmentTransitionImpl.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class w implements Runnable {
    final /* synthetic */ int b;
    final /* synthetic */ ArrayList c;
    final /* synthetic */ ArrayList d;
    final /* synthetic */ ArrayList e;
    final /* synthetic */ ArrayList f;

    w(z zVar, int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        this.b = i;
        this.c = arrayList;
        this.d = arrayList2;
        this.e = arrayList3;
        this.f = arrayList4;
    }

    public void run() {
        for (int i = 0; i < this.b; i++) {
            android.support.v4.view.n.a((View) this.c.get(i), (String) this.d.get(i));
            android.support.v4.view.n.a((View) this.e.get(i), (String) this.f.get(i));
        }
    }
}
