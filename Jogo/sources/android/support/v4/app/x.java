package android.support.v4.app;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* compiled from: FragmentTransitionImpl.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class x implements Runnable {
    final /* synthetic */ ArrayList b;
    final /* synthetic */ Map c;

    x(z zVar, ArrayList arrayList, Map map) {
        this.b = arrayList;
        this.c = map;
    }

    public void run() {
        String str;
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            View view = (View) this.b.get(i);
            String f = android.support.v4.view.n.f(view);
            if (f != null) {
                Iterator it = this.c.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        str = null;
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it.next();
                    if (f.equals(entry.getValue())) {
                        str = (String) entry.getKey();
                        break;
                    }
                }
                android.support.v4.view.n.a(view, str);
            }
        }
    }
}
