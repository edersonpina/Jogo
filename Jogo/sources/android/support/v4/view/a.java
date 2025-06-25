package android.support.v4.view;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;

/* compiled from: AccessibilityDelegateCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class a {
    private static final b b;
    private static final View.AccessibilityDelegate c;
    final View.AccessibilityDelegate a = b.a(this);

    /* compiled from: AccessibilityDelegateCompat.java */
    static class a extends b {

        /* compiled from: AccessibilityDelegateCompat.java */
        class a extends View.AccessibilityDelegate {
            final /* synthetic */ a a;

            a(a aVar, a aVar2) {
                this.a = aVar2;
            }

            public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                return this.a.a(view, accessibilityEvent);
            }

            public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
                android.support.v4.view.v.b a = this.a.a(view);
                if (a != null) {
                    return (AccessibilityNodeProvider) a.a();
                }
                return null;
            }

            public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                this.a.b(view, accessibilityEvent);
            }

            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                this.a.a(view, android.support.v4.view.v.a.a(accessibilityNodeInfo));
            }

            public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                this.a.c(view, accessibilityEvent);
            }

            public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
                return this.a.a(viewGroup, view, accessibilityEvent);
            }

            public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
                return this.a.a(view, i, bundle);
            }

            public void sendAccessibilityEvent(View view, int i) {
                this.a.a(view, i);
            }

            public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
                this.a.d(view, accessibilityEvent);
            }
        }

        a() {
        }

        public android.support.v4.view.v.b a(View.AccessibilityDelegate accessibilityDelegate, View view) {
            AccessibilityNodeProvider accessibilityNodeProvider = accessibilityDelegate.getAccessibilityNodeProvider(view);
            if (accessibilityNodeProvider != null) {
                return new android.support.v4.view.v.b(accessibilityNodeProvider);
            }
            return null;
        }

        public View.AccessibilityDelegate a(a aVar) {
            return new a(this, aVar);
        }

        public boolean a(View.AccessibilityDelegate accessibilityDelegate, View view, int i, Bundle bundle) {
            return accessibilityDelegate.performAccessibilityAction(view, i, bundle);
        }
    }

    /* compiled from: AccessibilityDelegateCompat.java */
    static class b {
        b() {
        }

        public android.support.v4.view.v.b a(View.AccessibilityDelegate accessibilityDelegate, View view) {
            throw null;
        }

        public View.AccessibilityDelegate a(a aVar) {
            throw null;
        }

        public boolean a(View.AccessibilityDelegate accessibilityDelegate, View view, int i, Bundle bundle) {
            throw null;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        b = new a();
        c = new View.AccessibilityDelegate();
    }

    public android.support.v4.view.v.b a(View view) {
        return b.a(c, view);
    }

    public void a(View view, int i) {
        c.sendAccessibilityEvent(view, i);
    }

    public void a(View view, android.support.v4.view.v.a aVar) {
        c.onInitializeAccessibilityNodeInfo(view, aVar.a());
    }

    public boolean a(View view, int i, Bundle bundle) {
        return b.a(c, view, i, bundle);
    }

    public boolean a(View view, AccessibilityEvent accessibilityEvent) {
        return c.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return c.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public void b(View view, AccessibilityEvent accessibilityEvent) {
        c.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void c(View view, AccessibilityEvent accessibilityEvent) {
        c.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public void d(View view, AccessibilityEvent accessibilityEvent) {
        c.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }
}
