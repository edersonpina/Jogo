package android.support.v4.app;

import java.util.ArrayList;

/* compiled from: FragmentTransition.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
final class q implements Runnable {
    final /* synthetic */ ArrayList b;

    q(ArrayList arrayList) {
        this.b = arrayList;
    }

    public void run() {
        u.a(this.b, 4);
    }
}
