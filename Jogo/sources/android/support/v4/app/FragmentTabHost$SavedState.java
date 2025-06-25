package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class FragmentTabHost$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator CREATOR = new a();
    String b;

    static class a implements Parcelable.Creator {
        a() {
        }

        public Object createFromParcel(Parcel parcel) {
            return new FragmentTabHost$SavedState(parcel);
        }

        public Object[] newArray(int i) {
            return new FragmentTabHost$SavedState[i];
        }
    }

    FragmentTabHost$SavedState(Parcel parcel) {
        super(parcel);
        this.b = parcel.readString();
    }

    public String toString() {
        StringBuilder a2 = d.a.a.a.a.a("FragmentTabHost.SavedState{");
        a2.append(Integer.toHexString(System.identityHashCode(this)));
        a2.append(" curTab=");
        return d.a.a.a.a.a(a2, this.b, "}");
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.b);
    }
}
