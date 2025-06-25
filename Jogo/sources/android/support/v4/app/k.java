package android.support.v4.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.j;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: FragmentManager.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
final class k extends j implements LayoutInflater.Factory2 {
    static Field E;
    static final Interpolator F = new DecelerateInterpolator(2.5f);
    static final Interpolator G = new DecelerateInterpolator(1.5f);
    ArrayList B;
    o C;
    ArrayList b;
    boolean c;
    SparseArray f;
    ArrayList g;
    ArrayList h;
    ArrayList i;
    ArrayList j;
    ArrayList k;
    android.support.v4.app.i n;
    android.support.v4.app.g o;
    Fragment p;
    Fragment q;
    boolean r;
    boolean s;
    boolean t;
    String u;
    boolean v;
    ArrayList w;
    ArrayList x;
    ArrayList y;
    int d = 0;
    final ArrayList e = new ArrayList();
    private final CopyOnWriteArrayList l = new CopyOnWriteArrayList();
    int m = 0;
    Bundle z = null;
    SparseArray A = null;
    Runnable D = new a();

    /* compiled from: FragmentManager.java */
    class a implements Runnable {
        a() {
        }

        public void run() {
            k.this.o();
        }
    }

    /* compiled from: FragmentManager.java */
    private static class b extends c {
        View b;

        /* compiled from: FragmentManager.java */
        class a implements Runnable {
            a() {
            }

            public void run() {
                b.this.b.setLayerType(0, (Paint) null);
            }
        }

        b(View view, Animation.AnimationListener animationListener) {
            super(animationListener, null);
            this.b = view;
        }

        public void onAnimationEnd(Animation animation) {
            if (android.support.v4.view.n.j(this.b) || Build.VERSION.SDK_INT >= 24) {
                this.b.post(new a());
            } else {
                this.b.setLayerType(0, (Paint) null);
            }
            super.onAnimationEnd(animation);
        }
    }

    /* compiled from: FragmentManager.java */
    private static class c implements Animation.AnimationListener {
        private final Animation.AnimationListener a;

        /* synthetic */ c(Animation.AnimationListener animationListener, a aVar) {
            this.a = animationListener;
        }

        public void onAnimationEnd(Animation animation) {
            Animation.AnimationListener animationListener = this.a;
            if (animationListener != null) {
                animationListener.onAnimationEnd(animation);
            }
        }

        public void onAnimationRepeat(Animation animation) {
            Animation.AnimationListener animationListener = this.a;
            if (animationListener != null) {
                animationListener.onAnimationRepeat(animation);
            }
        }

        public void onAnimationStart(Animation animation) {
            Animation.AnimationListener animationListener = this.a;
            if (animationListener != null) {
                animationListener.onAnimationStart(animation);
            }
        }
    }

    /* compiled from: FragmentManager.java */
    private static class d {
        public final Animation a;
        public final Animator b;

        /* synthetic */ d(Animator animator, a aVar) {
            this.a = null;
            this.b = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }

        /* synthetic */ d(Animation animation, a aVar) {
            this.a = animation;
            this.b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }
    }

    /* compiled from: FragmentManager.java */
    private static class e extends AnimatorListenerAdapter {
        View a;

        e(View view) {
            this.a = view;
        }

        public void onAnimationEnd(Animator animator) {
            this.a.setLayerType(0, (Paint) null);
            animator.removeListener(this);
        }

        public void onAnimationStart(Animator animator) {
            this.a.setLayerType(2, (Paint) null);
        }
    }

    /* compiled from: FragmentManager.java */
    static class f {
        public static final int[] a = {16842755, 16842960, 16842961};
    }

    /* compiled from: FragmentManager.java */
    interface g {
        boolean a(ArrayList arrayList, ArrayList arrayList2);
    }

    /* compiled from: FragmentManager.java */
    private class h implements g {
        final String a;
        final int b;
        final int c;

        h(String str, int i, int i2) {
            this.a = str;
            this.b = i;
            this.c = i2;
        }

        public boolean a(ArrayList arrayList, ArrayList arrayList2) {
            j peekChildFragmentManager;
            Fragment fragment = k.this.q;
            if (fragment == null || this.b >= 0 || this.a != null || (peekChildFragmentManager = fragment.peekChildFragmentManager()) == null || !peekChildFragmentManager.c()) {
                return k.this.a(arrayList, arrayList2, this.a, this.b, this.c);
            }
            return false;
        }
    }

    /* compiled from: FragmentManager.java */
    static class i implements Fragment.e {
        private final boolean a;
        private final android.support.v4.app.b b;
        private int c;

        i(android.support.v4.app.b bVar, boolean z) {
            this.a = z;
            this.b = bVar;
        }

        static /* synthetic */ boolean a(i iVar) {
            return iVar.a;
        }

        static /* synthetic */ android.support.v4.app.b b(i iVar) {
            return iVar.b;
        }

        public void a() {
            android.support.v4.app.b bVar = this.b;
            k.a(bVar.a, bVar, this.a, false, false);
        }

        public void b() {
            boolean z = this.c > 0;
            k kVar = this.b.a;
            int size = kVar.e.size();
            for (int i = 0; i < size; i++) {
                Fragment fragment = (Fragment) kVar.e.get(i);
                fragment.setOnStartEnterTransitionListener(null);
                if (z && fragment.isPostponed()) {
                    fragment.startPostponedEnterTransition();
                }
            }
            android.support.v4.app.b bVar = this.b;
            k.a(bVar.a, bVar, this.a, !z, true);
        }

        public boolean c() {
            return this.c == 0;
        }

        public void d() {
            this.c--;
            if (this.c != 0) {
                return;
            }
            k.a(this.b.a);
        }

        public void e() {
            this.c++;
        }
    }

    static {
        new AccelerateInterpolator(2.5f);
        new AccelerateInterpolator(1.5f);
    }

    k() {
    }

    static d a(float f2, float f3, float f4, float f5) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f2, f3, f2, f3, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(F);
        scaleAnimation.setDuration(220L);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f4, f5);
        alphaAnimation.setInterpolator(G);
        alphaAnimation.setDuration(220L);
        animationSet.addAnimation(alphaAnimation);
        return new d((Animation) animationSet, (a) null);
    }

    private static Animation.AnimationListener a(Animation animation) {
        try {
            if (E == null) {
                E = Animation.class.getDeclaredField("mListener");
                E.setAccessible(true);
            }
            return (Animation.AnimationListener) E.get(animation);
        } catch (IllegalAccessException e2) {
            Log.e("FragmentManager", "Cannot access Animation's mListener field", e2);
            return null;
        } catch (NoSuchFieldException e3) {
            Log.e("FragmentManager", "No field with the name mListener is found in Animation class", e3);
            return null;
        }
    }

    private void a(android.support.v4.app.b bVar, boolean z, boolean z2, boolean z3) {
        if (z) {
            bVar.b(z3);
        } else {
            bVar.c();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(bVar);
        arrayList2.add(Boolean.valueOf(z));
        if (z2) {
            u.a(this, arrayList, arrayList2, 0, 1, true);
        }
        if (z3) {
            a(this.m, true);
        }
        SparseArray sparseArray = this.f;
        if (sparseArray != null) {
            int size = sparseArray.size();
            for (int i2 = 0; i2 < size; i2++) {
                Fragment fragment = (Fragment) this.f.valueAt(i2);
                if (fragment != null && fragment.mView != null && fragment.mIsNewlyAdded && bVar.b(fragment.mContainerId)) {
                    float f2 = fragment.mPostponedAlpha;
                    if (f2 > 0.0f) {
                        fragment.mView.setAlpha(f2);
                    }
                    if (z3) {
                        fragment.mPostponedAlpha = 0.0f;
                    } else {
                        fragment.mPostponedAlpha = -1.0f;
                        fragment.mIsNewlyAdded = false;
                    }
                }
            }
        }
    }

    static /* synthetic */ void a(k kVar) {
        kVar.y();
    }

    static /* synthetic */ void a(k kVar, android.support.v4.app.b bVar, boolean z, boolean z2, boolean z3) {
        kVar.a(bVar, z, z2, z3);
    }

    private static void a(o oVar) {
        if (oVar == null) {
            return;
        }
        List b2 = oVar.b();
        if (b2 != null) {
            Iterator it = b2.iterator();
            while (it.hasNext()) {
                ((Fragment) it.next()).mRetaining = true;
            }
        }
        List a2 = oVar.a();
        if (a2 != null) {
            Iterator it2 = a2.iterator();
            while (it2.hasNext()) {
                a((o) it2.next());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void a(android.view.View r5, android.support.v4.app.k.d r6) {
        /*
            if (r5 == 0) goto L6f
            if (r6 != 0) goto L6
            goto L6f
        L6:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 19
            r2 = 1
            r3 = 0
            if (r0 < r1) goto L4a
            int r0 = r5.getLayerType()
            if (r0 != 0) goto L4a
            boolean r0 = android.support.v4.view.n.i(r5)
            if (r0 == 0) goto L4a
            android.view.animation.Animation r0 = r6.a
            boolean r1 = r0 instanceof android.view.animation.AlphaAnimation
            if (r1 == 0) goto L21
            goto L3a
        L21:
            boolean r1 = r0 instanceof android.view.animation.AnimationSet
            if (r1 == 0) goto L41
            android.view.animation.AnimationSet r0 = (android.view.animation.AnimationSet) r0
            java.util.List r0 = r0.getAnimations()
            r1 = 0
        L2c:
            int r4 = r0.size()
            if (r1 >= r4) goto L3f
            java.lang.Object r4 = r0.get(r1)
            boolean r4 = r4 instanceof android.view.animation.AlphaAnimation
            if (r4 == 0) goto L3c
        L3a:
            r0 = 1
            goto L47
        L3c:
            int r1 = r1 + 1
            goto L2c
        L3f:
            r0 = 0
            goto L47
        L41:
            android.animation.Animator r0 = r6.b
            boolean r0 = a(r0)
        L47:
            if (r0 == 0) goto L4a
            goto L4b
        L4a:
            r2 = 0
        L4b:
            if (r2 == 0) goto L6f
            android.animation.Animator r0 = r6.b
            if (r0 == 0) goto L5a
            android.support.v4.app.k$e r6 = new android.support.v4.app.k$e
            r6.<init>(r5)
            r0.addListener(r6)
            goto L6f
        L5a:
            android.view.animation.Animation r0 = r6.a
            android.view.animation.Animation$AnimationListener r0 = a(r0)
            r1 = 2
            r2 = 0
            r5.setLayerType(r1, r2)
            android.view.animation.Animation r6 = r6.a
            android.support.v4.app.k$b r1 = new android.support.v4.app.k$b
            r1.<init>(r5, r0)
            r6.setAnimationListener(r1)
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.k.a(android.view.View, android.support.v4.app.k$d):void");
    }

    private void a(b.b.c.d.c cVar) {
        int i2 = this.m;
        if (i2 < 1) {
            return;
        }
        int min = Math.min(i2, 4);
        int size = this.e.size();
        for (int i3 = 0; i3 < size; i3++) {
            Fragment fragment = (Fragment) this.e.get(i3);
            if (fragment.mState < min) {
                a(fragment, min, fragment.getNextAnim(), fragment.getNextTransition(), false);
                if (fragment.mView != null && !fragment.mHidden && fragment.mIsNewlyAdded) {
                    cVar.add(fragment);
                }
            }
        }
    }

    private void a(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new b.b.c.d.e("FragmentManager"));
        android.support.v4.app.i iVar = this.n;
        if (iVar == null) {
            try {
                a("  ", (FileDescriptor) null, printWriter, new String[0]);
                throw runtimeException;
            } catch (Exception e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
                throw runtimeException;
            }
        }
        try {
            FragmentActivity.this.dump("  ", null, printWriter, new String[0]);
            throw runtimeException;
        } catch (Exception e3) {
            Log.e("FragmentManager", "Failed dumping state", e3);
            throw runtimeException;
        }
    }

    private void a(ArrayList arrayList, ArrayList arrayList2) {
        int indexOf;
        int indexOf2;
        ArrayList arrayList3 = this.B;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (i2 < size) {
            i iVar = (i) this.B.get(i2);
            if (arrayList != null && !i.a(iVar) && (indexOf2 = arrayList.indexOf(i.b(iVar))) != -1 && ((Boolean) arrayList2.get(indexOf2)).booleanValue()) {
                iVar.a();
            } else if (iVar.c() || (arrayList != null && i.b(iVar).a(arrayList, 0, arrayList.size()))) {
                this.B.remove(i2);
                i2--;
                size--;
                if (arrayList == null || i.a(iVar) || (indexOf = arrayList.indexOf(i.b(iVar))) == -1 || !((Boolean) arrayList2.get(indexOf)).booleanValue()) {
                    iVar.b();
                } else {
                    iVar.a();
                }
            }
            i2++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x014b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(java.util.ArrayList r20, java.util.ArrayList r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 716
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.k.a(java.util.ArrayList, java.util.ArrayList, int, int):void");
    }

    static boolean a(Animator animator) {
        if (animator == null) {
            return false;
        }
        if (animator instanceof ValueAnimator) {
            for (PropertyValuesHolder propertyValuesHolder : ((ValueAnimator) animator).getValues()) {
                if ("alpha".equals(propertyValuesHolder.getPropertyName())) {
                    return true;
                }
            }
        } else if (animator instanceof AnimatorSet) {
            ArrayList childAnimations = ((AnimatorSet) animator).getChildAnimations();
            for (int i2 = 0; i2 < childAnimations.size(); i2++) {
                if (a((Animator) childAnimations.get(i2))) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean b(ArrayList arrayList, ArrayList arrayList2) {
        synchronized (this) {
            if (this.b != null && this.b.size() != 0) {
                int size = this.b.size();
                boolean z = false;
                for (int i2 = 0; i2 < size; i2++) {
                    z |= ((g) this.b.get(i2)).a(arrayList, arrayList2);
                }
                this.b.clear();
                this.n.e().removeCallbacks(this.D);
                return z;
            }
            return false;
        }
    }

    private void c(int i2) {
        try {
            this.c = true;
            a(i2, false);
            this.c = false;
            o();
        } catch (Throwable th) {
            this.c = false;
            throw th;
        }
    }

    private void c(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        if (arrayList2 == null || arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        a(arrayList, arrayList2);
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            if (!((android.support.v4.app.b) arrayList.get(i2)).s) {
                if (i3 != i2) {
                    a(arrayList, arrayList2, i3, i2);
                }
                i3 = i2 + 1;
                if (((Boolean) arrayList2.get(i2)).booleanValue()) {
                    while (i3 < size && ((Boolean) arrayList2.get(i3)).booleanValue() && !((android.support.v4.app.b) arrayList.get(i3)).s) {
                        i3++;
                    }
                }
                a(arrayList, arrayList2, i2, i3);
                i2 = i3 - 1;
            }
            i2++;
        }
        if (i3 != size) {
            a(arrayList, arrayList2, i3, size);
        }
    }

    private void c(boolean z) {
        if (this.c) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (Looper.myLooper() != this.n.e().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z) {
            w();
        }
        if (this.w == null) {
            this.w = new ArrayList();
            this.x = new ArrayList();
        }
        this.c = true;
        try {
            a((ArrayList) null, (ArrayList) null);
        } finally {
            this.c = false;
        }
    }

    public static int d(int i2) {
        if (i2 == 4097) {
            return 8194;
        }
        if (i2 != 4099) {
            return i2 != 8194 ? 0 : 4097;
        }
        return 4099;
    }

    private void v() {
        SparseArray sparseArray = this.f;
        if (sparseArray != null) {
            for (int size = sparseArray.size() - 1; size >= 0; size--) {
                if (this.f.valueAt(size) == null) {
                    SparseArray sparseArray2 = this.f;
                    sparseArray2.delete(sparseArray2.keyAt(size));
                }
            }
        }
    }

    private void w() {
        if (this.s) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.u == null) {
            return;
        }
        StringBuilder a2 = d.a.a.a.a.a("Can not perform this action inside of ");
        a2.append(this.u);
        throw new IllegalStateException(a2.toString());
    }

    private void x() {
        this.c = false;
        this.x.clear();
        this.w.clear();
    }

    private void y() {
        synchronized (this) {
            boolean z = false;
            boolean z2 = (this.B == null || this.B.isEmpty()) ? false : true;
            if (this.b != null && this.b.size() == 1) {
                z = true;
            }
            if (z2 || z) {
                this.n.e().removeCallbacks(this.D);
                this.n.e().post(this.D);
            }
        }
    }

    public int a(android.support.v4.app.b bVar) {
        synchronized (this) {
            if (this.j != null && this.j.size() > 0) {
                int intValue = ((Integer) this.j.remove(this.j.size() - 1)).intValue();
                this.i.set(intValue, bVar);
                return intValue;
            }
            if (this.i == null) {
                this.i = new ArrayList();
            }
            int size = this.i.size();
            this.i.add(bVar);
            return size;
        }
    }

    public Fragment a(int i2) {
        for (int size = this.e.size() - 1; size >= 0; size--) {
            Fragment fragment = (Fragment) this.e.get(size);
            if (fragment != null && fragment.mFragmentId == i2) {
                return fragment;
            }
        }
        SparseArray sparseArray = this.f;
        if (sparseArray == null) {
            return null;
        }
        for (int size2 = sparseArray.size() - 1; size2 >= 0; size2--) {
            Fragment fragment2 = (Fragment) this.f.valueAt(size2);
            if (fragment2 != null && fragment2.mFragmentId == i2) {
                return fragment2;
            }
        }
        return null;
    }

    public Fragment a(String str) {
        if (str != null) {
            for (int size = this.e.size() - 1; size >= 0; size--) {
                Fragment fragment = (Fragment) this.e.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        SparseArray sparseArray = this.f;
        if (sparseArray == null || str == null) {
            return null;
        }
        for (int size2 = sparseArray.size() - 1; size2 >= 0; size2--) {
            Fragment fragment2 = (Fragment) this.f.valueAt(size2);
            if (fragment2 != null && str.equals(fragment2.mTag)) {
                return fragment2;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    android.support.v4.app.k.d a(android.support.v4.app.Fragment r7, int r8, boolean r9, int r10) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.k.a(android.support.v4.app.Fragment, int, boolean, int):android.support.v4.app.k$d");
    }

    public p a() {
        return new android.support.v4.app.b(this);
    }

    public void a(int i2, int i3) {
        if (i2 < 0) {
            throw new IllegalArgumentException(d.a.a.a.a.a("Bad id: ", i2));
        }
        a((g) new h(null, i2, i3), false);
    }

    public void a(int i2, android.support.v4.app.b bVar) {
        synchronized (this) {
            if (this.i == null) {
                this.i = new ArrayList();
            }
            int size = this.i.size();
            if (i2 < size) {
                this.i.set(i2, bVar);
            } else {
                while (size < i2) {
                    this.i.add((Object) null);
                    if (this.j == null) {
                        this.j = new ArrayList();
                    }
                    this.j.add(Integer.valueOf(size));
                    size++;
                }
                this.i.add(bVar);
            }
        }
    }

    void a(int i2, boolean z) {
        android.support.v4.app.i iVar;
        if (this.n == null && i2 != 0) {
            throw new IllegalStateException("No activity");
        }
        if (z || i2 != this.m) {
            this.m = i2;
            if (this.f != null) {
                int size = this.e.size();
                boolean z2 = false;
                for (int i3 = 0; i3 < size; i3++) {
                    Fragment fragment = (Fragment) this.e.get(i3);
                    e(fragment);
                    c0 c0Var = fragment.mLoaderManager;
                    if (c0Var != null) {
                        z2 |= c0Var.f();
                    }
                }
                int size2 = this.f.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    Fragment fragment2 = (Fragment) this.f.valueAt(i4);
                    if (fragment2 != null && ((fragment2.mRemoving || fragment2.mDetached) && !fragment2.mIsNewlyAdded)) {
                        e(fragment2);
                        c0 c0Var2 = fragment2.mLoaderManager;
                        if (c0Var2 != null) {
                            z2 |= c0Var2.f();
                        }
                    }
                }
                if (!z2) {
                    u();
                }
                if (this.r && (iVar = this.n) != null && this.m == 5) {
                    FragmentActivity.this.supportInvalidateOptionsMenu();
                    this.r = false;
                }
            }
        }
    }

    public void a(Configuration configuration) {
        for (int i2 = 0; i2 < this.e.size(); i2++) {
            Fragment fragment = (Fragment) this.e.get(i2);
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
            }
        }
    }

    void a(Parcelable parcelable, o oVar) {
        List list;
        if (parcelable == null) {
            return;
        }
        FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
        if (fragmentManagerState.b == null) {
            return;
        }
        int i2 = 0;
        if (oVar != null) {
            List b2 = oVar.b();
            list = oVar.a();
            int size = b2 != null ? b2.size() : 0;
            for (int i3 = 0; i3 < size; i3++) {
                Fragment fragment = (Fragment) b2.get(i3);
                int i4 = 0;
                while (true) {
                    FragmentState[] fragmentStateArr = fragmentManagerState.b;
                    if (i4 >= fragmentStateArr.length || fragmentStateArr[i4].c == fragment.mIndex) {
                        break;
                    } else {
                        i4++;
                    }
                }
                FragmentState[] fragmentStateArr2 = fragmentManagerState.b;
                if (i4 == fragmentStateArr2.length) {
                    StringBuilder a2 = d.a.a.a.a.a("Could not find active fragment with index ");
                    a2.append(fragment.mIndex);
                    a((RuntimeException) new IllegalStateException(a2.toString()));
                    throw null;
                }
                FragmentState fragmentState = fragmentStateArr2[i4];
                fragmentState.m = fragment;
                fragment.mSavedViewState = null;
                fragment.mBackStackNesting = 0;
                fragment.mInLayout = false;
                fragment.mAdded = false;
                fragment.mTarget = null;
                Bundle bundle = fragmentState.l;
                if (bundle != null) {
                    bundle.setClassLoader(this.n.b.getClassLoader());
                    fragment.mSavedViewState = fragmentState.l.getSparseParcelableArray("android:view_state");
                    fragment.mSavedFragmentState = fragmentState.l;
                }
            }
        } else {
            list = null;
        }
        this.f = new SparseArray(fragmentManagerState.b.length);
        int i5 = 0;
        while (true) {
            FragmentState[] fragmentStateArr3 = fragmentManagerState.b;
            if (i5 >= fragmentStateArr3.length) {
                break;
            }
            FragmentState fragmentState2 = fragmentStateArr3[i5];
            if (fragmentState2 != null) {
                Fragment a3 = fragmentState2.a(this.n, this.o, this.p, (list == null || i5 >= list.size()) ? null : (o) list.get(i5));
                this.f.put(a3.mIndex, a3);
                fragmentState2.m = null;
            }
            i5++;
        }
        if (oVar != null) {
            List b3 = oVar.b();
            int size2 = b3 != null ? b3.size() : 0;
            for (int i6 = 0; i6 < size2; i6++) {
                Fragment fragment2 = (Fragment) b3.get(i6);
                int i7 = fragment2.mTargetIndex;
                if (i7 >= 0) {
                    fragment2.mTarget = (Fragment) this.f.get(i7);
                    if (fragment2.mTarget == null) {
                        Log.w("FragmentManager", "Re-attaching retained fragment " + fragment2 + " target no longer exists: " + fragment2.mTargetIndex);
                    }
                }
            }
        }
        this.e.clear();
        if (fragmentManagerState.c != null) {
            int i8 = 0;
            while (true) {
                int[] iArr = fragmentManagerState.c;
                if (i8 >= iArr.length) {
                    break;
                }
                Fragment fragment3 = (Fragment) this.f.get(iArr[i8]);
                if (fragment3 == null) {
                    StringBuilder a4 = d.a.a.a.a.a("No instantiated fragment for index #");
                    a4.append(fragmentManagerState.c[i8]);
                    a((RuntimeException) new IllegalStateException(a4.toString()));
                    throw null;
                }
                fragment3.mAdded = true;
                if (this.e.contains(fragment3)) {
                    throw new IllegalStateException("Already added!");
                }
                synchronized (this.e) {
                    this.e.add(fragment3);
                }
                i8++;
            }
        }
        BackStackState[] backStackStateArr = fragmentManagerState.d;
        if (backStackStateArr != null) {
            this.g = new ArrayList(backStackStateArr.length);
            while (true) {
                BackStackState[] backStackStateArr2 = fragmentManagerState.d;
                if (i2 >= backStackStateArr2.length) {
                    break;
                }
                android.support.v4.app.b a5 = backStackStateArr2[i2].a(this);
                this.g.add(a5);
                int i9 = a5.l;
                if (i9 >= 0) {
                    a(i9, a5);
                }
                i2++;
            }
        } else {
            this.g = null;
        }
        int i10 = fragmentManagerState.e;
        if (i10 >= 0) {
            this.q = (Fragment) this.f.get(i10);
        }
        this.d = fragmentManagerState.f;
    }

    public void a(Fragment fragment) {
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            if (this.e.contains(fragment)) {
                throw new IllegalStateException("Fragment already added: " + fragment);
            }
            synchronized (this.e) {
                this.e.add(fragment);
            }
            fragment.mAdded = true;
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.r = true;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:191:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02a1  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x029d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void a(android.support.v4.app.Fragment r17, int r18, int r19, int r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 1068
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.k.a(android.support.v4.app.Fragment, int, int, int, boolean):void");
    }

    void a(Fragment fragment, Context context, boolean z) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            j fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof k) {
                ((k) fragmentManager).a(fragment, context, true);
            }
        }
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            b.b.c.d.i iVar = (b.b.c.d.i) it.next();
            if (!z || ((Boolean) iVar.b).booleanValue()) {
                ((j.b) iVar.a).b();
            }
        }
    }

    void a(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            j fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof k) {
                ((k) fragmentManager).a(fragment, bundle, true);
            }
        }
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            b.b.c.d.i iVar = (b.b.c.d.i) it.next();
            if (!z || ((Boolean) iVar.b).booleanValue()) {
                ((j.b) iVar.a).a();
            }
        }
    }

    void a(Fragment fragment, View view, Bundle bundle, boolean z) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            j fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof k) {
                ((k) fragmentManager).a(fragment, view, bundle, true);
            }
        }
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            b.b.c.d.i iVar = (b.b.c.d.i) it.next();
            if (!z || ((Boolean) iVar.b).booleanValue()) {
                ((j.b) iVar.a).m();
            }
        }
    }

    public void a(Fragment fragment, boolean z) {
        d(fragment);
        if (fragment.mDetached) {
            return;
        }
        if (this.e.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.e) {
            this.e.add(fragment);
        }
        fragment.mAdded = true;
        fragment.mRemoving = false;
        if (fragment.mView == null) {
            fragment.mHiddenChanged = false;
        }
        if (fragment.mHasMenu && fragment.mMenuVisible) {
            this.r = true;
        }
        if (z) {
            a(fragment, this.m, 0, 0, false);
        }
    }

    public void a(g gVar, boolean z) {
        if (!z) {
            w();
        }
        synchronized (this) {
            if (!this.t && this.n != null) {
                if (this.b == null) {
                    this.b = new ArrayList();
                }
                this.b.add(gVar);
                y();
                return;
            }
            if (!z) {
                throw new IllegalStateException("Activity has been destroyed");
            }
        }
    }

    public void a(Menu menu) {
        if (this.m < 1) {
            return;
        }
        for (int i2 = 0; i2 < this.e.size(); i2++) {
            Fragment fragment = (Fragment) this.e.get(i2);
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        int size3;
        int size4;
        int size5;
        String a2 = d.a.a.a.a.a(str, "    ");
        SparseArray sparseArray = this.f;
        if (sparseArray != null && (size5 = sparseArray.size()) > 0) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (int i2 = 0; i2 < size5; i2++) {
                Fragment fragment = (Fragment) this.f.valueAt(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(fragment);
                if (fragment != null) {
                    fragment.dump(a2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        int size6 = this.e.size();
        if (size6 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i3 = 0; i3 < size6; i3++) {
                Fragment fragment2 = (Fragment) this.e.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(fragment2.toString());
            }
        }
        ArrayList arrayList = this.h;
        if (arrayList != null && (size4 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i4 = 0; i4 < size4; i4++) {
                Fragment fragment3 = (Fragment) this.h.get(i4);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(fragment3.toString());
            }
        }
        ArrayList arrayList2 = this.g;
        if (arrayList2 != null && (size3 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i5 = 0; i5 < size3; i5++) {
                android.support.v4.app.b bVar = (android.support.v4.app.b) this.g.get(i5);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i5);
                printWriter.print(": ");
                printWriter.println(bVar.toString());
                bVar.a(a2, printWriter, true);
            }
        }
        synchronized (this) {
            if (this.i != null && (size2 = this.i.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack Indices:");
                for (int i6 = 0; i6 < size2; i6++) {
                    android.support.v4.app.b bVar2 = (android.support.v4.app.b) this.i.get(i6);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i6);
                    printWriter.print(": ");
                    printWriter.println(bVar2);
                }
            }
            if (this.j != null && this.j.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.j.toArray()));
            }
        }
        ArrayList arrayList3 = this.b;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Pending Actions:");
            for (int i7 = 0; i7 < size; i7++) {
                g gVar = (g) this.b.get(i7);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i7);
                printWriter.print(": ");
                printWriter.println(gVar);
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.n);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.o);
        if (this.p != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.p);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.m);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.s);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.t);
        if (this.r) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.r);
        }
        if (this.u != null) {
            printWriter.print(str);
            printWriter.print("  mNoTransactionsBecause=");
            printWriter.println(this.u);
        }
    }

    public void a(boolean z) {
        for (int size = this.e.size() - 1; size >= 0; size--) {
            Fragment fragment = (Fragment) this.e.get(size);
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z);
            }
        }
    }

    public boolean a(Menu menu, MenuInflater menuInflater) {
        if (this.m < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z = false;
        for (int i2 = 0; i2 < this.e.size(); i2++) {
            Fragment fragment = (Fragment) this.e.get(i2);
            if (fragment != null && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(fragment);
                z = true;
            }
        }
        if (this.h != null) {
            for (int i3 = 0; i3 < this.h.size(); i3++) {
                Fragment fragment2 = (Fragment) this.h.get(i3);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.h = arrayList;
        return z;
    }

    public boolean a(MenuItem menuItem) {
        if (this.m < 1) {
            return false;
        }
        for (int i2 = 0; i2 < this.e.size(); i2++) {
            Fragment fragment = (Fragment) this.e.get(i2);
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    boolean a(ArrayList arrayList, ArrayList arrayList2, String str, int i2, int i3) {
        int size;
        ArrayList arrayList3 = this.g;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i2 < 0 && (i3 & 1) == 0) {
            int size2 = arrayList3.size() - 1;
            if (size2 < 0) {
                return false;
            }
            arrayList.add(this.g.remove(size2));
            arrayList2.add(true);
        } else {
            if (str != null || i2 >= 0) {
                size = this.g.size() - 1;
                while (size >= 0) {
                    android.support.v4.app.b bVar = (android.support.v4.app.b) this.g.get(size);
                    if ((str != null && str.equals(bVar.j)) || (i2 >= 0 && i2 == bVar.l)) {
                        break;
                    }
                    size--;
                }
                if (size < 0) {
                    return false;
                }
                if ((i3 & 1) != 0) {
                    while (true) {
                        size--;
                        if (size < 0) {
                            break;
                        }
                        android.support.v4.app.b bVar2 = (android.support.v4.app.b) this.g.get(size);
                        if (str == null || !str.equals(bVar2.j)) {
                            if (i2 < 0 || i2 != bVar2.l) {
                                break;
                            }
                        }
                    }
                }
            } else {
                size = -1;
            }
            if (size == this.g.size() - 1) {
                return false;
            }
            for (int size3 = this.g.size() - 1; size3 > size; size3--) {
                arrayList.add(this.g.remove(size3));
                arrayList2.add(true);
            }
        }
        return true;
    }

    public Fragment b(String str) {
        Fragment findFragmentByWho;
        SparseArray sparseArray = this.f;
        if (sparseArray == null || str == null) {
            return null;
        }
        for (int size = sparseArray.size() - 1; size >= 0; size--) {
            Fragment fragment = (Fragment) this.f.valueAt(size);
            if (fragment != null && (findFragmentByWho = fragment.findFragmentByWho(str)) != null) {
                return findFragmentByWho;
            }
        }
        return null;
    }

    public List b() {
        List list;
        if (this.e.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        synchronized (this.e) {
            list = (List) this.e.clone();
        }
        return list;
    }

    public void b(int i2) {
        synchronized (this) {
            this.i.set(i2, (Object) null);
            if (this.j == null) {
                this.j = new ArrayList();
            }
            this.j.add(Integer.valueOf(i2));
        }
    }

    public void b(Fragment fragment) {
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            synchronized (this.e) {
                this.e.remove(fragment);
            }
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.r = true;
            }
            fragment.mAdded = false;
        }
    }

    void b(Fragment fragment, Context context, boolean z) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            j fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof k) {
                ((k) fragmentManager).b(fragment, context, true);
            }
        }
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            b.b.c.d.i iVar = (b.b.c.d.i) it.next();
            if (!z || ((Boolean) iVar.b).booleanValue()) {
                ((j.b) iVar.a).g();
            }
        }
    }

    void b(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            j fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof k) {
                ((k) fragmentManager).b(fragment, bundle, true);
            }
        }
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            b.b.c.d.i iVar = (b.b.c.d.i) it.next();
            if (!z || ((Boolean) iVar.b).booleanValue()) {
                ((j.b) iVar.a).c();
            }
        }
    }

    void b(Fragment fragment, boolean z) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            j fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof k) {
                ((k) fragmentManager).b(fragment, true);
            }
        }
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            b.b.c.d.i iVar = (b.b.c.d.i) it.next();
            if (!z || ((Boolean) iVar.b).booleanValue()) {
                ((j.b) iVar.a).d();
            }
        }
    }

    public void b(boolean z) {
        for (int size = this.e.size() - 1; size >= 0; size--) {
            Fragment fragment = (Fragment) this.e.get(size);
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z);
            }
        }
    }

    public boolean b(Menu menu) {
        if (this.m < 1) {
            return false;
        }
        boolean z = false;
        for (int i2 = 0; i2 < this.e.size(); i2++) {
            Fragment fragment = (Fragment) this.e.get(i2);
            if (fragment != null && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    public boolean b(MenuItem menuItem) {
        if (this.m < 1) {
            return false;
        }
        for (int i2 = 0; i2 < this.e.size(); i2++) {
            Fragment fragment = (Fragment) this.e.get(i2);
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void c(Fragment fragment) {
        if (fragment.mHidden) {
            return;
        }
        fragment.mHidden = true;
        fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
    }

    void c(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            j fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof k) {
                ((k) fragmentManager).c(fragment, bundle, true);
            }
        }
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            b.b.c.d.i iVar = (b.b.c.d.i) it.next();
            if (!z || ((Boolean) iVar.b).booleanValue()) {
                ((j.b) iVar.a).h();
            }
        }
    }

    void c(Fragment fragment, boolean z) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            j fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof k) {
                ((k) fragmentManager).c(fragment, true);
            }
        }
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            b.b.c.d.i iVar = (b.b.c.d.i) it.next();
            if (!z || ((Boolean) iVar.b).booleanValue()) {
                ((j.b) iVar.a).e();
            }
        }
    }

    public boolean c() {
        j peekChildFragmentManager;
        w();
        o();
        c(true);
        Fragment fragment = this.q;
        if (fragment != null && (peekChildFragmentManager = fragment.peekChildFragmentManager()) != null && peekChildFragmentManager.c()) {
            return true;
        }
        boolean a2 = a(this.w, this.x, (String) null, -1, 0);
        if (a2) {
            this.c = true;
            try {
                c(this.w, this.x);
            } finally {
                x();
            }
        }
        n();
        v();
        return a2;
    }

    public void d() {
        this.s = false;
        c(2);
    }

    void d(Fragment fragment) {
        if (fragment.mIndex >= 0) {
            return;
        }
        int i2 = this.d;
        this.d = i2 + 1;
        fragment.setIndex(i2, this.p);
        if (this.f == null) {
            this.f = new SparseArray();
        }
        this.f.put(fragment.mIndex, fragment);
    }

    void d(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            j fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof k) {
                ((k) fragmentManager).d(fragment, bundle, true);
            }
        }
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            b.b.c.d.i iVar = (b.b.c.d.i) it.next();
            if (!z || ((Boolean) iVar.b).booleanValue()) {
                ((j.b) iVar.a).j();
            }
        }
    }

    void d(Fragment fragment, boolean z) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            j fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof k) {
                ((k) fragmentManager).d(fragment, true);
            }
        }
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            b.b.c.d.i iVar = (b.b.c.d.i) it.next();
            if (!z || ((Boolean) iVar.b).booleanValue()) {
                ((j.b) iVar.a).f();
            }
        }
    }

    public void e() {
        this.s = false;
        c(1);
    }

    void e(Fragment fragment) {
        Animator animator;
        if (fragment == null) {
            return;
        }
        int i2 = this.m;
        if (fragment.mRemoving) {
            i2 = fragment.isInBackStack() ? Math.min(i2, 1) : Math.min(i2, 0);
        }
        a(fragment, i2, fragment.getNextTransition(), fragment.getNextTransitionStyle(), false);
        View view = fragment.mView;
        if (view != null) {
            ViewGroup viewGroup = fragment.mContainer;
            Fragment fragment2 = null;
            if (viewGroup != null && view != null) {
                int indexOf = this.e.indexOf(fragment);
                while (true) {
                    indexOf--;
                    if (indexOf < 0) {
                        break;
                    }
                    Fragment fragment3 = (Fragment) this.e.get(indexOf);
                    if (fragment3.mContainer == viewGroup && fragment3.mView != null) {
                        fragment2 = fragment3;
                        break;
                    }
                }
            }
            if (fragment2 != null) {
                View view2 = fragment2.mView;
                ViewGroup viewGroup2 = fragment.mContainer;
                int indexOfChild = viewGroup2.indexOfChild(view2);
                int indexOfChild2 = viewGroup2.indexOfChild(fragment.mView);
                if (indexOfChild2 < indexOfChild) {
                    viewGroup2.removeViewAt(indexOfChild2);
                    viewGroup2.addView(fragment.mView, indexOfChild);
                }
            }
            if (fragment.mIsNewlyAdded && fragment.mContainer != null) {
                float f2 = fragment.mPostponedAlpha;
                if (f2 > 0.0f) {
                    fragment.mView.setAlpha(f2);
                }
                fragment.mPostponedAlpha = 0.0f;
                fragment.mIsNewlyAdded = false;
                d a2 = a(fragment, fragment.getNextTransition(), true, fragment.getNextTransitionStyle());
                if (a2 != null) {
                    a(fragment.mView, a2);
                    Animation animation = a2.a;
                    if (animation != null) {
                        fragment.mView.startAnimation(animation);
                    } else {
                        a2.b.setTarget(fragment.mView);
                        a2.b.start();
                    }
                }
            }
        }
        if (fragment.mHiddenChanged) {
            if (fragment.mView != null) {
                d a3 = a(fragment, fragment.getNextTransition(), !fragment.mHidden, fragment.getNextTransitionStyle());
                if (a3 == null || (animator = a3.b) == null) {
                    if (a3 != null) {
                        a(fragment.mView, a3);
                        fragment.mView.startAnimation(a3.a);
                        a3.a.start();
                    }
                    fragment.mView.setVisibility((!fragment.mHidden || fragment.isHideReplaced()) ? 0 : 8);
                    if (fragment.isHideReplaced()) {
                        fragment.setHideReplaced(false);
                    }
                } else {
                    animator.setTarget(fragment.mView);
                    if (!fragment.mHidden) {
                        fragment.mView.setVisibility(0);
                    } else if (fragment.isHideReplaced()) {
                        fragment.setHideReplaced(false);
                    } else {
                        ViewGroup viewGroup3 = fragment.mContainer;
                        View view3 = fragment.mView;
                        viewGroup3.startViewTransition(view3);
                        a3.b.addListener(new n(this, viewGroup3, view3, fragment));
                    }
                    a(fragment.mView, a3);
                    a3.b.start();
                }
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.r = true;
            }
            fragment.mHiddenChanged = false;
            fragment.onHiddenChanged(fragment.mHidden);
        }
    }

    void e(Fragment fragment, boolean z) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            j fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof k) {
                ((k) fragmentManager).e(fragment, true);
            }
        }
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            b.b.c.d.i iVar = (b.b.c.d.i) it.next();
            if (!z || ((Boolean) iVar.b).booleanValue()) {
                ((j.b) iVar.a).i();
            }
        }
    }

    public void f() {
        this.t = true;
        o();
        c(0);
        this.n = null;
        this.o = null;
        this.p = null;
    }

    public void f(Fragment fragment) {
        if (fragment.mDeferStart) {
            if (this.c) {
                this.v = true;
            } else {
                fragment.mDeferStart = false;
                a(fragment, this.m, 0, 0, false);
            }
        }
    }

    void f(Fragment fragment, boolean z) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            j fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof k) {
                ((k) fragmentManager).f(fragment, true);
            }
        }
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            b.b.c.d.i iVar = (b.b.c.d.i) it.next();
            if (!z || ((Boolean) iVar.b).booleanValue()) {
                ((j.b) iVar.a).k();
            }
        }
    }

    public void g() {
        c(1);
    }

    public void g(Fragment fragment) {
        boolean z = !fragment.isInBackStack();
        if (!fragment.mDetached || z) {
            synchronized (this.e) {
                this.e.remove(fragment);
            }
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.r = true;
            }
            fragment.mAdded = false;
            fragment.mRemoving = true;
        }
    }

    void g(Fragment fragment, boolean z) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            j fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof k) {
                ((k) fragmentManager).g(fragment, true);
            }
        }
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            b.b.c.d.i iVar = (b.b.c.d.i) it.next();
            if (!z || ((Boolean) iVar.b).booleanValue()) {
                ((j.b) iVar.a).l();
            }
        }
    }

    public void h() {
        for (int i2 = 0; i2 < this.e.size(); i2++) {
            Fragment fragment = (Fragment) this.e.get(i2);
            if (fragment != null) {
                fragment.performLowMemory();
            }
        }
    }

    void h(Fragment fragment) {
        if (fragment.mInnerView == null) {
            return;
        }
        SparseArray sparseArray = this.A;
        if (sparseArray == null) {
            this.A = new SparseArray();
        } else {
            sparseArray.clear();
        }
        fragment.mInnerView.saveHierarchyState(this.A);
        if (this.A.size() > 0) {
            fragment.mSavedViewState = this.A;
            this.A = null;
        }
    }

    void h(Fragment fragment, boolean z) {
        Fragment fragment2 = this.p;
        if (fragment2 != null) {
            j fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof k) {
                ((k) fragmentManager).h(fragment, true);
            }
        }
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            b.b.c.d.i iVar = (b.b.c.d.i) it.next();
            if (!z || ((Boolean) iVar.b).booleanValue()) {
                ((j.b) iVar.a).n();
            }
        }
    }

    public void i() {
        c(4);
    }

    public void i(Fragment fragment) {
        if (fragment == null || (this.f.get(fragment.mIndex) == fragment && (fragment.mHost == null || fragment.getFragmentManager() == this))) {
            this.q = fragment;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public void j() {
        c(2);
    }

    public void j(Fragment fragment) {
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    public void k() {
        this.s = false;
        c(5);
    }

    public void l() {
        this.s = false;
        c(4);
    }

    public void m() {
        this.s = true;
        c(3);
    }

    void n() {
        c0 c0Var;
        if (this.v) {
            boolean z = false;
            for (int i2 = 0; i2 < this.f.size(); i2++) {
                Fragment fragment = (Fragment) this.f.valueAt(i2);
                if (fragment != null && (c0Var = fragment.mLoaderManager) != null) {
                    z |= c0Var.f();
                }
            }
            if (z) {
                return;
            }
            this.v = false;
            u();
        }
    }

    public boolean o() {
        c(true);
        boolean z = false;
        while (b(this.w, this.x)) {
            this.c = true;
            try {
                c(this.w, this.x);
                x();
                z = true;
            } catch (Throwable th) {
                x();
                throw th;
            }
        }
        n();
        v();
        return z;
    }

    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        Fragment fragment;
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue((String) null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f.a);
        if (attributeValue == null) {
            attributeValue = obtainStyledAttributes.getString(0);
        }
        String str2 = attributeValue;
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (!Fragment.isSupportFragmentClass(this.n.b, str2)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str2);
        }
        Fragment a2 = resourceId != -1 ? a(resourceId) : null;
        if (a2 == null && string != null) {
            a2 = a(string);
        }
        if (a2 == null && id != -1) {
            a2 = a(id);
        }
        if (a2 == null) {
            Fragment a3 = this.o.a(context, str2, null);
            a3.mFromLayout = true;
            a3.mFragmentId = resourceId != 0 ? resourceId : id;
            a3.mContainerId = id;
            a3.mTag = string;
            a3.mInLayout = true;
            a3.mFragmentManager = this;
            android.support.v4.app.i iVar = this.n;
            a3.mHost = iVar;
            a3.onInflate(iVar.b, attributeSet, a3.mSavedFragmentState);
            a(a3, true);
            fragment = a3;
        } else {
            if (a2.mInLayout) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + str2);
            }
            a2.mInLayout = true;
            android.support.v4.app.i iVar2 = this.n;
            a2.mHost = iVar2;
            if (!a2.mRetaining) {
                a2.onInflate(iVar2.b, attributeSet, a2.mSavedFragmentState);
            }
            fragment = a2;
        }
        if (this.m >= 1 || !fragment.mFromLayout) {
            a(fragment, this.m, 0, 0, false);
        } else {
            a(fragment, 1, 0, 0, false);
        }
        View view2 = fragment.mView;
        if (view2 == null) {
            throw new IllegalStateException(d.a.a.a.a.a("Fragment ", str2, " did not create a view."));
        }
        if (resourceId != 0) {
            view2.setId(resourceId);
        }
        if (fragment.mView.getTag() == null) {
            fragment.mView.setTag(string);
        }
        return fragment.mView;
    }

    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    LayoutInflater.Factory2 p() {
        return this;
    }

    public void q() {
        this.C = null;
        this.s = false;
        int size = this.e.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = (Fragment) this.e.get(i2);
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    o r() {
        a(this.C);
        return this.C;
    }

    Parcelable s() {
        int size;
        int i2;
        BackStackState[] backStackStateArr;
        int[] iArr;
        int size2;
        Bundle bundle;
        if (this.B != null) {
            while (!this.B.isEmpty()) {
                ((i) this.B.remove(0)).b();
            }
        }
        SparseArray sparseArray = this.f;
        if (sparseArray == null) {
            i2 = 0;
            size = 0;
        } else {
            size = sparseArray.size();
            i2 = 0;
        }
        while (true) {
            backStackStateArr = null;
            if (i2 >= size) {
                break;
            }
            Fragment fragment = (Fragment) this.f.valueAt(i2);
            if (fragment != null) {
                if (fragment.getAnimatingAway() != null) {
                    int stateAfterAnimating = fragment.getStateAfterAnimating();
                    View animatingAway = fragment.getAnimatingAway();
                    Animation animation = animatingAway.getAnimation();
                    if (animation != null) {
                        animation.cancel();
                        animatingAway.clearAnimation();
                    }
                    fragment.setAnimatingAway(null);
                    a(fragment, stateAfterAnimating, 0, 0, false);
                } else if (fragment.getAnimator() != null) {
                    fragment.getAnimator().end();
                }
            }
            i2++;
        }
        o();
        this.s = true;
        this.C = null;
        SparseArray sparseArray2 = this.f;
        if (sparseArray2 == null || sparseArray2.size() <= 0) {
            return null;
        }
        int size3 = this.f.size();
        FragmentState[] fragmentStateArr = new FragmentState[size3];
        boolean z = false;
        for (int i3 = 0; i3 < size3; i3++) {
            Fragment fragment2 = (Fragment) this.f.valueAt(i3);
            if (fragment2 != null) {
                if (fragment2.mIndex < 0) {
                    a((RuntimeException) new IllegalStateException("Failure saving state: active " + fragment2 + " has cleared index: " + fragment2.mIndex));
                    throw null;
                }
                FragmentState fragmentState = new FragmentState(fragment2);
                fragmentStateArr[i3] = fragmentState;
                if (fragment2.mState <= 0 || fragmentState.l != null) {
                    fragmentState.l = fragment2.mSavedFragmentState;
                } else {
                    if (this.z == null) {
                        this.z = new Bundle();
                    }
                    fragment2.performSaveInstanceState(this.z);
                    d(fragment2, this.z, false);
                    if (this.z.isEmpty()) {
                        bundle = null;
                    } else {
                        bundle = this.z;
                        this.z = null;
                    }
                    if (fragment2.mView != null) {
                        h(fragment2);
                    }
                    if (fragment2.mSavedViewState != null) {
                        if (bundle == null) {
                            bundle = new Bundle();
                        }
                        bundle.putSparseParcelableArray("android:view_state", fragment2.mSavedViewState);
                    }
                    if (!fragment2.mUserVisibleHint) {
                        if (bundle == null) {
                            bundle = new Bundle();
                        }
                        bundle.putBoolean("android:user_visible_hint", fragment2.mUserVisibleHint);
                    }
                    fragmentState.l = bundle;
                    Fragment fragment3 = fragment2.mTarget;
                    if (fragment3 != null) {
                        if (fragment3.mIndex < 0) {
                            a((RuntimeException) new IllegalStateException("Failure saving state: " + fragment2 + " has target not in fragment manager: " + fragment2.mTarget));
                            throw null;
                        }
                        if (fragmentState.l == null) {
                            fragmentState.l = new Bundle();
                        }
                        Bundle bundle2 = fragmentState.l;
                        Fragment fragment4 = fragment2.mTarget;
                        int i4 = fragment4.mIndex;
                        if (i4 < 0) {
                            a((RuntimeException) new IllegalStateException(d.a.a.a.a.a("Fragment ", fragment4, " is not currently in the FragmentManager")));
                            throw null;
                        }
                        bundle2.putInt("android:target_state", i4);
                        int i5 = fragment2.mTargetRequestCode;
                        if (i5 != 0) {
                            fragmentState.l.putInt("android:target_req_state", i5);
                        }
                    }
                }
                z = true;
            }
        }
        if (!z) {
            return null;
        }
        int size4 = this.e.size();
        if (size4 > 0) {
            iArr = new int[size4];
            for (int i6 = 0; i6 < size4; i6++) {
                iArr[i6] = ((Fragment) this.e.get(i6)).mIndex;
                if (iArr[i6] < 0) {
                    StringBuilder a2 = d.a.a.a.a.a("Failure saving state: active ");
                    a2.append(this.e.get(i6));
                    a2.append(" has cleared index: ");
                    a2.append(iArr[i6]);
                    a((RuntimeException) new IllegalStateException(a2.toString()));
                    throw null;
                }
            }
        } else {
            iArr = null;
        }
        ArrayList arrayList = this.g;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            backStackStateArr = new BackStackState[size2];
            for (int i7 = 0; i7 < size2; i7++) {
                backStackStateArr[i7] = new BackStackState((android.support.v4.app.b) this.g.get(i7));
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.b = fragmentStateArr;
        fragmentManagerState.c = iArr;
        fragmentManagerState.d = backStackStateArr;
        Fragment fragment5 = this.q;
        if (fragment5 != null) {
            fragmentManagerState.e = fragment5.mIndex;
        }
        fragmentManagerState.f = this.d;
        t();
        return fragmentManagerState;
    }

    void t() {
        ArrayList arrayList;
        ArrayList arrayList2;
        o oVar;
        if (this.f != null) {
            arrayList = null;
            arrayList2 = null;
            for (int i2 = 0; i2 < this.f.size(); i2++) {
                Fragment fragment = (Fragment) this.f.valueAt(i2);
                if (fragment != null) {
                    if (fragment.mRetainInstance) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(fragment);
                        Fragment fragment2 = fragment.mTarget;
                        fragment.mTargetIndex = fragment2 != null ? fragment2.mIndex : -1;
                    }
                    k kVar = fragment.mChildFragmentManager;
                    if (kVar != null) {
                        kVar.t();
                        oVar = fragment.mChildFragmentManager.C;
                    } else {
                        oVar = fragment.mChildNonConfig;
                    }
                    if (arrayList2 == null && oVar != null) {
                        arrayList2 = new ArrayList(this.f.size());
                        for (int i3 = 0; i3 < i2; i3++) {
                            arrayList2.add((Object) null);
                        }
                    }
                    if (arrayList2 != null) {
                        arrayList2.add(oVar);
                    }
                }
            }
        } else {
            arrayList = null;
            arrayList2 = null;
        }
        if (arrayList == null && arrayList2 == null) {
            this.C = null;
        } else {
            this.C = new o(arrayList, arrayList2);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.p;
        if (fragment != null) {
            a.a.g.a(fragment, sb);
        } else {
            a.a.g.a(this.n, sb);
        }
        sb.append("}}");
        return sb.toString();
    }

    void u() {
        if (this.f == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f.size(); i2++) {
            Fragment fragment = (Fragment) this.f.valueAt(i2);
            if (fragment != null) {
                f(fragment);
            }
        }
    }
}
