package android.support.v4.app;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* compiled from: FragmentTransitionCompat21.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class v extends z {

    /* compiled from: FragmentTransitionCompat21.java */
    class a extends Transition.EpicenterCallback {
        final /* synthetic */ Rect a;

        a(v vVar, Rect rect) {
            this.a = rect;
        }

        public Rect onGetEpicenter(Transition transition) {
            return this.a;
        }
    }

    /* compiled from: FragmentTransitionCompat21.java */
    class b implements Transition.TransitionListener {
        final /* synthetic */ View a;
        final /* synthetic */ ArrayList b;

        b(v vVar, View view, ArrayList arrayList) {
            this.a = view;
            this.b = arrayList;
        }

        public void onTransitionCancel(Transition transition) {
        }

        public void onTransitionEnd(Transition transition) {
            transition.removeListener(this);
            this.a.setVisibility(8);
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                ((View) this.b.get(i)).setVisibility(0);
            }
        }

        public void onTransitionPause(Transition transition) {
        }

        public void onTransitionResume(Transition transition) {
        }

        public void onTransitionStart(Transition transition) {
        }
    }

    /* compiled from: FragmentTransitionCompat21.java */
    class c implements Transition.TransitionListener {
        final /* synthetic */ Object a;
        final /* synthetic */ ArrayList b;
        final /* synthetic */ Object c;
        final /* synthetic */ ArrayList d;
        final /* synthetic */ Object e;
        final /* synthetic */ ArrayList f;

        c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.a = obj;
            this.b = arrayList;
            this.c = obj2;
            this.d = arrayList2;
            this.e = obj3;
            this.f = arrayList3;
        }

        public void onTransitionCancel(Transition transition) {
        }

        public void onTransitionEnd(Transition transition) {
        }

        public void onTransitionPause(Transition transition) {
        }

        public void onTransitionResume(Transition transition) {
        }

        public void onTransitionStart(Transition transition) {
            Object obj = this.a;
            if (obj != null) {
                v.this.a(obj, this.b, (ArrayList) null);
            }
            Object obj2 = this.c;
            if (obj2 != null) {
                v.this.a(obj2, this.d, (ArrayList) null);
            }
            Object obj3 = this.e;
            if (obj3 != null) {
                v.this.a(obj3, this.f, (ArrayList) null);
            }
        }
    }

    /* compiled from: FragmentTransitionCompat21.java */
    class d extends Transition.EpicenterCallback {
        final /* synthetic */ Rect a;

        d(v vVar, Rect rect) {
            this.a = rect;
        }

        public Rect onGetEpicenter(Transition transition) {
            Rect rect = this.a;
            if (rect == null || rect.isEmpty()) {
                return null;
            }
            return this.a;
        }
    }

    v() {
    }

    private static boolean a(Transition transition) {
        return (z.a(transition.getTargetIds()) && z.a(transition.getTargetNames()) && z.a(transition.getTargetTypes())) ? false : true;
    }

    public Object a(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = (Transition) obj;
        TransitionSet transitionSet2 = (Transition) obj2;
        Transition transition = (Transition) obj3;
        if (transitionSet != null && transitionSet2 != null) {
            transitionSet = new TransitionSet().addTransition(transitionSet).addTransition(transitionSet2).setOrdering(1);
        } else if (transitionSet == null) {
            transitionSet = transitionSet2 != null ? transitionSet2 : null;
        }
        if (transition == null) {
            return transitionSet;
        }
        TransitionSet transitionSet3 = new TransitionSet();
        if (transitionSet != null) {
            transitionSet3.addTransition(transitionSet);
        }
        transitionSet3.addTransition(transition);
        return transitionSet3;
    }

    public void a(ViewGroup viewGroup, Object obj) {
        TransitionManager.beginDelayedTransition(viewGroup, (Transition) obj);
    }

    public void a(Object obj, Rect rect) {
        if (obj != null) {
            ((Transition) obj).setEpicenterCallback(new d(this, rect));
        }
    }

    public void a(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).removeTarget(view);
        }
    }

    public void a(Object obj, View view, ArrayList arrayList) {
        ((Transition) obj).addListener(new b(this, view, arrayList));
    }

    public void a(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2, Object obj4, ArrayList arrayList3) {
        ((Transition) obj).addListener(new c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    public void a(Object obj, ArrayList arrayList) {
        TransitionSet transitionSet = (Transition) obj;
        if (transitionSet == null) {
            return;
        }
        int i = 0;
        if (transitionSet instanceof TransitionSet) {
            TransitionSet transitionSet2 = transitionSet;
            int transitionCount = transitionSet2.getTransitionCount();
            while (i < transitionCount) {
                a(transitionSet2.getTransitionAt(i), arrayList);
                i++;
            }
            return;
        }
        if (a((Transition) transitionSet) || !z.a(transitionSet.getTargets())) {
            return;
        }
        int size = arrayList.size();
        while (i < size) {
            transitionSet.addTarget((View) arrayList.get(i));
            i++;
        }
    }

    public void a(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        List targets;
        TransitionSet transitionSet = (Transition) obj;
        int i = 0;
        if (transitionSet instanceof TransitionSet) {
            TransitionSet transitionSet2 = transitionSet;
            int transitionCount = transitionSet2.getTransitionCount();
            while (i < transitionCount) {
                a((Object) transitionSet2.getTransitionAt(i), arrayList, arrayList2);
                i++;
            }
            return;
        }
        if (a((Transition) transitionSet) || (targets = transitionSet.getTargets()) == null || targets.size() != arrayList.size() || !targets.containsAll(arrayList)) {
            return;
        }
        int size = arrayList2 == null ? 0 : arrayList2.size();
        while (i < size) {
            transitionSet.addTarget((View) arrayList2.get(i));
            i++;
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            transitionSet.removeTarget((View) arrayList.get(size2));
        }
    }

    public boolean a(Object obj) {
        return obj instanceof Transition;
    }

    public Object b(Object obj) {
        if (obj != null) {
            return ((Transition) obj).clone();
        }
        return null;
    }

    public Object b(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.addTransition((Transition) obj);
        }
        if (obj2 != null) {
            transitionSet.addTransition((Transition) obj2);
        }
        if (obj3 != null) {
            transitionSet.addTransition((Transition) obj3);
        }
        return transitionSet;
    }

    public void b(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            a(view, rect);
            ((Transition) obj).setEpicenterCallback(new a(this, rect));
        }
    }

    public void b(Object obj, View view, ArrayList arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        List targets = transitionSet.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            z.a(targets, (View) arrayList.get(i));
        }
        targets.add(view);
        arrayList.add(view);
        a(transitionSet, arrayList);
    }

    public void b(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.getTargets().clear();
            transitionSet.getTargets().addAll(arrayList2);
            a((Object) transitionSet, arrayList, arrayList2);
        }
    }
}
