package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: FragmentManager.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator CREATOR = new a();
    FragmentState[] b;
    int[] c;
    BackStackState[] d;
    int e;
    int f;

    /* compiled from: FragmentManager.java */
    static class a implements Parcelable.Creator {
        a() {
        }

        public Object createFromParcel(Parcel parcel) {
            return new FragmentManagerState(parcel);
        }

        public Object[] newArray(int i) {
            return new FragmentManagerState[i];
        }
    }

    public FragmentManagerState() {
        this.e = -1;
    }

    public FragmentManagerState(Parcel parcel) {
        this.e = -1;
        this.b = (FragmentState[]) parcel.createTypedArray(FragmentState.CREATOR);
        this.c = parcel.createIntArray();
        this.d = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
        this.e = parcel.readInt();
        this.f = parcel.readInt();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.b, i);
        parcel.writeIntArray(this.c);
        parcel.writeTypedArray(this.d, i);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
    }
}
