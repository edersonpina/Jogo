package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.app.b0;
import android.support.v4.content.c;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

/* compiled from: LoaderManager.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class c0 extends b0 {
    final b.b.c.d.k a = new b.b.c.d.k(10);
    final b.b.c.d.k b = new b.b.c.d.k(10);
    final String c;
    boolean d;
    boolean e;
    boolean f;
    i g;

    /* compiled from: LoaderManager.java */
    final class a implements c.b, c.a {
        final int a;
        final Bundle b;
        b0.a c;
        android.support.v4.content.c d;
        boolean e;
        boolean f;
        Object g;
        boolean h;
        boolean i;
        boolean j;
        boolean k;
        boolean l;
        boolean m;
        a n;

        public a(int i, Bundle bundle, b0.a aVar) {
            this.a = i;
            this.b = bundle;
            this.c = aVar;
        }

        void a() {
            String str;
            this.l = true;
            boolean z = this.f;
            this.f = false;
            if (this.c != null && this.d != null && this.e && z) {
                i iVar = c0.this.g;
                if (iVar != null) {
                    k kVar = iVar.d;
                    str = kVar.u;
                    kVar.u = "onLoaderReset";
                } else {
                    str = null;
                }
                try {
                    this.c.onLoaderReset(this.d);
                } finally {
                    i iVar2 = c0.this.g;
                    if (iVar2 != null) {
                        iVar2.d.u = str;
                    }
                }
            }
            this.c = null;
            this.g = null;
            this.e = false;
            android.support.v4.content.c cVar = this.d;
            if (cVar != null) {
                if (this.m) {
                    this.m = false;
                    cVar.unregisterListener(this);
                    this.d.unregisterOnLoadCanceledListener(this);
                }
                this.d.reset();
            }
            a aVar = this.n;
            if (aVar != null) {
                aVar.a();
            }
        }

        public void a(android.support.v4.content.c cVar) {
            a aVar;
            if (this.l || c0.this.a.a(this.a) != this || (aVar = this.n) == null) {
                return;
            }
            this.n = null;
            c0.this.a.b(this.a, null);
            a();
            c0 c0Var = c0.this;
            c0Var.a.b(aVar.a, aVar);
            if (c0Var.d) {
                aVar.b();
            }
        }

        public void a(android.support.v4.content.c cVar, Object obj) {
            if (!this.l && c0.this.a.a(this.a) == this) {
                a aVar = this.n;
                if (aVar != null) {
                    this.n = null;
                    c0.this.a.b(this.a, null);
                    a();
                    c0 c0Var = c0.this;
                    c0Var.a.b(aVar.a, aVar);
                    if (c0Var.d) {
                        aVar.b();
                        return;
                    }
                    return;
                }
                if (this.g != obj || !this.e) {
                    this.g = obj;
                    this.e = true;
                    if (this.h) {
                        b(cVar, obj);
                    }
                }
                a aVar2 = (a) c0.this.b.a(this.a);
                if (aVar2 != null && aVar2 != this) {
                    aVar2.f = false;
                    aVar2.a();
                    c0.this.b.d(this.a);
                }
                c0 c0Var2 = c0.this;
                if (c0Var2.g == null || c0Var2.f()) {
                    return;
                }
                c0.this.g.d.u();
            }
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.a);
            printWriter.print(" mArgs=");
            printWriter.println(this.b);
            printWriter.print(str);
            printWriter.print("mCallbacks=");
            printWriter.println(this.c);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.d);
            android.support.v4.content.c cVar = this.d;
            if (cVar != null) {
                cVar.dump(d.a.a.a.a.a(str, "  "), fileDescriptor, printWriter, strArr);
            }
            if (this.e || this.f) {
                printWriter.print(str);
                printWriter.print("mHaveData=");
                printWriter.print(this.e);
                printWriter.print("  mDeliveredData=");
                printWriter.println(this.f);
                printWriter.print(str);
                printWriter.print("mData=");
                printWriter.println(this.g);
            }
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.h);
            printWriter.print(" mReportNextStart=");
            printWriter.print(this.k);
            printWriter.print(" mDestroyed=");
            printWriter.println(this.l);
            printWriter.print(str);
            printWriter.print("mRetaining=");
            printWriter.print(this.i);
            printWriter.print(" mRetainingStarted=");
            printWriter.print(this.j);
            printWriter.print(" mListenerRegistered=");
            printWriter.println(this.m);
            if (this.n != null) {
                printWriter.print(str);
                printWriter.println("Pending Loader ");
                printWriter.print(this.n);
                printWriter.println(":");
                this.n.a(d.a.a.a.a.a(str, "  "), fileDescriptor, printWriter, strArr);
            }
        }

        void b() {
            b0.a aVar;
            if (this.i && this.j) {
                this.h = true;
                return;
            }
            if (this.h) {
                return;
            }
            this.h = true;
            if (this.d == null && (aVar = this.c) != null) {
                this.d = aVar.onCreateLoader(this.a, this.b);
            }
            android.support.v4.content.c cVar = this.d;
            if (cVar != null) {
                if (cVar.getClass().isMemberClass() && !Modifier.isStatic(this.d.getClass().getModifiers())) {
                    StringBuilder a = d.a.a.a.a.a("Object returned from onCreateLoader must not be a non-static inner member class: ");
                    a.append(this.d);
                    throw new IllegalArgumentException(a.toString());
                }
                if (!this.m) {
                    this.d.registerListener(this.a, this);
                    this.d.registerOnLoadCanceledListener(this);
                    this.m = true;
                }
                this.d.startLoading();
            }
        }

        void b(android.support.v4.content.c cVar, Object obj) {
            if (this.c != null) {
                String str = null;
                i iVar = c0.this.g;
                if (iVar != null) {
                    k kVar = iVar.d;
                    String str2 = kVar.u;
                    kVar.u = "onLoadFinished";
                    str = str2;
                }
                try {
                    this.c.onLoadFinished(cVar, obj);
                    this.f = true;
                } finally {
                    i iVar2 = c0.this.g;
                    if (iVar2 != null) {
                        iVar2.d.u = str;
                    }
                }
            }
        }

        void c() {
            android.support.v4.content.c cVar;
            this.h = false;
            if (this.i || (cVar = this.d) == null || !this.m) {
                return;
            }
            this.m = false;
            cVar.unregisterListener(this);
            this.d.unregisterOnLoadCanceledListener(this);
            this.d.stopLoading();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.a);
            sb.append(" : ");
            a.a.g.a(this.d, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    c0(String str, i iVar, boolean z) {
        this.c = str;
        this.g = iVar;
        this.d = z;
    }

    public android.support.v4.content.c a(int i, Bundle bundle, b0.a aVar) {
        if (this.f) {
            throw new IllegalStateException("Called while creating a loader");
        }
        a aVar2 = (a) this.a.a(i);
        if (aVar2 == null) {
            try {
                this.f = true;
                aVar2 = new a(i, bundle, aVar);
                aVar2.d = aVar.onCreateLoader(i, bundle);
                this.a.b(aVar2.a, aVar2);
                if (this.d) {
                    aVar2.b();
                }
            } finally {
                this.f = false;
            }
        } else {
            aVar2.c = aVar;
        }
        if (aVar2.e && this.d) {
            aVar2.b(aVar2.d, aVar2.g);
        }
        return aVar2.d;
    }

    void a() {
        if (!this.e) {
            for (int b = this.a.b() - 1; b >= 0; b--) {
                ((a) this.a.e(b)).a();
            }
            this.a.a();
        }
        for (int b2 = this.b.b() - 1; b2 >= 0; b2--) {
            ((a) this.b.e(b2)).a();
        }
        this.b.a();
        this.g = null;
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (this.a.b() > 0) {
            printWriter.print(str);
            printWriter.println("Active Loaders:");
            String str2 = str + "    ";
            for (int i = 0; i < this.a.b(); i++) {
                a aVar = (a) this.a.e(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.a.c(i));
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.a(str2, fileDescriptor, printWriter, strArr);
            }
        }
        if (this.b.b() > 0) {
            printWriter.print(str);
            printWriter.println("Inactive Loaders:");
            String str3 = str + "    ";
            for (int i2 = 0; i2 < this.b.b(); i2++) {
                a aVar2 = (a) this.b.e(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.b.c(i2));
                printWriter.print(": ");
                printWriter.println(aVar2.toString());
                aVar2.a(str3, fileDescriptor, printWriter, strArr);
            }
        }
    }

    void b() {
        for (int b = this.a.b() - 1; b >= 0; b--) {
            a aVar = (a) this.a.e(b);
            if (aVar.h && aVar.k) {
                aVar.k = false;
                if (aVar.e && !aVar.i) {
                    aVar.b(aVar.d, aVar.g);
                }
            }
        }
    }

    void c() {
        if (!this.d) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doRetain when not started: " + this, runtimeException);
            return;
        }
        this.e = true;
        this.d = false;
        for (int b = this.a.b() - 1; b >= 0; b--) {
            a aVar = (a) this.a.e(b);
            aVar.i = true;
            aVar.j = aVar.h;
            aVar.h = false;
            aVar.c = null;
        }
    }

    void d() {
        if (!this.d) {
            this.d = true;
            for (int b = this.a.b() - 1; b >= 0; b--) {
                ((a) this.a.e(b)).b();
            }
            return;
        }
        RuntimeException runtimeException = new RuntimeException("here");
        runtimeException.fillInStackTrace();
        Log.w("LoaderManager", "Called doStart when already started: " + this, runtimeException);
    }

    void e() {
        if (this.d) {
            for (int b = this.a.b() - 1; b >= 0; b--) {
                ((a) this.a.e(b)).c();
            }
            this.d = false;
            return;
        }
        RuntimeException runtimeException = new RuntimeException("here");
        runtimeException.fillInStackTrace();
        Log.w("LoaderManager", "Called doStop when not started: " + this, runtimeException);
    }

    public boolean f() {
        int b = this.a.b();
        boolean z = false;
        for (int i = 0; i < b; i++) {
            a aVar = (a) this.a.e(i);
            z |= aVar.h && !aVar.f;
        }
        return z;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        a.a.g.a(this.g, sb);
        sb.append("}}");
        return sb.toString();
    }
}
