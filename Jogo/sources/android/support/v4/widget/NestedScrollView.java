package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.n;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import android.widget.ScrollView;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class NestedScrollView extends FrameLayout implements android.support.v4.view.i, android.support.v4.view.e, android.support.v4.view.l {
    private static final a B = new a();
    private static final int[] C = {16843130};
    private b A;
    private long b;
    private final Rect c;
    private OverScroller d;
    private EdgeEffect e;
    private EdgeEffect f;
    private int g;
    private boolean h;
    private boolean i;
    private View j;
    private boolean k;
    private VelocityTracker l;
    private boolean m;
    private boolean n;
    private int o;
    private int p;
    private int q;
    private int r;
    private final int[] s;
    private final int[] t;
    private int u;
    private int v;
    private SavedState w;
    private final android.support.v4.view.j x;
    private final android.support.v4.view.g y;
    private float z;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator CREATOR = new a();
        public int b;

        static class a implements Parcelable.Creator {
            a() {
            }

            public Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            public Object[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.b = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            StringBuilder a2 = d.a.a.a.a.a("HorizontalScrollView.SavedState{");
            a2.append(Integer.toHexString(System.identityHashCode(this)));
            a2.append(" scrollPosition=");
            return d.a.a.a.a.a(a2, this.b, "}");
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.b);
        }
    }

    static class a extends android.support.v4.view.a {
        a() {
        }

        public void a(View view, android.support.v4.view.v.a aVar) {
            int scrollRange;
            super.a(view, aVar);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            aVar.a((CharSequence) ScrollView.class.getName());
            if (!nestedScrollView.isEnabled() || (scrollRange = nestedScrollView.getScrollRange()) <= 0) {
                return;
            }
            aVar.a(true);
            if (nestedScrollView.getScrollY() > 0) {
                aVar.a(8192);
            }
            if (nestedScrollView.getScrollY() < scrollRange) {
                aVar.a(4096);
            }
        }

        public boolean a(View view, int i, Bundle bundle) {
            if (super.a(view, i, bundle)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (!nestedScrollView.isEnabled()) {
                return false;
            }
            if (i == 4096) {
                int min = Math.min(nestedScrollView.getScrollY() + ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
                if (min == nestedScrollView.getScrollY()) {
                    return false;
                }
                nestedScrollView.b(0, min);
                return true;
            }
            if (i != 8192) {
                return false;
            }
            int max = Math.max(nestedScrollView.getScrollY() - ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
            if (max == nestedScrollView.getScrollY()) {
                return false;
            }
            nestedScrollView.b(0, max);
            return true;
        }

        public void b(View view, AccessibilityEvent accessibilityEvent) {
            super.b(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            int scrollX = nestedScrollView.getScrollX();
            int i = Build.VERSION.SDK_INT;
            accessibilityEvent.setMaxScrollX(scrollX);
            int scrollRange = nestedScrollView.getScrollRange();
            int i2 = Build.VERSION.SDK_INT;
            accessibilityEvent.setMaxScrollY(scrollRange);
        }
    }

    public interface b {
        void a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4);
    }

    public NestedScrollView(Context context) {
        this(context, null);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = new Rect();
        this.h = true;
        this.i = false;
        this.j = null;
        this.k = false;
        this.n = true;
        this.r = -1;
        this.s = new int[2];
        this.t = new int[2];
        this.d = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.o = viewConfiguration.getScaledTouchSlop();
        this.p = viewConfiguration.getScaledMinimumFlingVelocity();
        this.q = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C, i, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.x = new android.support.v4.view.j(this);
        this.y = new android.support.v4.view.g(this);
        setNestedScrollingEnabled(true);
        n.a((View) this, (android.support.v4.view.a) B);
    }

    private void a() {
        if (getOverScrollMode() == 2) {
            this.e = null;
            this.f = null;
        } else if (this.e == null) {
            Context context = getContext();
            this.e = new EdgeEffect(context);
            this.f = new EdgeEffect(context);
        }
    }

    private void a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.r) {
            int i = actionIndex == 0 ? 1 : 0;
            this.g = (int) motionEvent.getY(i);
            this.r = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.l;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    private void a(View view) {
        view.getDrawingRect(this.c);
        offsetDescendantRectToMyCoords(view, this.c);
        int a2 = a(this.c);
        if (a2 != 0) {
            scrollBy(0, a2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean a(int r19, int r20, int r21) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = r20
            r3 = r21
            int r4 = r18.getHeight()
            int r5 = r18.getScrollY()
            int r4 = r4 + r5
            r8 = 33
            if (r1 != r8) goto L17
            r8 = 1
            goto L18
        L17:
            r8 = 0
        L18:
            r9 = 2
            java.util.ArrayList r9 = r0.getFocusables(r9)
            int r10 = r9.size()
            r11 = 0
            r12 = r11
            r11 = 0
            r13 = 0
        L25:
            if (r11 >= r10) goto L6d
            java.lang.Object r14 = r9.get(r11)
            android.view.View r14 = (android.view.View) r14
            int r15 = r14.getTop()
            int r6 = r14.getBottom()
            if (r2 >= r6) goto L6a
            if (r15 >= r3) goto L6a
            if (r2 >= r15) goto L40
            if (r6 >= r3) goto L40
            r17 = 1
            goto L42
        L40:
            r17 = 0
        L42:
            if (r12 != 0) goto L48
            r12 = r14
            r13 = r17
            goto L6a
        L48:
            if (r8 == 0) goto L50
            int r7 = r12.getTop()
            if (r15 < r7) goto L58
        L50:
            if (r8 != 0) goto L5a
            int r7 = r12.getBottom()
            if (r6 <= r7) goto L5a
        L58:
            r6 = 1
            goto L5b
        L5a:
            r6 = 0
        L5b:
            if (r13 == 0) goto L62
            if (r17 == 0) goto L6a
            if (r6 == 0) goto L6a
            goto L69
        L62:
            if (r17 == 0) goto L67
            r12 = r14
            r13 = 1
            goto L6a
        L67:
            if (r6 == 0) goto L6a
        L69:
            r12 = r14
        L6a:
            int r11 = r11 + 1
            goto L25
        L6d:
            if (r12 != 0) goto L70
            r12 = r0
        L70:
            if (r2 < r5) goto L77
            if (r3 > r4) goto L77
            r16 = 0
            goto L82
        L77:
            if (r8 == 0) goto L7b
            int r2 = r2 - r5
            goto L7d
        L7b:
            int r2 = r3 - r4
        L7d:
            r0.g(r2)
            r16 = 1
        L82:
            android.view.View r2 = r18.findFocus()
            if (r12 == r2) goto L8b
            r12.requestFocus(r1)
        L8b:
            return r16
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.NestedScrollView.a(int, int, int):boolean");
    }

    private boolean a(View view, int i, int i2) {
        view.getDrawingRect(this.c);
        offsetDescendantRectToMyCoords(view, this.c);
        return this.c.bottom + i >= getScrollY() && this.c.top - i <= getScrollY() + i2;
    }

    private static boolean a(View view, View view2) {
        if (view == view2) {
            return true;
        }
        View parent = view.getParent();
        return (parent instanceof ViewGroup) && a(parent, view2);
    }

    private void b() {
        VelocityTracker velocityTracker = this.l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.l = null;
        }
    }

    private void g(int i) {
        if (i != 0) {
            if (this.n) {
                a(0, i);
            } else {
                scrollBy(0, i);
            }
        }
    }

    private float getVerticalScrollFactorCompat() {
        if (this.z == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.z = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.z;
    }

    private void h(int i) {
        int scrollY = getScrollY();
        boolean z = (scrollY > 0 || i > 0) && (scrollY < getScrollRange() || i < 0);
        float f = i;
        if (dispatchNestedPreFling(0.0f, f)) {
            return;
        }
        dispatchNestedFling(0.0f, f, z);
        b(i);
    }

    protected int a(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        if (rect.bottom < getChildAt(0).getHeight()) {
            i -= verticalFadingEdgeLength;
        }
        if (rect.bottom > i && rect.top > scrollY) {
            return Math.min((rect.height() > height ? rect.top - scrollY : rect.bottom - i) + 0, getChildAt(0).getBottom() - i);
        }
        if (rect.top >= scrollY || rect.bottom >= i) {
            return 0;
        }
        return Math.max(rect.height() > height ? 0 - (i - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
    }

    public final void a(int i, int i2) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.b > 250) {
            int max = Math.max(0, getChildAt(0).getHeight() - ((getHeight() - getPaddingBottom()) - getPaddingTop()));
            int scrollY = getScrollY();
            this.d.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i2 + scrollY, max)) - scrollY);
            n.l(this);
        } else {
            if (!this.d.isFinished()) {
                this.d.abortAnimation();
            }
            scrollBy(i, i2);
        }
        this.b = AnimationUtils.currentAnimationTimeMillis();
    }

    public boolean a(int i) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i);
        int maxScrollAmount = getMaxScrollAmount();
        if (findNextFocus == null || !a(findNextFocus, maxScrollAmount, getHeight())) {
            if (i == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i == 130 && getChildCount() > 0) {
                int bottom = getChildAt(0).getBottom() - ((getHeight() + getScrollY()) - getPaddingBottom());
                if (bottom < maxScrollAmount) {
                    maxScrollAmount = bottom;
                }
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            g(maxScrollAmount);
        } else {
            findNextFocus.getDrawingRect(this.c);
            offsetDescendantRectToMyCoords(findNextFocus, this.c);
            g(a(this.c));
            findNextFocus.requestFocus(i);
        }
        if (findFocus != null && findFocus.isFocused() && (!a(findFocus, 0, getHeight()))) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0083 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    boolean a(int r13, int r14, int r15, int r16, int r17, int r18, int r19, int r20) {
        /*
            r12 = this;
            r0 = r12
            int r1 = r12.getOverScrollMode()
            int r2 = r12.computeHorizontalScrollRange()
            int r3 = r12.computeHorizontalScrollExtent()
            r4 = 0
            r5 = 1
            if (r2 <= r3) goto L13
            r2 = 1
            goto L14
        L13:
            r2 = 0
        L14:
            int r3 = r12.computeVerticalScrollRange()
            int r6 = r12.computeVerticalScrollExtent()
            if (r3 <= r6) goto L20
            r3 = 1
            goto L21
        L20:
            r3 = 0
        L21:
            if (r1 == 0) goto L2a
            if (r1 != r5) goto L28
            if (r2 == 0) goto L28
            goto L2a
        L28:
            r2 = 0
            goto L2b
        L2a:
            r2 = 1
        L2b:
            if (r1 == 0) goto L34
            if (r1 != r5) goto L32
            if (r3 == 0) goto L32
            goto L34
        L32:
            r1 = 0
            goto L35
        L34:
            r1 = 1
        L35:
            int r3 = r15 + r13
            if (r2 != 0) goto L3b
            r2 = 0
            goto L3d
        L3b:
            r2 = r19
        L3d:
            int r6 = r16 + r14
            if (r1 != 0) goto L43
            r1 = 0
            goto L45
        L43:
            r1 = r20
        L45:
            int r7 = -r2
            int r2 = r2 + r17
            int r8 = -r1
            int r1 = r1 + r18
            if (r3 <= r2) goto L50
            r7 = r2
        L4e:
            r2 = 1
            goto L55
        L50:
            if (r3 >= r7) goto L53
            goto L4e
        L53:
            r7 = r3
            r2 = 0
        L55:
            if (r6 <= r1) goto L5a
            r8 = r1
        L58:
            r1 = 1
            goto L5f
        L5a:
            if (r6 >= r8) goto L5d
            goto L58
        L5d:
            r8 = r6
            r1 = 0
        L5f:
            if (r1 == 0) goto L7e
            boolean r3 = r12.d(r5)
            if (r3 != 0) goto L7e
            android.widget.OverScroller r3 = r0.d
            r6 = 0
            r9 = 0
            r10 = 0
            int r11 = r12.getScrollRange()
            r13 = r3
            r14 = r7
            r15 = r8
            r16 = r6
            r17 = r9
            r18 = r10
            r19 = r11
            r13.springBack(r14, r15, r16, r17, r18, r19)
        L7e:
            r12.onOverScrolled(r7, r8, r2, r1)
            if (r2 != 0) goto L85
            if (r1 == 0) goto L86
        L85:
            r4 = 1
        L86:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.NestedScrollView.a(int, int, int, int, int, int, int, int):boolean");
    }

    public boolean a(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        return this.y.a(i, i2, i3, i4, iArr, i5);
    }

    public boolean a(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return this.y.a(i, i2, iArr, iArr2, i3);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(android.view.KeyEvent r6) {
        /*
            r5 = this;
            android.graphics.Rect r0 = r5.c
            r0.setEmpty()
            r0 = 0
            android.view.View r1 = r5.getChildAt(r0)
            r2 = 1
            if (r1 == 0) goto L23
            int r1 = r1.getHeight()
            int r3 = r5.getHeight()
            int r4 = r5.getPaddingTop()
            int r4 = r4 + r1
            int r1 = r5.getPaddingBottom()
            int r1 = r1 + r4
            if (r3 >= r1) goto L23
            r1 = 1
            goto L24
        L23:
            r1 = 0
        L24:
            r3 = 130(0x82, float:1.82E-43)
            if (r1 != 0) goto L50
            boolean r1 = r5.isFocused()
            if (r1 == 0) goto L4f
            int r6 = r6.getKeyCode()
            r1 = 4
            if (r6 == r1) goto L4f
            android.view.View r6 = r5.findFocus()
            if (r6 != r5) goto L3c
            r6 = 0
        L3c:
            android.view.FocusFinder r1 = android.view.FocusFinder.getInstance()
            android.view.View r6 = r1.findNextFocus(r5, r6, r3)
            if (r6 == 0) goto L4f
            if (r6 == r5) goto L4f
            boolean r6 = r6.requestFocus(r3)
            if (r6 == 0) goto L4f
            r0 = 1
        L4f:
            return r0
        L50:
            int r1 = r6.getAction()
            if (r1 != 0) goto L94
            int r1 = r6.getKeyCode()
            r2 = 19
            r4 = 33
            if (r1 == r2) goto L85
            r2 = 20
            if (r1 == r2) goto L75
            r2 = 62
            if (r1 == r2) goto L69
            goto L94
        L69:
            boolean r6 = r6.isShiftPressed()
            if (r6 == 0) goto L71
            r3 = 33
        L71:
            r5.e(r3)
            goto L94
        L75:
            boolean r6 = r6.isAltPressed()
            if (r6 != 0) goto L80
            boolean r0 = r5.a(r3)
            goto L94
        L80:
            boolean r0 = r5.c(r3)
            goto L94
        L85:
            boolean r6 = r6.isAltPressed()
            if (r6 != 0) goto L90
            boolean r0 = r5.a(r4)
            goto L94
        L90:
            boolean r0 = r5.c(r4)
        L94:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.NestedScrollView.a(android.view.KeyEvent):boolean");
    }

    public void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    public void addView(View view, int i) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i);
    }

    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i, layoutParams);
    }

    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, layoutParams);
    }

    public void b(int i) {
        if (getChildCount() > 0) {
            c(2, 1);
            this.d.fling(getScrollX(), getScrollY(), 0, i, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            this.v = getScrollY();
            n.l(this);
        }
    }

    public final void b(int i, int i2) {
        a(i - getScrollX(), i2 - getScrollY());
    }

    public boolean c(int i) {
        int childCount;
        boolean z = i == 130;
        int height = getHeight();
        Rect rect = this.c;
        rect.top = 0;
        rect.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            this.c.bottom = getPaddingBottom() + getChildAt(childCount - 1).getBottom();
            Rect rect2 = this.c;
            rect2.top = rect2.bottom - height;
        }
        Rect rect3 = this.c;
        return a(i, rect3.top, rect3.bottom);
    }

    public boolean c(int i, int i2) {
        return this.y.a(i, i2);
    }

    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    public void computeScroll() {
        boolean z = false;
        if (!this.d.computeScrollOffset()) {
            if (d(1)) {
                f(1);
            }
            this.v = 0;
            return;
        }
        this.d.getCurrX();
        int currY = this.d.getCurrY();
        int i = currY - this.v;
        if (a(0, i, this.t, null, 1)) {
            i -= this.t[1];
        }
        if (i != 0) {
            int scrollRange = getScrollRange();
            int scrollY = getScrollY();
            a(0, i, getScrollX(), scrollY, 0, scrollRange, 0, 0);
            int scrollY2 = getScrollY() - scrollY;
            if (!a(0, scrollY2, 0, i - scrollY2, null, 1)) {
                int overScrollMode = getOverScrollMode();
                if (overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0)) {
                    z = true;
                }
                if (z) {
                    a();
                    if (currY <= 0 && scrollY > 0) {
                        this.e.onAbsorb((int) this.d.getCurrVelocity());
                    } else if (currY >= scrollRange && scrollY < scrollRange) {
                        this.f.onAbsorb((int) this.d.getCurrVelocity());
                    }
                }
            }
        }
        this.v = currY;
        n.l(this);
    }

    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    public int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        int bottom = getChildAt(0).getBottom();
        int scrollY = getScrollY();
        int max = Math.max(0, bottom - height);
        return scrollY < 0 ? bottom - scrollY : scrollY > max ? bottom + (scrollY - max) : bottom;
    }

    public boolean d(int i) {
        return this.y.a(i);
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || a(keyEvent);
    }

    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.y.a(f, f2, z);
    }

    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.y.a(f, f2);
    }

    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.y.a(i, i2, iArr, iArr2);
    }

    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.y.a(i, i2, i3, i4, iArr);
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.e != null) {
            int scrollY = getScrollY();
            if (!this.e.isFinished()) {
                int save = canvas.save();
                int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
                canvas.translate(getPaddingLeft(), Math.min(0, scrollY));
                this.e.setSize(width, getHeight());
                if (this.e.draw(canvas)) {
                    n.l(this);
                }
                canvas.restoreToCount(save);
            }
            if (this.f.isFinished()) {
                return;
            }
            int save2 = canvas.save();
            int width2 = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int height = getHeight();
            canvas.translate(getPaddingLeft() + (-width2), Math.max(getScrollRange(), scrollY) + height);
            canvas.rotate(180.0f, width2, 0.0f);
            this.f.setSize(width2, height);
            if (this.f.draw(canvas)) {
                n.l(this);
            }
            canvas.restoreToCount(save2);
        }
    }

    public boolean e(int i) {
        boolean z = i == 130;
        int height = getHeight();
        if (z) {
            this.c.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                if (this.c.top + height > childAt.getBottom()) {
                    this.c.top = childAt.getBottom() - height;
                }
            }
        } else {
            this.c.top = getScrollY() - height;
            Rect rect = this.c;
            if (rect.top < 0) {
                rect.top = 0;
            }
        }
        Rect rect2 = this.c;
        int i2 = rect2.top;
        rect2.bottom = height + i2;
        return a(i, i2, rect2.bottom);
    }

    public void f(int i) {
        this.y.b(i);
    }

    protected float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = (getChildAt(0).getBottom() - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    public int getNestedScrollAxes() {
        return this.x.a();
    }

    int getScrollRange() {
        if (getChildCount() > 0) {
            return Math.max(0, getChildAt(0).getHeight() - ((getHeight() - getPaddingBottom()) - getPaddingTop()));
        }
        return 0;
    }

    protected float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public boolean hasNestedScrollingParent() {
        return this.y.a(0);
    }

    public boolean isNestedScrollingEnabled() {
        return this.y.a();
    }

    protected void measureChild(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(FrameLayout.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft(), layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams layoutParams = view.getLayoutParams();
        view.measure(FrameLayout.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + layoutParams.leftMargin + layoutParams.rightMargin + i2, layoutParams.width), View.MeasureSpec.makeMeasureSpec(layoutParams.topMargin + layoutParams.bottomMargin, 0));
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.i = false;
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() == 8 && !this.k) {
            float axisValue = motionEvent.getAxisValue(9);
            if (axisValue != 0.0f) {
                int verticalScrollFactorCompat = (int) (axisValue * getVerticalScrollFactorCompat());
                int scrollRange = getScrollRange();
                int scrollY = getScrollY();
                int i = scrollY - verticalScrollFactorCompat;
                if (i < 0) {
                    i = 0;
                } else if (i > scrollRange) {
                    i = scrollRange;
                }
                if (i != scrollY) {
                    super.scrollTo(getScrollX(), i);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r12) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.NestedScrollView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.h = false;
        View view = this.j;
        if (view != null && a(view, (View) this)) {
            a(this.j);
        }
        this.j = null;
        if (!this.i) {
            if (this.w != null) {
                scrollTo(getScrollX(), this.w.b);
                this.w = null;
            }
            int max = Math.max(0, (getChildCount() > 0 ? getChildAt(0).getMeasuredHeight() : 0) - (((i4 - i2) - getPaddingBottom()) - getPaddingTop()));
            if (getScrollY() > max) {
                scrollTo(getScrollX(), max);
            } else if (getScrollY() < 0) {
                scrollTo(getScrollX(), 0);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.i = true;
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.m && View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            int measuredHeight = getMeasuredHeight();
            if (childAt.getMeasuredHeight() < measuredHeight) {
                FrameLayout.LayoutParams layoutParams = childAt.getLayoutParams();
                childAt.measure(FrameLayout.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft(), layoutParams.width), View.MeasureSpec.makeMeasureSpec((measuredHeight - getPaddingTop()) - getPaddingBottom(), 1073741824));
            }
        }
    }

    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (z) {
            return false;
        }
        h((int) f2);
        return true;
    }

    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        dispatchNestedPreScroll(i, i2, iArr, null);
    }

    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int scrollY = getScrollY();
        scrollBy(0, i4);
        int scrollY2 = getScrollY() - scrollY;
        dispatchNestedScroll(0, scrollY2, 0, i4 - scrollY2, null);
    }

    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.x.a(view, view2, i);
        startNestedScroll(2);
    }

    protected void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.scrollTo(i, i2);
    }

    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (i == 2) {
            i = 130;
        } else if (i == 1) {
            i = 33;
        }
        View findNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, (View) null, i) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i);
        if (findNextFocus == null || (true ^ a(findNextFocus, 0, getHeight()))) {
            return false;
        }
        return findNextFocus.requestFocus(i, rect);
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.w = savedState;
        requestLayout();
    }

    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.b = getScrollY();
        return savedState;
    }

    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        b bVar = this.A;
        if (bVar != null) {
            bVar.a(this, i, i2, i3, i4);
        }
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View findFocus = findFocus();
        if (findFocus == null || this == findFocus || !a(findFocus, 0, i4)) {
            return;
        }
        findFocus.getDrawingRect(this.c);
        offsetDescendantRectToMyCoords(findFocus, this.c);
        g(a(this.c));
    }

    public boolean onStartNestedScroll(View view, View view2, int i) {
        return (i & 2) != 0;
    }

    public void onStopNestedScroll(View view) {
        this.x.a(view);
        stopNestedScroll();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.u = 0;
        }
        obtain.offsetLocation(0.0f, this.u);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.l;
                velocityTracker.computeCurrentVelocity(1000, this.q);
                int yVelocity = (int) velocityTracker.getYVelocity(this.r);
                if (Math.abs(yVelocity) > this.p) {
                    h(-yVelocity);
                } else if (this.d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    n.l(this);
                }
                this.r = -1;
                this.k = false;
                b();
                f(0);
                EdgeEffect edgeEffect = this.e;
                if (edgeEffect != null) {
                    edgeEffect.onRelease();
                    this.f.onRelease();
                }
            } else if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.r);
                if (findPointerIndex == -1) {
                    StringBuilder a2 = d.a.a.a.a.a("Invalid pointerId=");
                    a2.append(this.r);
                    a2.append(" in onTouchEvent");
                    Log.e("NestedScrollView", a2.toString());
                } else {
                    int y = (int) motionEvent.getY(findPointerIndex);
                    int i = this.g - y;
                    if (a(0, i, this.t, this.s, 0)) {
                        i -= this.t[1];
                        obtain.offsetLocation(0.0f, this.s[1]);
                        this.u += this.s[1];
                    }
                    if (!this.k && Math.abs(i) > this.o) {
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                        this.k = true;
                        i = i > 0 ? i - this.o : i + this.o;
                    }
                    int i2 = i;
                    if (this.k) {
                        this.g = y - this.s[1];
                        int scrollY = getScrollY();
                        int scrollRange = getScrollRange();
                        int overScrollMode = getOverScrollMode();
                        boolean z = overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0);
                        if (a(0, i2, 0, getScrollY(), 0, scrollRange, 0, 0) && !d(0)) {
                            this.l.clear();
                        }
                        int scrollY2 = getScrollY() - scrollY;
                        if (a(0, scrollY2, 0, i2 - scrollY2, this.s, 0)) {
                            this.g = this.g - this.s[1];
                            obtain.offsetLocation(0.0f, r1[1]);
                            this.u += this.s[1];
                        } else if (z) {
                            a();
                            int i3 = scrollY + i2;
                            if (i3 < 0) {
                                f.a(this.e, i2 / getHeight(), motionEvent.getX(findPointerIndex) / getWidth());
                                if (!this.f.isFinished()) {
                                    this.f.onRelease();
                                }
                            } else if (i3 > scrollRange) {
                                f.a(this.f, i2 / getHeight(), 1.0f - (motionEvent.getX(findPointerIndex) / getWidth()));
                                if (!this.e.isFinished()) {
                                    this.e.onRelease();
                                }
                            }
                            EdgeEffect edgeEffect2 = this.e;
                            if (edgeEffect2 != null && (!edgeEffect2.isFinished() || !this.f.isFinished())) {
                                n.l(this);
                            }
                        }
                    }
                }
            } else if (actionMasked == 3) {
                if (this.k && getChildCount() > 0 && this.d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    n.l(this);
                }
                this.r = -1;
                this.k = false;
                b();
                f(0);
                EdgeEffect edgeEffect3 = this.e;
                if (edgeEffect3 != null) {
                    edgeEffect3.onRelease();
                    this.f.onRelease();
                }
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.g = (int) motionEvent.getY(actionIndex);
                this.r = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                a(motionEvent);
                this.g = (int) motionEvent.getY(motionEvent.findPointerIndex(this.r));
            }
        } else {
            if (getChildCount() == 0) {
                return false;
            }
            boolean z2 = !this.d.isFinished();
            this.k = z2;
            if (z2 && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.d.isFinished()) {
                this.d.abortAnimation();
            }
            this.g = (int) motionEvent.getY();
            this.r = motionEvent.getPointerId(0);
            c(2, 0);
        }
        VelocityTracker velocityTracker2 = this.l;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    public void requestChildFocus(View view, View view2) {
        if (this.h) {
            this.j = view2;
        } else {
            a(view2);
        }
        super.requestChildFocus(view, view2);
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int a2 = a(rect);
        boolean z2 = a2 != 0;
        if (z2) {
            if (z) {
                scrollBy(0, a2);
            } else {
                a(0, a2);
            }
        }
        return z2;
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            b();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    public void requestLayout() {
        this.h = true;
        super.requestLayout();
    }

    public void scrollTo(int i, int i2) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            int width = (getWidth() - getPaddingRight()) - getPaddingLeft();
            int width2 = childAt.getWidth();
            if (width >= width2 || i < 0) {
                i = 0;
            } else if (width + i > width2) {
                i = width2 - width;
            }
            int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
            int height2 = childAt.getHeight();
            if (height >= height2 || i2 < 0) {
                i2 = 0;
            } else if (height + i2 > height2) {
                i2 = height2 - height;
            }
            if (i == getScrollX() && i2 == getScrollY()) {
                return;
            }
            super.scrollTo(i, i2);
        }
    }

    public void setFillViewport(boolean z) {
        if (z != this.m) {
            this.m = z;
            requestLayout();
        }
    }

    public void setNestedScrollingEnabled(boolean z) {
        this.y.a(z);
    }

    public void setOnScrollChangeListener(b bVar) {
        this.A = bVar;
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.n = z;
    }

    public boolean shouldDelayChildPressedState() {
        return true;
    }

    public boolean startNestedScroll(int i) {
        return this.y.a(i, 0);
    }

    public void stopNestedScroll() {
        this.y.b(0);
    }
}
