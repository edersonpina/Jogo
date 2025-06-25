package android.support.v4.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.support.v4.view.n;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

/* compiled from: AutoScrollHelper.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public abstract class a implements View.OnTouchListener {
    private static final int s = ViewConfiguration.getTapTimeout();
    final View d;
    private Runnable e;
    private int h;
    private int i;
    private boolean m;
    boolean n;
    boolean o;
    boolean p;
    private boolean q;
    private boolean r;
    final a b = new a();
    private final Interpolator c = new AccelerateInterpolator();
    private float[] f = {0.0f, 0.0f};
    private float[] g = {Float.MAX_VALUE, Float.MAX_VALUE};
    private float[] j = {0.0f, 0.0f};
    private float[] k = {0.0f, 0.0f};
    private float[] l = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* compiled from: AutoScrollHelper.java */
    private static class a {
        private int a;
        private int b;
        private float c;
        private float d;
        private float j;
        private int k;
        private long e = Long.MIN_VALUE;
        private long i = -1;
        private long f = 0;
        private int g = 0;
        private int h = 0;

        a() {
        }

        private float a(long j) {
            if (j < this.e) {
                return 0.0f;
            }
            long j2 = this.i;
            if (j2 < 0 || j < j2) {
                return a.a((j - this.e) / this.a, 0.0f, 1.0f) * 0.5f;
            }
            long j3 = j - j2;
            float f = this.j;
            return (f * a.a(j3 / this.k, 0.0f, 1.0f)) + (1.0f - f);
        }

        public void a() {
            if (this.f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float a = a(currentAnimationTimeMillis);
            long j = currentAnimationTimeMillis - this.f;
            this.f = currentAnimationTimeMillis;
            float f = j * ((a * 4.0f) + ((-4.0f) * a * a));
            this.g = (int) (this.c * f);
            this.h = (int) (f * this.d);
        }

        public void a(float f, float f2) {
            this.c = f;
            this.d = f2;
        }

        public void a(int i) {
            this.b = i;
        }

        public int b() {
            return this.g;
        }

        public void b(int i) {
            this.a = i;
        }

        public int c() {
            return this.h;
        }

        public int d() {
            float f = this.c;
            return (int) (f / Math.abs(f));
        }

        public int e() {
            float f = this.d;
            return (int) (f / Math.abs(f));
        }

        public boolean f() {
            return this.i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.i + ((long) this.k);
        }

        public void g() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.k = a.a((int) (currentAnimationTimeMillis - this.e), 0, this.b);
            this.j = a(currentAnimationTimeMillis);
            this.i = currentAnimationTimeMillis;
        }

        public void h() {
            this.e = AnimationUtils.currentAnimationTimeMillis();
            this.i = -1L;
            this.f = this.e;
            this.j = 0.5f;
            this.g = 0;
            this.h = 0;
        }
    }

    /* compiled from: AutoScrollHelper.java */
    private class b implements Runnable {
        b() {
        }

        public void run() {
            a aVar = a.this;
            if (aVar.p) {
                if (aVar.n) {
                    aVar.n = false;
                    aVar.b.h();
                }
                a aVar2 = a.this.b;
                if (aVar2.f() || !a.this.b()) {
                    a.this.p = false;
                    return;
                }
                a aVar3 = a.this;
                if (aVar3.o) {
                    aVar3.o = false;
                    aVar3.a();
                }
                aVar2.a();
                a.this.a(aVar2.b(), aVar2.c());
                n.a(a.this.d, this);
            }
        }
    }

    public a(View view) {
        this.d = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float[] fArr = this.l;
        float f2 = ((int) ((1575.0f * f) + 0.5f)) / 1000.0f;
        fArr[0] = f2;
        fArr[1] = f2;
        float[] fArr2 = this.k;
        float f3 = ((int) ((f * 315.0f) + 0.5f)) / 1000.0f;
        fArr2[0] = f3;
        fArr2[1] = f3;
        this.h = 1;
        float[] fArr3 = this.g;
        fArr3[0] = Float.MAX_VALUE;
        fArr3[1] = Float.MAX_VALUE;
        float[] fArr4 = this.f;
        fArr4[0] = 0.2f;
        fArr4[1] = 0.2f;
        float[] fArr5 = this.j;
        fArr5[0] = 0.001f;
        fArr5[1] = 0.001f;
        this.i = s;
        this.b.b(500);
        this.b.a(500);
    }

    private float a(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        int i = this.h;
        if (i == 0 || i == 1) {
            if (f < f2) {
                if (f >= 0.0f) {
                    return 1.0f - (f / f2);
                }
                if (this.p && this.h == 1) {
                    return 1.0f;
                }
            }
        } else if (i == 2 && f < 0.0f) {
            return f / (-f2);
        }
        return 0.0f;
    }

    static float a(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x003e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private float a(int r4, float r5, float r6, float r7) {
        /*
            r3 = this;
            float[] r0 = r3.f
            r0 = r0[r4]
            float[] r1 = r3.g
            r1 = r1[r4]
            float r0 = r0 * r6
            r2 = 0
            float r0 = a(r0, r2, r1)
            float r1 = r3.a(r5, r0)
            float r6 = r6 - r5
            float r5 = r3.a(r6, r0)
            float r5 = r5 - r1
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 >= 0) goto L26
            android.view.animation.Interpolator r6 = r3.c
            float r5 = -r5
            float r5 = r6.getInterpolation(r5)
            float r5 = -r5
            goto L30
        L26:
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 <= 0) goto L39
            android.view.animation.Interpolator r6 = r3.c
            float r5 = r6.getInterpolation(r5)
        L30:
            r6 = -1082130432(0xffffffffbf800000, float:-1.0)
            r0 = 1065353216(0x3f800000, float:1.0)
            float r5 = a(r5, r6, r0)
            goto L3a
        L39:
            r5 = 0
        L3a:
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 != 0) goto L3f
            return r2
        L3f:
            float[] r6 = r3.j
            r6 = r6[r4]
            float[] r0 = r3.k
            r0 = r0[r4]
            float[] r1 = r3.l
            r4 = r1[r4]
            float r6 = r6 * r7
            int r7 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r7 <= 0) goto L58
            float r5 = r5 * r6
            float r4 = a(r5, r0, r4)
            return r4
        L58:
            float r5 = -r5
            float r5 = r5 * r6
            float r4 = a(r5, r0, r4)
            float r4 = -r4
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.a.a(int, float, float, float):float");
    }

    static int a(int i, int i2, int i3) {
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }

    public a a(boolean z) {
        if (this.q && !z) {
            if (this.n) {
                this.p = false;
            } else {
                this.b.g();
            }
        }
        this.q = z;
        return this;
    }

    void a() {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        this.d.onTouchEvent(obtain);
        obtain.recycle();
    }

    public abstract void a(int i, int i2);

    public abstract boolean a(int i);

    boolean b() {
        a aVar = this.b;
        int e = aVar.e();
        int d = aVar.d();
        if (e != 0 && a(e)) {
            return true;
        }
        if (d != 0) {
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            boolean r0 = r5.q
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r7.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L23
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L27
            r6 = 3
            if (r0 == r6) goto L16
            goto L85
        L16:
            boolean r6 = r5.n
            if (r6 == 0) goto L1d
            r5.p = r1
            goto L85
        L1d:
            android.support.v4.widget.a$a r6 = r5.b
            r6.g()
            goto L85
        L23:
            r5.o = r2
            r5.m = r1
        L27:
            float r0 = r7.getX()
            int r3 = r6.getWidth()
            float r3 = (float) r3
            android.view.View r4 = r5.d
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r5.a(r1, r0, r3, r4)
            float r7 = r7.getY()
            int r6 = r6.getHeight()
            float r6 = (float) r6
            android.view.View r3 = r5.d
            int r3 = r3.getHeight()
            float r3 = (float) r3
            float r6 = r5.a(r2, r7, r6, r3)
            android.support.v4.widget.a$a r7 = r5.b
            r7.a(r0, r6)
            boolean r6 = r5.p
            if (r6 != 0) goto L85
            boolean r6 = r5.b()
            if (r6 == 0) goto L85
            java.lang.Runnable r6 = r5.e
            if (r6 != 0) goto L69
            android.support.v4.widget.a$b r6 = new android.support.v4.widget.a$b
            r6.<init>()
            r5.e = r6
        L69:
            r5.p = r2
            r5.n = r2
            boolean r6 = r5.m
            if (r6 != 0) goto L7e
            int r6 = r5.i
            if (r6 <= 0) goto L7e
            android.view.View r7 = r5.d
            java.lang.Runnable r0 = r5.e
            long r3 = (long) r6
            android.support.v4.view.n.a(r7, r0, r3)
            goto L83
        L7e:
            java.lang.Runnable r6 = r5.e
            r6.run()
        L83:
            r5.m = r2
        L85:
            boolean r6 = r5.r
            if (r6 == 0) goto L8e
            boolean r6 = r5.p
            if (r6 == 0) goto L8e
            r1 = 1
        L8e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.a.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
