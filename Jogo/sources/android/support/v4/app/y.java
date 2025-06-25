package android.support.v4.app;

import android.view.View;
import java.util.ArrayList;
import java.util.Map;

/* compiled from: FragmentTransitionImpl.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class y implements Runnable {
    final /* synthetic */ ArrayList b;
    final /* synthetic */ Map c;

    y(z zVar, ArrayList arrayList, Map map) {
        this.b = arrayList;
        this.c = map;
    }

    public void run() {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            View view = (View) this.b.get(i);
            android.support.v4.view.n.a(view, (String) this.c.get(android.support.v4.view.n.f(view)));
        }
    }
}
