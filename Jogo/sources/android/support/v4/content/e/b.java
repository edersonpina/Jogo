package android.support.v4.content.e;

import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;

/* compiled from: ResourcesCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public abstract class b {

    /* compiled from: ResourcesCompat.java */
    class a implements Runnable {
        final /* synthetic */ Typeface b;

        a(Typeface typeface) {
            this.b = typeface;
        }

        public void run() {
            b.this.a(this.b);
        }
    }

    /* compiled from: ResourcesCompat.java */
    class b implements Runnable {
        final /* synthetic */ int b;

        b(int i) {
            this.b = i;
        }

        public void run() {
            b.this.a(this.b);
        }
    }

    public abstract void a(int i);

    public final void a(int i, Handler handler) {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.post(new b(i));
    }

    public abstract void a(Typeface typeface);

    public final void a(Typeface typeface, Handler handler) {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.post(new a(typeface));
    }
}
