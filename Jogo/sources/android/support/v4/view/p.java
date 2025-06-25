package android.support.v4.view;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;

/* compiled from: ViewParentCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public final class p {
    static final c a;

    /* compiled from: ViewParentCompat.java */
    static class a extends c {
        a() {
        }
    }

    /* compiled from: ViewParentCompat.java */
    static class b extends a {
        b() {
        }

        public void a(ViewParent viewParent, View view) {
            try {
                viewParent.onStopNestedScroll(view);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll", e);
            }
        }

        public void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
            try {
                viewParent.onNestedScroll(view, i, i2, i3, i4);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e);
            }
        }

        public void a(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
            try {
                viewParent.onNestedPreScroll(view, i, i2, iArr);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e);
            }
        }

        public void a(ViewParent viewParent, View view, View view2, int i) {
            try {
                viewParent.onNestedScrollAccepted(view, view2, i);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted", e);
            }
        }

        public boolean a(ViewParent viewParent, View view, float f, float f2) {
            try {
                return viewParent.onNestedPreFling(view, f, f2);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e);
                return false;
            }
        }

        public boolean a(ViewParent viewParent, View view, float f, float f2, boolean z) {
            try {
                return viewParent.onNestedFling(view, f, f2, z);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedFling", e);
                return false;
            }
        }

        public boolean b(ViewParent viewParent, View view, View view2, int i) {
            try {
                return viewParent.onStartNestedScroll(view, view2, i);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll", e);
                return false;
            }
        }
    }

    /* compiled from: ViewParentCompat.java */
    static class c {
        c() {
        }

        public void a(ViewParent viewParent, View view) {
            if (viewParent instanceof i) {
                ((i) viewParent).onStopNestedScroll(view);
            }
        }

        public void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
            if (viewParent instanceof i) {
                ((i) viewParent).onNestedScroll(view, i, i2, i3, i4);
            }
        }

        public void a(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
            if (viewParent instanceof i) {
                ((i) viewParent).onNestedPreScroll(view, i, i2, iArr);
            }
        }

        public void a(ViewParent viewParent, View view, View view2, int i) {
            if (viewParent instanceof i) {
                ((i) viewParent).onNestedScrollAccepted(view, view2, i);
            }
        }

        public boolean a(ViewParent viewParent, View view, float f, float f2) {
            if (viewParent instanceof i) {
                return ((i) viewParent).onNestedPreFling(view, f, f2);
            }
            return false;
        }

        public boolean a(ViewParent viewParent, View view, float f, float f2, boolean z) {
            if (viewParent instanceof i) {
                return ((i) viewParent).onNestedFling(view, f, f2, z);
            }
            return false;
        }

        public boolean b(ViewParent viewParent, View view, View view2, int i) {
            if (viewParent instanceof i) {
                return ((i) viewParent).onStartNestedScroll(view, view2, i);
            }
            return false;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            a = new b();
        } else if (i >= 19) {
            a = new a();
        } else {
            a = new c();
        }
    }

    public static void a(ViewParent viewParent, View view, int i) {
        if (viewParent instanceof h) {
            ((h) viewParent).a(view, i);
        } else if (i == 0) {
            a.a(viewParent, view);
        }
    }

    public static void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4, int i5) {
        if (viewParent instanceof h) {
            ((h) viewParent).a(view, i, i2, i3, i4, i5);
        } else if (i5 == 0) {
            a.a(viewParent, view, i, i2, i3, i4);
        }
    }

    public static void a(ViewParent viewParent, View view, int i, int i2, int[] iArr, int i3) {
        if (viewParent instanceof h) {
            ((h) viewParent).a(view, i, i2, iArr, i3);
        } else if (i3 == 0) {
            a.a(viewParent, view, i, i2, iArr);
        }
    }

    public static boolean a(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (viewParent instanceof h) {
            return ((h) viewParent).b(view, view2, i, i2);
        }
        if (i2 == 0) {
            return a.b(viewParent, view, view2, i);
        }
        return false;
    }
}
