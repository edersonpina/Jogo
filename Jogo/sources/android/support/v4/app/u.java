package android.support.v4.app;

import android.graphics.Rect;
import android.os.Build;
import android.support.v4.app.v;
import android.transition.Transition;
import android.transition.TransitionSet;
import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* compiled from: FragmentTransition.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class u {
    private static final int[] a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8};
    private static final z b;
    private static final z c;

    /* compiled from: FragmentTransition.java */
    static class a {
        public Fragment a;
        public boolean b;
        public b c;
        public Fragment d;
        public boolean e;
        public b f;

        a() {
        }
    }

    static {
        z zVar;
        b = Build.VERSION.SDK_INT >= 21 ? new v() : null;
        try {
            zVar = (z) Class.forName("android.support.transition.FragmentTransitionSupport").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zVar = null;
        }
        c = zVar;
    }

    private static z a(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object exitTransition = fragment.getExitTransition();
            if (exitTransition != null) {
                arrayList.add(exitTransition);
            }
            Object returnTransition = fragment.getReturnTransition();
            if (returnTransition != null) {
                arrayList.add(returnTransition);
            }
            Object sharedElementReturnTransition = fragment.getSharedElementReturnTransition();
            if (sharedElementReturnTransition != null) {
                arrayList.add(sharedElementReturnTransition);
            }
        }
        if (fragment2 != null) {
            Object enterTransition = fragment2.getEnterTransition();
            if (enterTransition != null) {
                arrayList.add(enterTransition);
            }
            Object reenterTransition = fragment2.getReenterTransition();
            if (reenterTransition != null) {
                arrayList.add(reenterTransition);
            }
            Object sharedElementEnterTransition = fragment2.getSharedElementEnterTransition();
            if (sharedElementEnterTransition != null) {
                arrayList.add(sharedElementEnterTransition);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        z zVar = b;
        if (zVar != null && a(zVar, (List) arrayList)) {
            return b;
        }
        z zVar2 = c;
        if (zVar2 != null && a(zVar2, (List) arrayList)) {
            return c;
        }
        if (b == null && c == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    static /* synthetic */ View a(b.b.c.d.a aVar, a aVar2, Object obj, boolean z) {
        return b(aVar, aVar2, obj, z);
    }

    static /* synthetic */ b.b.c.d.a a(z zVar, b.b.c.d.a aVar, Object obj, a aVar2) {
        return b(zVar, aVar, obj, aVar2);
    }

    private static Object a(z zVar, Fragment fragment, Fragment fragment2, boolean z) {
        if (fragment == null || fragment2 == null) {
            return null;
        }
        Object b2 = zVar.b(z ? fragment2.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition());
        if (b2 == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition((Transition) b2);
        return transitionSet;
    }

    private static Object a(z zVar, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return zVar.b(z ? fragment.getReenterTransition() : fragment.getEnterTransition());
    }

    private static Object a(z zVar, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        return (obj == null || obj2 == null || fragment == null) ? true : z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap() ? zVar.b(obj2, obj, obj3) : zVar.a(obj2, obj, obj3);
    }

    static /* synthetic */ ArrayList a(z zVar, Object obj, Fragment fragment, ArrayList arrayList, View view) {
        return b(zVar, obj, fragment, arrayList, view);
    }

    static /* synthetic */ void a(Fragment fragment, Fragment fragment2, boolean z, b.b.c.d.a aVar, boolean z2) {
        b(fragment, fragment2, z, aVar, z2);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void a(android.support.v4.app.b r11, android.support.v4.app.b.a r12, android.util.SparseArray r13, boolean r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 247
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.u.a(android.support.v4.app.b, android.support.v4.app.b$a, android.util.SparseArray, boolean, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:160:0x03e7  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0417  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0455 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0222  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static void a(android.support.v4.app.k r39, java.util.ArrayList r40, java.util.ArrayList r41, int r42, int r43, boolean r44) {
        /*
            Method dump skipped, instructions count: 1130
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.u.a(android.support.v4.app.k, java.util.ArrayList, java.util.ArrayList, int, int, boolean):void");
    }

    private static void a(z zVar, Object obj, Object obj2, b.b.c.d.a aVar, boolean z, b bVar) {
        ArrayList arrayList = bVar.q;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        View view = (View) aVar.get(z ? (String) bVar.r.get(0) : (String) bVar.q.get(0));
        zVar.b(obj, view);
        if (obj2 != null) {
            v vVar = (v) zVar;
            if (view != null) {
                Rect rect = new Rect();
                vVar.a(view, rect);
                ((Transition) obj2).setEpicenterCallback(new v.a(vVar, rect));
            }
        }
    }

    static /* synthetic */ void a(ArrayList arrayList, int i) {
        b(arrayList, i);
    }

    private static void a(ArrayList arrayList, b.b.c.d.a aVar, Collection collection) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View view = (View) aVar.d(size);
            if (collection.contains(android.support.v4.view.n.f(view))) {
                arrayList.add(view);
            }
        }
    }

    private static boolean a(z zVar, List list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!zVar.a(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    private static View b(b.b.c.d.a aVar, a aVar2, Object obj, boolean z) {
        ArrayList arrayList;
        b bVar = aVar2.c;
        if (obj == null || aVar == null || (arrayList = bVar.q) == null || arrayList.isEmpty()) {
            return null;
        }
        return (View) aVar.get(z ? (String) bVar.q.get(0) : (String) bVar.r.get(0));
    }

    private static b.b.c.d.a b(z zVar, b.b.c.d.a aVar, Object obj, a aVar2) {
        n0 enterTransitionCallback;
        ArrayList arrayList;
        Fragment fragment = aVar2.a;
        View view = fragment.getView();
        if (aVar.isEmpty() || obj == null || view == null) {
            aVar.clear();
            return null;
        }
        b.b.c.d.a aVar3 = new b.b.c.d.a();
        zVar.a((Map) aVar3, view);
        b bVar = aVar2.c;
        if (aVar2.b) {
            enterTransitionCallback = fragment.getExitTransitionCallback();
            arrayList = bVar.q;
        } else {
            enterTransitionCallback = fragment.getEnterTransitionCallback();
            arrayList = bVar.r;
        }
        if (arrayList != null) {
            aVar3.a((Collection) arrayList);
        }
        if (enterTransitionCallback != null) {
            throw null;
        }
        int size = aVar.size();
        while (true) {
            size--;
            if (size < 0) {
                return aVar3;
            }
            if (!aVar3.containsKey((String) aVar.d(size))) {
                aVar.c(size);
            }
        }
    }

    private static Object b(z zVar, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return zVar.b(z ? fragment.getReturnTransition() : fragment.getExitTransition());
    }

    private static ArrayList b(z zVar, Object obj, Fragment fragment, ArrayList arrayList, View view) {
        if (obj == null) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        View view2 = fragment.getView();
        if (view2 != null) {
            zVar.a(arrayList2, view2);
        }
        if (arrayList != null) {
            arrayList2.removeAll(arrayList);
        }
        if (arrayList2.isEmpty()) {
            return arrayList2;
        }
        arrayList2.add(view);
        zVar.a(obj, arrayList2);
        return arrayList2;
    }

    private static void b(Fragment fragment, Fragment fragment2, boolean z, b.b.c.d.a aVar, boolean z2) {
        if ((z ? fragment2.getEnterTransitionCallback() : fragment.getEnterTransitionCallback()) != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = aVar == null ? 0 : aVar.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(aVar.b(i));
                arrayList.add(aVar.d(i));
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    private static void b(ArrayList arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((View) arrayList.get(size)).setVisibility(i);
        }
    }

    private static b.b.c.d.a c(z zVar, b.b.c.d.a aVar, Object obj, a aVar2) {
        n0 exitTransitionCallback;
        ArrayList arrayList;
        if (aVar.isEmpty() || obj == null) {
            aVar.clear();
            return null;
        }
        Fragment fragment = aVar2.d;
        b.b.c.d.a aVar3 = new b.b.c.d.a();
        zVar.a((Map) aVar3, fragment.getView());
        b bVar = aVar2.f;
        if (aVar2.e) {
            exitTransitionCallback = fragment.getEnterTransitionCallback();
            arrayList = bVar.r;
        } else {
            exitTransitionCallback = fragment.getExitTransitionCallback();
            arrayList = bVar.q;
        }
        aVar3.a((Collection) arrayList);
        if (exitTransitionCallback != null) {
            throw null;
        }
        aVar.a((Collection) aVar3.keySet());
        return aVar3;
    }
}
