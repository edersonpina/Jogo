package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.support.v4.app.c0;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* compiled from: FragmentHostCallback.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public abstract class i extends g {
    private final Activity a;
    final Context b;
    private final Handler c;
    final k d;
    private b.b.c.d.j e;
    private boolean f;
    private c0 g;
    private boolean h;
    private boolean i;

    i(FragmentActivity fragmentActivity) {
        Handler handler = fragmentActivity.mHandler;
        this.d = new k();
        this.a = fragmentActivity;
        this.b = fragmentActivity;
        this.c = handler;
    }

    c0 a(String str, boolean z, boolean z2) {
        if (this.e == null) {
            this.e = new b.b.c.d.j();
        }
        c0 c0Var = (c0) this.e.get(str);
        if (c0Var == null && z2) {
            c0 c0Var2 = new c0(str, this, z);
            this.e.put(str, c0Var2);
            return c0Var2;
        }
        if (!z || c0Var == null || c0Var.d) {
            return c0Var;
        }
        c0Var.d();
        return c0Var;
    }

    void a(b.b.c.d.j jVar) {
        if (jVar != null) {
            int size = jVar.size();
            for (int i = 0; i < size; i++) {
                ((c0) jVar.d(i)).g = this;
            }
        }
        this.e = jVar;
    }

    void a(String str) {
        c0 c0Var;
        b.b.c.d.j jVar = this.e;
        if (jVar == null || (c0Var = (c0) jVar.get(str)) == null || c0Var.e) {
            return;
        }
        c0Var.a();
        this.e.remove(str);
    }

    void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mLoadersStarted=");
        printWriter.println(this.i);
        if (this.g != null) {
            printWriter.print(str);
            printWriter.print("Loader Manager ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this.g)));
            printWriter.println(":");
            this.g.a(d.a.a.a.a.a(str, "  "), fileDescriptor, printWriter, strArr);
        }
    }

    void a(boolean z) {
        this.f = z;
        c0 c0Var = this.g;
        if (c0Var != null && this.i) {
            this.i = false;
            if (z) {
                c0Var.c();
            } else {
                c0Var.e();
            }
        }
    }

    void b() {
        c0 c0Var = this.g;
        if (c0Var == null) {
            return;
        }
        c0Var.a();
    }

    void c() {
        if (this.i) {
            return;
        }
        this.i = true;
        c0 c0Var = this.g;
        if (c0Var != null) {
            c0Var.d();
        } else if (!this.h) {
            this.g = a("(root)", this.i, false);
            c0 c0Var2 = this.g;
            if (c0Var2 != null && !c0Var2.d) {
                c0Var2.d();
            }
        }
        this.h = true;
    }

    Activity d() {
        return this.a;
    }

    Handler e() {
        return this.c;
    }

    c0 f() {
        c0 c0Var = this.g;
        if (c0Var != null) {
            return c0Var;
        }
        this.h = true;
        this.g = a("(root)", this.i, true);
        return this.g;
    }

    boolean g() {
        return this.f;
    }

    void h() {
        b.b.c.d.j jVar = this.e;
        if (jVar != null) {
            int size = jVar.size();
            c0[] c0VarArr = new c0[size];
            for (int i = size - 1; i >= 0; i--) {
                c0VarArr[i] = (c0) this.e.d(i);
            }
            for (int i2 = 0; i2 < size; i2++) {
                c0 c0Var = c0VarArr[i2];
                if (c0Var.e) {
                    c0Var.e = false;
                    int b = c0Var.a.b();
                    while (true) {
                        b--;
                        if (b >= 0) {
                            c0.a aVar = (c0.a) c0Var.a.e(b);
                            if (aVar.i) {
                                aVar.i = false;
                                boolean z = aVar.h;
                                if (z != aVar.j && !z) {
                                    aVar.c();
                                }
                            }
                            if (aVar.h && aVar.e && !aVar.k) {
                                aVar.b(aVar.d, aVar.g);
                            }
                        }
                    }
                }
                c0Var.b();
            }
        }
    }

    b.b.c.d.j i() {
        b.b.c.d.j jVar = this.e;
        int i = 0;
        if (jVar != null) {
            int size = jVar.size();
            c0[] c0VarArr = new c0[size];
            for (int i2 = size - 1; i2 >= 0; i2--) {
                c0VarArr[i2] = (c0) this.e.d(i2);
            }
            boolean g = g();
            int i3 = 0;
            while (i < size) {
                c0 c0Var = c0VarArr[i];
                if (!c0Var.e && g) {
                    if (!c0Var.d) {
                        c0Var.d();
                    }
                    c0Var.c();
                }
                if (c0Var.e) {
                    i3 = 1;
                } else {
                    c0Var.a();
                    this.e.remove(c0Var.c);
                }
                i++;
            }
            i = i3;
        }
        if (i != 0) {
            return this.e;
        }
        return null;
    }
}
