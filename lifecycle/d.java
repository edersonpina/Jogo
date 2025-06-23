package android.arch.lifecycle;

import android.arch.lifecycle.a;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* compiled from: LifecycleRegistry.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.ralexander.reforged/classes.dex */
public class d extends a {
    private final WeakReference c;
    private b.a.a.a.a a = new b.a.a.a.a();
    private int d = 0;
    private boolean e = false;
    private boolean f = false;
    private ArrayList g = new ArrayList();
    private a.b b = a.b.INITIALIZED;

    public d(c cVar) {
        this.c = new WeakReference(cVar);
    }

    static a.b b(a.a aVar) {
        int ordinal = aVar.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal == 2) {
                    return a.b.RESUMED;
                }
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        if (ordinal == 5) {
                            return a.b.DESTROYED;
                        }
                        throw new IllegalArgumentException("Unexpected event value " + aVar);
                    }
                }
            }
            return a.b.STARTED;
        }
        return a.b.CREATED;
    }

    private void b(a.b bVar) {
        if (this.b == bVar) {
            return;
        }
        this.b = bVar;
        if (this.e || this.d != 0) {
            this.f = true;
            return;
        }
        this.e = true;
        if (((c) this.c.get()) == null) {
            Log.w("LifecycleRegistry", "LifecycleOwner is garbage collected, you shouldn't try dispatch new events from it.");
        } else {
            if (this.a.size() != 0) {
                this.a.a();
                throw null;
            }
            this.f = false;
        }
        this.e = false;
    }

    public a.b a() {
        return this.b;
    }

    public void a(a.a aVar) {
        b(b(aVar));
    }

    public void a(a.b bVar) {
        b(bVar);
    }
}
