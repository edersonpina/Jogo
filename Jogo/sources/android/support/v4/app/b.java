package android.support.v4.app;

import android.support.v4.app.Fragment;
import android.support.v4.app.j;
import android.support.v4.app.k;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* compiled from: BackStackRecord.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
final class b extends p implements j.a, k.g {
    final k a;
    int c;
    int d;
    int e;
    int f;
    int g;
    int h;
    boolean i;
    String j;
    boolean k;
    int m;
    CharSequence n;
    int o;
    CharSequence p;
    ArrayList q;
    ArrayList r;
    ArrayList t;
    ArrayList b = new ArrayList();
    int l = -1;
    boolean s = false;

    /* compiled from: BackStackRecord.java */
    static final class a {
        int a;
        Fragment b;
        int c;
        int d;
        int e;
        int f;

        a() {
        }

        a(int i, Fragment fragment) {
            this.a = i;
            this.b = fragment;
        }
    }

    public b(k kVar) {
        this.a = kVar;
    }

    private static boolean b(a aVar) {
        Fragment fragment = aVar.b;
        return (fragment == null || !fragment.mAdded || fragment.mView == null || fragment.mDetached || fragment.mHidden || !fragment.isPostponed()) ? false : true;
    }

    public int a() {
        return a(false);
    }

    int a(boolean z) {
        if (this.k) {
            throw new IllegalStateException("commit already called");
        }
        this.k = true;
        if (this.i) {
            this.l = this.a.a(this);
        } else {
            this.l = -1;
        }
        this.a.a(this, z);
        return this.l;
    }

    public p a(Fragment fragment, String str) {
        Class cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            StringBuilder a2 = d.a.a.a.a.a("Fragment ");
            a2.append(cls.getCanonicalName());
            a2.append(" must be a public static class to be  properly recreated from");
            a2.append(" instance state.");
            throw new IllegalStateException(a2.toString());
        }
        fragment.mFragmentManager = this.a;
        if (str != null) {
            String str2 = fragment.mTag;
            if (str2 != null && !str.equals(str2)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
            }
            fragment.mTag = str;
        }
        a(new a(1, fragment));
        return this;
    }

    void a(int i) {
        if (this.i) {
            int size = this.b.size();
            for (int i2 = 0; i2 < size; i2++) {
                Fragment fragment = ((a) this.b.get(i2)).b;
                if (fragment != null) {
                    fragment.mBackStackNesting += i;
                }
            }
        }
    }

    void a(Fragment.e eVar) {
        for (int i = 0; i < this.b.size(); i++) {
            a aVar = (a) this.b.get(i);
            if (b(aVar)) {
                aVar.b.setOnStartEnterTransitionListener(eVar);
            }
        }
    }

    void a(a aVar) {
        this.b.add(aVar);
        aVar.c = this.c;
        aVar.d = this.d;
        aVar.e = this.e;
        aVar.f = this.f;
    }

    public void a(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.j);
            printWriter.print(" mIndex=");
            printWriter.print(this.l);
            printWriter.print(" mCommitted=");
            printWriter.println(this.k);
            if (this.g != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.g));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.h));
            }
            if (this.c != 0 || this.d != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.c));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.d));
            }
            if (this.e != 0 || this.f != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.e));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f));
            }
            if (this.m != 0 || this.n != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.m));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.n);
            }
            if (this.o != 0 || this.p != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.o));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.p);
            }
        }
        if (this.b.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        String str3 = str + "    ";
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            a aVar = (a) this.b.get(i);
            switch (aVar.a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                default:
                    StringBuilder a2 = d.a.a.a.a.a("cmd=");
                    a2.append(aVar.a);
                    str2 = a2.toString();
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(aVar.b);
            if (z) {
                if (aVar.c != 0 || aVar.d != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.c));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.d));
                }
                if (aVar.e != 0 || aVar.f != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f));
                }
            }
        }
    }

    boolean a(ArrayList arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.b.size();
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            Fragment fragment = ((a) this.b.get(i4)).b;
            int i5 = fragment != null ? fragment.mContainerId : 0;
            if (i5 != 0 && i5 != i3) {
                for (int i6 = i; i6 < i2; i6++) {
                    b bVar = (b) arrayList.get(i6);
                    int size2 = bVar.b.size();
                    for (int i7 = 0; i7 < size2; i7++) {
                        Fragment fragment2 = ((a) bVar.b.get(i7)).b;
                        if ((fragment2 != null ? fragment2.mContainerId : 0) == i5) {
                            return true;
                        }
                    }
                }
                i3 = i5;
            }
        }
        return false;
    }

    public boolean a(ArrayList arrayList, ArrayList arrayList2) {
        arrayList.add(this);
        arrayList2.add(false);
        if (!this.i) {
            return true;
        }
        k kVar = this.a;
        if (kVar.g == null) {
            kVar.g = new ArrayList();
        }
        kVar.g.add(this);
        return true;
    }

    public int b() {
        return a(true);
    }

    void b(boolean z) {
        for (int size = this.b.size() - 1; size >= 0; size--) {
            a aVar = (a) this.b.get(size);
            Fragment fragment = aVar.b;
            if (fragment != null) {
                fragment.setNextTransition(k.d(this.g), this.h);
            }
            switch (aVar.a) {
                case 1:
                    fragment.setNextAnim(aVar.f);
                    this.a.g(fragment);
                    break;
                case 2:
                default:
                    StringBuilder a2 = d.a.a.a.a.a("Unknown cmd: ");
                    a2.append(aVar.a);
                    throw new IllegalArgumentException(a2.toString());
                case 3:
                    fragment.setNextAnim(aVar.e);
                    this.a.a(fragment, false);
                    break;
                case 4:
                    fragment.setNextAnim(aVar.e);
                    this.a.j(fragment);
                    break;
                case 5:
                    fragment.setNextAnim(aVar.f);
                    this.a.c(fragment);
                    break;
                case 6:
                    fragment.setNextAnim(aVar.e);
                    this.a.a(fragment);
                    break;
                case 7:
                    fragment.setNextAnim(aVar.f);
                    this.a.b(fragment);
                    break;
                case 8:
                    this.a.i(null);
                    break;
                case 9:
                    this.a.i(fragment);
                    break;
            }
            if (!this.s && aVar.a != 3 && fragment != null) {
                this.a.e(fragment);
            }
        }
        if (this.s || !z) {
            return;
        }
        k kVar = this.a;
        kVar.a(kVar.m, true);
    }

    boolean b(int i) {
        int size = this.b.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = ((a) this.b.get(i2)).b;
            int i3 = fragment != null ? fragment.mContainerId : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    void c() {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            a aVar = (a) this.b.get(i);
            Fragment fragment = aVar.b;
            if (fragment != null) {
                fragment.setNextTransition(this.g, this.h);
            }
            switch (aVar.a) {
                case 1:
                    fragment.setNextAnim(aVar.c);
                    this.a.a(fragment, false);
                    break;
                case 2:
                default:
                    StringBuilder a2 = d.a.a.a.a.a("Unknown cmd: ");
                    a2.append(aVar.a);
                    throw new IllegalArgumentException(a2.toString());
                case 3:
                    fragment.setNextAnim(aVar.d);
                    this.a.g(fragment);
                    break;
                case 4:
                    fragment.setNextAnim(aVar.d);
                    this.a.c(fragment);
                    break;
                case 5:
                    fragment.setNextAnim(aVar.c);
                    this.a.j(fragment);
                    break;
                case 6:
                    fragment.setNextAnim(aVar.d);
                    this.a.b(fragment);
                    break;
                case 7:
                    fragment.setNextAnim(aVar.c);
                    this.a.a(fragment);
                    break;
                case 8:
                    this.a.i(fragment);
                    break;
                case 9:
                    this.a.i(null);
                    break;
            }
            if (!this.s && aVar.a != 1 && fragment != null) {
                this.a.e(fragment);
            }
        }
        if (this.s) {
            return;
        }
        k kVar = this.a;
        kVar.a(kVar.m, true);
    }

    boolean d() {
        for (int i = 0; i < this.b.size(); i++) {
            if (b((a) this.b.get(i))) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.l >= 0) {
            sb.append(" #");
            sb.append(this.l);
        }
        if (this.j != null) {
            sb.append(" ");
            sb.append(this.j);
        }
        sb.append("}");
        return sb.toString();
    }
}
