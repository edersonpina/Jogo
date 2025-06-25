package android.support.v4.app;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
final class FragmentState implements Parcelable {
    public static final Parcelable.Creator CREATOR = new a();
    final String b;
    final int c;
    final boolean d;
    final int e;
    final int f;
    final String g;
    final boolean h;
    final boolean i;
    final Bundle j;
    final boolean k;
    Bundle l;
    Fragment m;

    static class a implements Parcelable.Creator {
        a() {
        }

        public Object createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        public Object[] newArray(int i) {
            return new FragmentState[i];
        }
    }

    FragmentState(Parcel parcel) {
        this.b = parcel.readString();
        this.c = parcel.readInt();
        this.d = parcel.readInt() != 0;
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.g = parcel.readString();
        this.h = parcel.readInt() != 0;
        this.i = parcel.readInt() != 0;
        this.j = parcel.readBundle();
        this.k = parcel.readInt() != 0;
        this.l = parcel.readBundle();
    }

    FragmentState(Fragment fragment) {
        this.b = fragment.getClass().getName();
        this.c = fragment.mIndex;
        this.d = fragment.mFromLayout;
        this.e = fragment.mFragmentId;
        this.f = fragment.mContainerId;
        this.g = fragment.mTag;
        this.h = fragment.mRetainInstance;
        this.i = fragment.mDetached;
        this.j = fragment.mArguments;
        this.k = fragment.mHidden;
    }

    public Fragment a(i iVar, g gVar, Fragment fragment, o oVar) {
        if (this.m == null) {
            Context context = iVar.b;
            Bundle bundle = this.j;
            if (bundle != null) {
                bundle.setClassLoader(context.getClassLoader());
            }
            if (gVar != null) {
                this.m = gVar.a(context, this.b, this.j);
            } else {
                this.m = Fragment.instantiate(context, this.b, this.j);
            }
            Bundle bundle2 = this.l;
            if (bundle2 != null) {
                bundle2.setClassLoader(context.getClassLoader());
                this.m.mSavedFragmentState = this.l;
            }
            this.m.setIndex(this.c, fragment);
            Fragment fragment2 = this.m;
            fragment2.mFromLayout = this.d;
            fragment2.mRestored = true;
            fragment2.mFragmentId = this.e;
            fragment2.mContainerId = this.f;
            fragment2.mTag = this.g;
            fragment2.mRetainInstance = this.h;
            fragment2.mDetached = this.i;
            fragment2.mHidden = this.k;
            fragment2.mFragmentManager = iVar.d;
        }
        Fragment fragment3 = this.m;
        fragment3.mChildNonConfig = oVar;
        return fragment3;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d ? 1 : 0);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeString(this.g);
        parcel.writeInt(this.h ? 1 : 0);
        parcel.writeInt(this.i ? 1 : 0);
        parcel.writeBundle(this.j);
        parcel.writeInt(this.k ? 1 : 0);
        parcel.writeBundle(this.l);
    }
}
