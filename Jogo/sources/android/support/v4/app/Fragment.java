package android.support.v4.app;

import android.animation.Animator;
import android.app.Activity;
import android.arch.lifecycle.a;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.c0;
import android.support.v4.app.k;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, android.arch.lifecycle.c {
    static final int ACTIVITY_CREATED = 2;
    static final int CREATED = 1;
    static final int INITIALIZING = 0;
    static final int RESUMED = 5;
    static final int STARTED = 4;
    static final int STOPPED = 3;
    boolean mAdded;
    c mAnimationInfo;
    Bundle mArguments;
    int mBackStackNesting;
    boolean mCalled;
    boolean mCheckedForLoaderManager;
    k mChildFragmentManager;
    o mChildNonConfig;
    ViewGroup mContainer;
    int mContainerId;
    boolean mDeferStart;
    boolean mDetached;
    int mFragmentId;
    k mFragmentManager;
    boolean mFromLayout;
    boolean mHasMenu;
    boolean mHidden;
    boolean mHiddenChanged;
    i mHost;
    boolean mInLayout;
    View mInnerView;
    boolean mIsCreated;
    boolean mIsNewlyAdded;
    LayoutInflater mLayoutInflater;
    c0 mLoaderManager;
    boolean mLoadersStarted;
    Fragment mParentFragment;
    boolean mPerformedCreateView;
    float mPostponedAlpha;
    boolean mRemoving;
    boolean mRestored;
    boolean mRetainInstance;
    boolean mRetaining;
    Bundle mSavedFragmentState;
    SparseArray mSavedViewState;
    String mTag;
    Fragment mTarget;
    int mTargetRequestCode;
    View mView;
    String mWho;
    private static final b.b.c.d.j sClassMap = new b.b.c.d.j();
    static final Object USE_DEFAULT_TRANSITION = new Object();
    int mState = 0;
    int mIndex = -1;
    int mTargetIndex = -1;
    boolean mMenuVisible = true;
    boolean mUserVisibleHint = true;
    android.arch.lifecycle.d mLifecycleRegistry = new android.arch.lifecycle.d(this);

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator CREATOR = new a();
        final Bundle b;

        static class a implements Parcelable.Creator {
            a() {
            }

            public Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            public Object[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            Bundle bundle;
            this.b = parcel.readBundle();
            if (classLoader == null || (bundle = this.b) == null) {
                return;
            }
            bundle.setClassLoader(classLoader);
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeBundle(this.b);
        }
    }

    class a implements Runnable {
        a() {
        }

        public void run() {
            Fragment.access$800(Fragment.this);
        }
    }

    class b extends g {
        b() {
        }

        public Fragment a(Context context, String str, Bundle bundle) {
            return Fragment.this.mHost.a(context, str, bundle);
        }

        public View a(int i) {
            View view = Fragment.this.mView;
            if (view != null) {
                return view.findViewById(i);
            }
            throw new IllegalStateException("Fragment does not have a view");
        }

        public boolean a() {
            return Fragment.this.mView != null;
        }
    }

    static class c {
        View a;
        Animator b;
        int c;
        int d;
        int e;
        int f;
        private Object g = null;
        private Object h;
        private Object i;
        private Object j;
        private Object k;
        private Object l;
        private Boolean m;
        private Boolean n;
        n0 o;
        n0 p;
        boolean q;
        e r;
        boolean s;

        c() {
            Object obj = Fragment.USE_DEFAULT_TRANSITION;
            this.h = obj;
            this.i = null;
            this.j = obj;
            this.k = null;
            this.l = obj;
        }

        static /* synthetic */ Boolean a(c cVar, Boolean bool) {
            cVar.n = bool;
            return bool;
        }

        static /* synthetic */ Object a(c cVar) {
            return cVar.g;
        }

        static /* synthetic */ Object a(c cVar, Object obj) {
            cVar.g = obj;
            return obj;
        }

        static /* synthetic */ Boolean b(c cVar, Boolean bool) {
            cVar.m = bool;
            return bool;
        }

        static /* synthetic */ Object b(c cVar) {
            return cVar.h;
        }

        static /* synthetic */ Object b(c cVar, Object obj) {
            cVar.h = obj;
            return obj;
        }

        static /* synthetic */ Object c(c cVar) {
            return cVar.i;
        }

        static /* synthetic */ Object c(c cVar, Object obj) {
            cVar.i = obj;
            return obj;
        }

        static /* synthetic */ Object d(c cVar) {
            return cVar.j;
        }

        static /* synthetic */ Object d(c cVar, Object obj) {
            cVar.j = obj;
            return obj;
        }

        static /* synthetic */ Object e(c cVar) {
            return cVar.k;
        }

        static /* synthetic */ Object e(c cVar, Object obj) {
            cVar.k = obj;
            return obj;
        }

        static /* synthetic */ Object f(c cVar) {
            return cVar.l;
        }

        static /* synthetic */ Object f(c cVar, Object obj) {
            cVar.l = obj;
            return obj;
        }

        static /* synthetic */ Boolean g(c cVar) {
            return cVar.n;
        }

        static /* synthetic */ Boolean h(c cVar) {
            return cVar.m;
        }
    }

    public static class d extends RuntimeException {
        public d(String str, Exception exc) {
            super(str, exc);
        }
    }

    interface e {
    }

    static /* synthetic */ void access$800(Fragment fragment) {
        fragment.callStartTransitionListener();
    }

    private void callStartTransitionListener() {
        c cVar = this.mAnimationInfo;
        Object obj = null;
        if (cVar != null) {
            cVar.q = false;
            Object obj2 = cVar.r;
            cVar.r = null;
            obj = obj2;
        }
        if (obj != null) {
            ((k.i) obj).d();
        }
    }

    private c ensureAnimationInfo() {
        if (this.mAnimationInfo == null) {
            this.mAnimationInfo = new c();
        }
        return this.mAnimationInfo;
    }

    public static Fragment instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    public static Fragment instantiate(Context context, String str, Bundle bundle) {
        try {
            Class cls = (Class) sClassMap.get(str);
            if (cls == null) {
                cls = context.getClassLoader().loadClass(str);
                sClassMap.put(str, cls);
            }
            Fragment fragment = (Fragment) cls.getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(fragment.getClass().getClassLoader());
                fragment.setArguments(bundle);
            }
            return fragment;
        } catch (ClassNotFoundException e2) {
            throw new d("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (InvocationTargetException e3) {
            throw new d(d.a.a.a.a.a("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e3);
        } catch (IllegalAccessException e4) {
            throw new d("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e4);
        } catch (NoSuchMethodException e5) {
            throw new d(d.a.a.a.a.a("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e5);
        } catch (InstantiationException e6) {
            throw new d("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e6);
        }
    }

    static boolean isSupportFragmentClass(Context context, String str) {
        try {
            Class cls = (Class) sClassMap.get(str);
            if (cls == null) {
                cls = context.getClassLoader().loadClass(str);
                sClassMap.put(str, cls);
            }
            return Fragment.class.isAssignableFrom(cls);
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.mFragmentId));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.mContainerId));
        printWriter.print(" mTag=");
        printWriter.println(this.mTag);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.mState);
        printWriter.print(" mIndex=");
        printWriter.print(this.mIndex);
        printWriter.print(" mWho=");
        printWriter.print(this.mWho);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.mBackStackNesting);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoving=");
        printWriter.print(this.mRemoving);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.mFromLayout);
        printWriter.print(" mInLayout=");
        printWriter.println(this.mInLayout);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.mHidden);
        printWriter.print(" mDetached=");
        printWriter.print(this.mDetached);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.mMenuVisible);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.mHasMenu);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.mRetainInstance);
        printWriter.print(" mRetaining=");
        printWriter.print(this.mRetaining);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.mUserVisibleHint);
        if (this.mFragmentManager != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.mFragmentManager);
        }
        if (this.mHost != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.mHost);
        }
        if (this.mParentFragment != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.mParentFragment);
        }
        if (this.mArguments != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.mArguments);
        }
        if (this.mSavedFragmentState != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.mSavedFragmentState);
        }
        if (this.mSavedViewState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.mSavedViewState);
        }
        if (this.mTarget != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(this.mTarget);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.mTargetRequestCode);
        }
        if (getNextAnim() != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(getNextAnim());
        }
        if (this.mContainer != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.mContainer);
        }
        if (this.mView != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.mView);
        }
        if (this.mInnerView != null) {
            printWriter.print(str);
            printWriter.print("mInnerView=");
            printWriter.println(this.mView);
        }
        if (getAnimatingAway() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(getAnimatingAway());
            printWriter.print(str);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(getStateAfterAnimating());
        }
        if (this.mLoaderManager != null) {
            printWriter.print(str);
            printWriter.println("Loader Manager:");
            this.mLoaderManager.a(d.a.a.a.a.a(str, "  "), fileDescriptor, printWriter, strArr);
        }
        if (this.mChildFragmentManager != null) {
            printWriter.print(str);
            printWriter.println("Child " + this.mChildFragmentManager + ":");
            this.mChildFragmentManager.a(d.a.a.a.a.a(str, "  "), fileDescriptor, printWriter, strArr);
        }
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    Fragment findFragmentByWho(String str) {
        if (str.equals(this.mWho)) {
            return this;
        }
        k kVar = this.mChildFragmentManager;
        if (kVar != null) {
            return kVar.b(str);
        }
        return null;
    }

    public final FragmentActivity getActivity() {
        i iVar = this.mHost;
        if (iVar == null) {
            return null;
        }
        return (FragmentActivity) iVar.d();
    }

    public boolean getAllowEnterTransitionOverlap() {
        c cVar = this.mAnimationInfo;
        if (cVar == null || c.g(cVar) == null) {
            return true;
        }
        return c.g(this.mAnimationInfo).booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        c cVar = this.mAnimationInfo;
        if (cVar == null || c.h(cVar) == null) {
            return true;
        }
        return c.h(this.mAnimationInfo).booleanValue();
    }

    View getAnimatingAway() {
        c cVar = this.mAnimationInfo;
        if (cVar == null) {
            return null;
        }
        return cVar.a;
    }

    Animator getAnimator() {
        c cVar = this.mAnimationInfo;
        if (cVar == null) {
            return null;
        }
        return cVar.b;
    }

    public final Bundle getArguments() {
        return this.mArguments;
    }

    public final j getChildFragmentManager() {
        if (this.mChildFragmentManager == null) {
            instantiateChildFragmentManager();
            int i = this.mState;
            if (i >= 5) {
                this.mChildFragmentManager.k();
            } else if (i >= 4) {
                this.mChildFragmentManager.l();
            } else if (i >= 2) {
                this.mChildFragmentManager.d();
            } else if (i >= 1) {
                this.mChildFragmentManager.e();
            }
        }
        return this.mChildFragmentManager;
    }

    public Context getContext() {
        i iVar = this.mHost;
        if (iVar == null) {
            return null;
        }
        return iVar.b;
    }

    public Object getEnterTransition() {
        c cVar = this.mAnimationInfo;
        if (cVar == null) {
            return null;
        }
        return c.a(cVar);
    }

    n0 getEnterTransitionCallback() {
        c cVar = this.mAnimationInfo;
        if (cVar == null) {
            return null;
        }
        return cVar.o;
    }

    public Object getExitTransition() {
        c cVar = this.mAnimationInfo;
        if (cVar == null) {
            return null;
        }
        return c.c(cVar);
    }

    n0 getExitTransitionCallback() {
        c cVar = this.mAnimationInfo;
        if (cVar == null) {
            return null;
        }
        return cVar.p;
    }

    public final j getFragmentManager() {
        return this.mFragmentManager;
    }

    public final Object getHost() {
        i iVar = this.mHost;
        if (iVar == null) {
            return null;
        }
        return ((FragmentActivity.b) iVar).j;
    }

    public final int getId() {
        return this.mFragmentId;
    }

    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.mLayoutInflater;
        return layoutInflater == null ? performGetLayoutInflater(null) : layoutInflater;
    }

    @Deprecated
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        i iVar = this.mHost;
        if (iVar == null) {
            throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        FragmentActivity.b bVar = (FragmentActivity.b) iVar;
        LayoutInflater cloneInContext = bVar.j.getLayoutInflater().cloneInContext(bVar.j);
        getChildFragmentManager();
        k kVar = this.mChildFragmentManager;
        kVar.p();
        android.support.v4.view.c.b(cloneInContext, kVar);
        return cloneInContext;
    }

    public android.arch.lifecycle.a getLifecycle() {
        return this.mLifecycleRegistry;
    }

    public b0 getLoaderManager() {
        c0 c0Var = this.mLoaderManager;
        if (c0Var != null) {
            return c0Var;
        }
        i iVar = this.mHost;
        if (iVar == null) {
            throw new IllegalStateException(d.a.a.a.a.a("Fragment ", this, " not attached to Activity"));
        }
        this.mCheckedForLoaderManager = true;
        this.mLoaderManager = iVar.a(this.mWho, this.mLoadersStarted, true);
        return this.mLoaderManager;
    }

    int getNextAnim() {
        c cVar = this.mAnimationInfo;
        if (cVar == null) {
            return 0;
        }
        return cVar.d;
    }

    int getNextTransition() {
        c cVar = this.mAnimationInfo;
        if (cVar == null) {
            return 0;
        }
        return cVar.e;
    }

    int getNextTransitionStyle() {
        c cVar = this.mAnimationInfo;
        if (cVar == null) {
            return 0;
        }
        return cVar.f;
    }

    public final Fragment getParentFragment() {
        return this.mParentFragment;
    }

    public Object getReenterTransition() {
        c cVar = this.mAnimationInfo;
        if (cVar == null) {
            return null;
        }
        return c.d(cVar) == USE_DEFAULT_TRANSITION ? getExitTransition() : c.d(this.mAnimationInfo);
    }

    public final Resources getResources() {
        i iVar = this.mHost;
        if (iVar != null) {
            return iVar.b.getResources();
        }
        throw new IllegalStateException(d.a.a.a.a.a("Fragment ", this, " not attached to Activity"));
    }

    public final boolean getRetainInstance() {
        return this.mRetainInstance;
    }

    public Object getReturnTransition() {
        c cVar = this.mAnimationInfo;
        if (cVar == null) {
            return null;
        }
        return c.b(cVar) == USE_DEFAULT_TRANSITION ? getEnterTransition() : c.b(this.mAnimationInfo);
    }

    public Object getSharedElementEnterTransition() {
        c cVar = this.mAnimationInfo;
        if (cVar == null) {
            return null;
        }
        return c.e(cVar);
    }

    public Object getSharedElementReturnTransition() {
        c cVar = this.mAnimationInfo;
        if (cVar == null) {
            return null;
        }
        return c.f(cVar) == USE_DEFAULT_TRANSITION ? getSharedElementEnterTransition() : c.f(this.mAnimationInfo);
    }

    int getStateAfterAnimating() {
        c cVar = this.mAnimationInfo;
        if (cVar == null) {
            return 0;
        }
        return cVar.c;
    }

    public final String getString(int i) {
        return getResources().getString(i);
    }

    public final String getString(int i, Object... objArr) {
        return getResources().getString(i, objArr);
    }

    public final String getTag() {
        return this.mTag;
    }

    public final Fragment getTargetFragment() {
        return this.mTarget;
    }

    public final int getTargetRequestCode() {
        return this.mTargetRequestCode;
    }

    public final CharSequence getText(int i) {
        return getResources().getText(i);
    }

    public boolean getUserVisibleHint() {
        return this.mUserVisibleHint;
    }

    public View getView() {
        return this.mView;
    }

    public final boolean hasOptionsMenu() {
        return this.mHasMenu;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    void initState() {
        this.mIndex = -1;
        this.mWho = null;
        this.mAdded = false;
        this.mRemoving = false;
        this.mFromLayout = false;
        this.mInLayout = false;
        this.mRestored = false;
        this.mBackStackNesting = 0;
        this.mFragmentManager = null;
        this.mChildFragmentManager = null;
        this.mHost = null;
        this.mFragmentId = 0;
        this.mContainerId = 0;
        this.mTag = null;
        this.mHidden = false;
        this.mDetached = false;
        this.mRetaining = false;
        this.mLoaderManager = null;
        this.mLoadersStarted = false;
        this.mCheckedForLoaderManager = false;
    }

    void instantiateChildFragmentManager() {
        if (this.mHost == null) {
            throw new IllegalStateException("Fragment has not been attached yet.");
        }
        this.mChildFragmentManager = new k();
        k kVar = this.mChildFragmentManager;
        i iVar = this.mHost;
        b bVar = new b();
        if (kVar.n != null) {
            throw new IllegalStateException("Already attached");
        }
        kVar.n = iVar;
        kVar.o = bVar;
        kVar.p = this;
    }

    public final boolean isAdded() {
        return this.mHost != null && this.mAdded;
    }

    public final boolean isDetached() {
        return this.mDetached;
    }

    public final boolean isHidden() {
        return this.mHidden;
    }

    boolean isHideReplaced() {
        c cVar = this.mAnimationInfo;
        if (cVar == null) {
            return false;
        }
        return cVar.s;
    }

    final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    public final boolean isMenuVisible() {
        return this.mMenuVisible;
    }

    boolean isPostponed() {
        c cVar = this.mAnimationInfo;
        if (cVar == null) {
            return false;
        }
        return cVar.q;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    public final boolean isResumed() {
        return this.mState >= 5;
    }

    public final boolean isStateSaved() {
        k kVar = this.mFragmentManager;
        if (kVar == null) {
            return false;
        }
        return kVar.s;
    }

    public final boolean isVisible() {
        View view;
        return (!isAdded() || isHidden() || (view = this.mView) == null || view.getWindowToken() == null || this.mView.getVisibility() != 0) ? false : true;
    }

    void noteStateNotSaved() {
        k kVar = this.mChildFragmentManager;
        if (kVar != null) {
            kVar.q();
        }
    }

    public void onActivityCreated(Bundle bundle) {
        this.mCalled = true;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
    }

    @Deprecated
    public void onAttach(Activity activity) {
        this.mCalled = true;
    }

    public void onAttach(Context context) {
        this.mCalled = true;
        i iVar = this.mHost;
        Activity d2 = iVar == null ? null : iVar.d();
        if (d2 != null) {
            this.mCalled = false;
            onAttach(d2);
        }
    }

    public void onAttachFragment(Fragment fragment) {
    }

    public void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onCreate(Bundle bundle) {
        this.mCalled = true;
        restoreChildFragmentState(bundle);
        k kVar = this.mChildFragmentManager;
        if (kVar != null) {
            if (kVar.m >= 1) {
                return;
            }
            this.mChildFragmentManager.e();
        }
    }

    public Animation onCreateAnimation(int i, boolean z, int i2) {
        return null;
    }

    public Animator onCreateAnimator(int i, boolean z, int i2) {
        return null;
    }

    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        getActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return null;
    }

    public void onDestroy() {
        this.mCalled = true;
        if (!this.mCheckedForLoaderManager) {
            this.mCheckedForLoaderManager = true;
            this.mLoaderManager = this.mHost.a(this.mWho, this.mLoadersStarted, false);
        }
        c0 c0Var = this.mLoaderManager;
        if (c0Var != null) {
            c0Var.a();
        }
    }

    public void onDestroyOptionsMenu() {
    }

    public void onDestroyView() {
        this.mCalled = true;
    }

    public void onDetach() {
        this.mCalled = true;
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    public void onHiddenChanged(boolean z) {
    }

    @Deprecated
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
        i iVar = this.mHost;
        Activity d2 = iVar == null ? null : iVar.d();
        if (d2 != null) {
            this.mCalled = false;
            onInflate(d2, attributeSet, bundle);
        }
    }

    public void onLowMemory() {
        this.mCalled = true;
    }

    public void onMultiWindowModeChanged(boolean z) {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onOptionsMenuClosed(Menu menu) {
    }

    public void onPause() {
        this.mCalled = true;
    }

    public void onPictureInPictureModeChanged(boolean z) {
    }

    public void onPrepareOptionsMenu(Menu menu) {
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
    }

    public void onResume() {
        this.mCalled = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
        this.mCalled = true;
        if (this.mLoadersStarted) {
            return;
        }
        this.mLoadersStarted = true;
        if (!this.mCheckedForLoaderManager) {
            this.mCheckedForLoaderManager = true;
            this.mLoaderManager = this.mHost.a(this.mWho, this.mLoadersStarted, false);
        } else {
            c0 c0Var = this.mLoaderManager;
            if (c0Var != null) {
                c0Var.d();
            }
        }
    }

    public void onStop() {
        this.mCalled = true;
    }

    public void onViewCreated(View view, Bundle bundle) {
    }

    public void onViewStateRestored(Bundle bundle) {
        this.mCalled = true;
    }

    j peekChildFragmentManager() {
        return this.mChildFragmentManager;
    }

    void performActivityCreated(Bundle bundle) {
        k kVar = this.mChildFragmentManager;
        if (kVar != null) {
            kVar.q();
        }
        this.mState = 2;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (!this.mCalled) {
            throw new o0(d.a.a.a.a.a("Fragment ", this, " did not call through to super.onActivityCreated()"));
        }
        k kVar2 = this.mChildFragmentManager;
        if (kVar2 != null) {
            kVar2.d();
        }
    }

    void performConfigurationChanged(Configuration configuration) {
        onConfigurationChanged(configuration);
        k kVar = this.mChildFragmentManager;
        if (kVar != null) {
            kVar.a(configuration);
        }
    }

    boolean performContextItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (onContextItemSelected(menuItem)) {
            return true;
        }
        k kVar = this.mChildFragmentManager;
        return kVar != null && kVar.a(menuItem);
    }

    void performCreate(Bundle bundle) {
        k kVar = this.mChildFragmentManager;
        if (kVar != null) {
            kVar.q();
        }
        this.mState = 1;
        this.mCalled = false;
        onCreate(bundle);
        this.mIsCreated = true;
        if (!this.mCalled) {
            throw new o0(d.a.a.a.a.a("Fragment ", this, " did not call through to super.onCreate()"));
        }
        this.mLifecycleRegistry.a(a.a.ON_CREATE);
    }

    boolean performCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onCreateOptionsMenu(menu, menuInflater);
            z = true;
        }
        k kVar = this.mChildFragmentManager;
        return kVar != null ? z | kVar.a(menu, menuInflater) : z;
    }

    View performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        k kVar = this.mChildFragmentManager;
        if (kVar != null) {
            kVar.q();
        }
        this.mPerformedCreateView = true;
        return onCreateView(layoutInflater, viewGroup, bundle);
    }

    void performDestroy() {
        this.mLifecycleRegistry.a(a.a.ON_DESTROY);
        k kVar = this.mChildFragmentManager;
        if (kVar != null) {
            kVar.f();
        }
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (!this.mCalled) {
            throw new o0(d.a.a.a.a.a("Fragment ", this, " did not call through to super.onDestroy()"));
        }
        this.mChildFragmentManager = null;
    }

    void performDestroyView() {
        k kVar = this.mChildFragmentManager;
        if (kVar != null) {
            kVar.g();
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (!this.mCalled) {
            throw new o0(d.a.a.a.a.a("Fragment ", this, " did not call through to super.onDestroyView()"));
        }
        c0 c0Var = this.mLoaderManager;
        if (c0Var != null) {
            for (int b2 = c0Var.a.b() - 1; b2 >= 0; b2--) {
                ((c0.a) c0Var.a.e(b2)).k = true;
            }
        }
        this.mPerformedCreateView = false;
    }

    void performDetach() {
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (!this.mCalled) {
            throw new o0(d.a.a.a.a.a("Fragment ", this, " did not call through to super.onDetach()"));
        }
        k kVar = this.mChildFragmentManager;
        if (kVar != null) {
            if (this.mRetaining) {
                kVar.f();
                this.mChildFragmentManager = null;
                return;
            }
            throw new IllegalStateException("Child FragmentManager of " + this + " was not  destroyed and this fragment is not retaining instance");
        }
    }

    LayoutInflater performGetLayoutInflater(Bundle bundle) {
        this.mLayoutInflater = onGetLayoutInflater(bundle);
        return this.mLayoutInflater;
    }

    void performLowMemory() {
        onLowMemory();
        k kVar = this.mChildFragmentManager;
        if (kVar != null) {
            kVar.h();
        }
    }

    void performMultiWindowModeChanged(boolean z) {
        onMultiWindowModeChanged(z);
        k kVar = this.mChildFragmentManager;
        if (kVar != null) {
            kVar.a(z);
        }
    }

    boolean performOptionsItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible && onOptionsItemSelected(menuItem)) {
            return true;
        }
        k kVar = this.mChildFragmentManager;
        return kVar != null && kVar.b(menuItem);
    }

    void performOptionsMenuClosed(Menu menu) {
        if (this.mHidden) {
            return;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onOptionsMenuClosed(menu);
        }
        k kVar = this.mChildFragmentManager;
        if (kVar != null) {
            kVar.a(menu);
        }
    }

    void performPause() {
        this.mLifecycleRegistry.a(a.a.ON_PAUSE);
        k kVar = this.mChildFragmentManager;
        if (kVar != null) {
            kVar.i();
        }
        this.mState = 4;
        this.mCalled = false;
        onPause();
        if (!this.mCalled) {
            throw new o0(d.a.a.a.a.a("Fragment ", this, " did not call through to super.onPause()"));
        }
    }

    void performPictureInPictureModeChanged(boolean z) {
        onPictureInPictureModeChanged(z);
        k kVar = this.mChildFragmentManager;
        if (kVar != null) {
            kVar.b(z);
        }
    }

    boolean performPrepareOptionsMenu(Menu menu) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onPrepareOptionsMenu(menu);
            z = true;
        }
        k kVar = this.mChildFragmentManager;
        return kVar != null ? z | kVar.b(menu) : z;
    }

    void performReallyStop() {
        k kVar = this.mChildFragmentManager;
        if (kVar != null) {
            kVar.j();
        }
        this.mState = 2;
        if (this.mLoadersStarted) {
            this.mLoadersStarted = false;
            if (!this.mCheckedForLoaderManager) {
                this.mCheckedForLoaderManager = true;
                this.mLoaderManager = this.mHost.a(this.mWho, this.mLoadersStarted, false);
            }
            if (this.mLoaderManager != null) {
                if (this.mHost.g()) {
                    this.mLoaderManager.c();
                } else {
                    this.mLoaderManager.e();
                }
            }
        }
    }

    void performResume() {
        k kVar = this.mChildFragmentManager;
        if (kVar != null) {
            kVar.q();
            this.mChildFragmentManager.o();
        }
        this.mState = 5;
        this.mCalled = false;
        onResume();
        if (!this.mCalled) {
            throw new o0(d.a.a.a.a.a("Fragment ", this, " did not call through to super.onResume()"));
        }
        k kVar2 = this.mChildFragmentManager;
        if (kVar2 != null) {
            kVar2.k();
            this.mChildFragmentManager.o();
        }
        this.mLifecycleRegistry.a(a.a.ON_RESUME);
    }

    void performSaveInstanceState(Bundle bundle) {
        Parcelable s;
        onSaveInstanceState(bundle);
        k kVar = this.mChildFragmentManager;
        if (kVar == null || (s = kVar.s()) == null) {
            return;
        }
        bundle.putParcelable("android:support:fragments", s);
    }

    void performStart() {
        k kVar = this.mChildFragmentManager;
        if (kVar != null) {
            kVar.q();
            this.mChildFragmentManager.o();
        }
        this.mState = 4;
        this.mCalled = false;
        onStart();
        if (!this.mCalled) {
            throw new o0(d.a.a.a.a.a("Fragment ", this, " did not call through to super.onStart()"));
        }
        k kVar2 = this.mChildFragmentManager;
        if (kVar2 != null) {
            kVar2.l();
        }
        c0 c0Var = this.mLoaderManager;
        if (c0Var != null) {
            c0Var.b();
        }
        this.mLifecycleRegistry.a(a.a.ON_START);
    }

    void performStop() {
        this.mLifecycleRegistry.a(a.a.ON_STOP);
        k kVar = this.mChildFragmentManager;
        if (kVar != null) {
            kVar.m();
        }
        this.mState = 3;
        this.mCalled = false;
        onStop();
        if (!this.mCalled) {
            throw new o0(d.a.a.a.a.a("Fragment ", this, " did not call through to super.onStop()"));
        }
    }

    public void postponeEnterTransition() {
        ensureAnimationInfo().q = true;
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    public final void requestPermissions(String[] strArr, int i) {
        i iVar = this.mHost;
        if (iVar == null) {
            throw new IllegalStateException(d.a.a.a.a.a("Fragment ", this, " not attached to Activity"));
        }
        ((FragmentActivity.b) iVar).j.requestPermissionsFromFragment(this, strArr, i);
    }

    void restoreChildFragmentState(Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        if (this.mChildFragmentManager == null) {
            instantiateChildFragmentManager();
        }
        this.mChildFragmentManager.a(parcelable, this.mChildNonConfig);
        this.mChildNonConfig = null;
        this.mChildFragmentManager.e();
    }

    final void restoreViewState(Bundle bundle) {
        SparseArray sparseArray = this.mSavedViewState;
        if (sparseArray != null) {
            this.mInnerView.restoreHierarchyState(sparseArray);
            this.mSavedViewState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (!this.mCalled) {
            throw new o0(d.a.a.a.a.a("Fragment ", this, " did not call through to super.onViewStateRestored()"));
        }
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        c.a(ensureAnimationInfo(), Boolean.valueOf(z));
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        c.b(ensureAnimationInfo(), Boolean.valueOf(z));
    }

    void setAnimatingAway(View view) {
        ensureAnimationInfo().a = view;
    }

    void setAnimator(Animator animator) {
        ensureAnimationInfo().b = animator;
    }

    public void setArguments(Bundle bundle) {
        if (this.mIndex >= 0 && isStateSaved()) {
            throw new IllegalStateException("Fragment already active and state has been saved");
        }
        this.mArguments = bundle;
    }

    public void setEnterSharedElementCallback(n0 n0Var) {
        ensureAnimationInfo().o = n0Var;
    }

    public void setEnterTransition(Object obj) {
        c.a(ensureAnimationInfo(), obj);
    }

    public void setExitSharedElementCallback(n0 n0Var) {
        ensureAnimationInfo().p = n0Var;
    }

    public void setExitTransition(Object obj) {
        c.c(ensureAnimationInfo(), obj);
    }

    public void setHasOptionsMenu(boolean z) {
        if (this.mHasMenu != z) {
            this.mHasMenu = z;
            if (!isAdded() || isHidden()) {
                return;
            }
            ((FragmentActivity.b) this.mHost).j.supportInvalidateOptionsMenu();
        }
    }

    void setHideReplaced(boolean z) {
        ensureAnimationInfo().s = z;
    }

    final void setIndex(int i, Fragment fragment) {
        this.mIndex = i;
        if (fragment == null) {
            StringBuilder a2 = d.a.a.a.a.a("android:fragment:");
            a2.append(this.mIndex);
            this.mWho = a2.toString();
        } else {
            this.mWho = fragment.mWho + ":" + this.mIndex;
        }
    }

    public void setInitialSavedState(SavedState savedState) {
        Bundle bundle;
        if (this.mIndex >= 0) {
            throw new IllegalStateException("Fragment already active");
        }
        if (savedState == null || (bundle = savedState.b) == null) {
            bundle = null;
        }
        this.mSavedFragmentState = bundle;
    }

    public void setMenuVisibility(boolean z) {
        if (this.mMenuVisible != z) {
            this.mMenuVisible = z;
            if (this.mHasMenu && isAdded() && !isHidden()) {
                ((FragmentActivity.b) this.mHost).j.supportInvalidateOptionsMenu();
            }
        }
    }

    void setNextAnim(int i) {
        if (this.mAnimationInfo == null && i == 0) {
            return;
        }
        ensureAnimationInfo().d = i;
    }

    void setNextTransition(int i, int i2) {
        if (this.mAnimationInfo == null && i == 0 && i2 == 0) {
            return;
        }
        ensureAnimationInfo();
        c cVar = this.mAnimationInfo;
        cVar.e = i;
        cVar.f = i2;
    }

    void setOnStartEnterTransitionListener(e eVar) {
        ensureAnimationInfo();
        e eVar2 = this.mAnimationInfo.r;
        if (eVar == eVar2) {
            return;
        }
        if (eVar != null && eVar2 != null) {
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
        c cVar = this.mAnimationInfo;
        if (cVar.q) {
            cVar.r = eVar;
        }
        if (eVar != null) {
            ((k.i) eVar).e();
        }
    }

    public void setReenterTransition(Object obj) {
        c.d(ensureAnimationInfo(), obj);
    }

    public void setRetainInstance(boolean z) {
        this.mRetainInstance = z;
    }

    public void setReturnTransition(Object obj) {
        c.b(ensureAnimationInfo(), obj);
    }

    public void setSharedElementEnterTransition(Object obj) {
        c.e(ensureAnimationInfo(), obj);
    }

    public void setSharedElementReturnTransition(Object obj) {
        c.f(ensureAnimationInfo(), obj);
    }

    void setStateAfterAnimating(int i) {
        ensureAnimationInfo().c = i;
    }

    public void setTargetFragment(Fragment fragment, int i) {
        j fragmentManager = getFragmentManager();
        j fragmentManager2 = fragment != null ? fragment.getFragmentManager() : null;
        if (fragmentManager != null && fragmentManager2 != null && fragmentManager != fragmentManager2) {
            throw new IllegalArgumentException(d.a.a.a.a.a("Fragment ", fragment, " must share the same FragmentManager to be set as a target fragment"));
        }
        for (Fragment fragment2 = fragment; fragment2 != null; fragment2 = fragment2.getTargetFragment()) {
            if (fragment2 == this) {
                throw new IllegalArgumentException("Setting " + fragment + " as the target of " + this + " would create a target cycle");
            }
        }
        this.mTarget = fragment;
        this.mTargetRequestCode = i;
    }

    public void setUserVisibleHint(boolean z) {
        if (!this.mUserVisibleHint && z && this.mState < 4 && this.mFragmentManager != null && isAdded()) {
            this.mFragmentManager.f(this);
        }
        this.mUserVisibleHint = z;
        this.mDeferStart = this.mState < 4 && !z;
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        i iVar = this.mHost;
        if (iVar != null) {
            return android.support.v4.app.a.a(((FragmentActivity.b) iVar).j, str);
        }
        return false;
    }

    public void startActivity(Intent intent) {
        startActivity(intent, null);
    }

    public void startActivity(Intent intent, Bundle bundle) {
        i iVar = this.mHost;
        if (iVar == null) {
            throw new IllegalStateException(d.a.a.a.a.a("Fragment ", this, " not attached to Activity"));
        }
        ((FragmentActivity.b) iVar).j.startActivityFromFragment(this, intent, -1, bundle);
    }

    public void startActivityForResult(Intent intent, int i) {
        startActivityForResult(intent, i, null);
    }

    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        i iVar = this.mHost;
        if (iVar == null) {
            throw new IllegalStateException(d.a.a.a.a.a("Fragment ", this, " not attached to Activity"));
        }
        ((FragmentActivity.b) iVar).j.startActivityFromFragment(this, intent, i, bundle);
    }

    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        i iVar = this.mHost;
        if (iVar == null) {
            throw new IllegalStateException(d.a.a.a.a.a("Fragment ", this, " not attached to Activity"));
        }
        ((FragmentActivity.b) iVar).j.startIntentSenderFromFragment(this, intentSender, i, intent, i2, i3, i4, bundle);
    }

    public void startPostponedEnterTransition() {
        k kVar = this.mFragmentManager;
        if (kVar == null || kVar.n == null) {
            ensureAnimationInfo().q = false;
        } else if (Looper.myLooper() != this.mFragmentManager.n.e().getLooper()) {
            this.mFragmentManager.n.e().postAtFrontOfQueue(new a());
        } else {
            callStartTransitionListener();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        a.a.g.a(this, sb);
        if (this.mIndex >= 0) {
            sb.append(" #");
            sb.append(this.mIndex);
        }
        if (this.mFragmentId != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            sb.append(" ");
            sb.append(this.mTag);
        }
        sb.append('}');
        return sb.toString();
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener((View.OnCreateContextMenuListener) null);
    }
}
