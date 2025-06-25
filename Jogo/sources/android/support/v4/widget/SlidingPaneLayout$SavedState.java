package android.support.v4.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.AbsSavedState;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class SlidingPaneLayout$SavedState extends AbsSavedState {
    public static final Parcelable.Creator CREATOR = new a();
    boolean d;

    static class a implements Parcelable.ClassLoaderCreator {
        a() {
        }

        public Object createFromParcel(Parcel parcel) {
            return new SlidingPaneLayout$SavedState(parcel, null);
        }

        public Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new SlidingPaneLayout$SavedState(parcel, null);
        }

        public Object[] newArray(int i) {
            return new SlidingPaneLayout$SavedState[i];
        }
    }

    SlidingPaneLayout$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.d = parcel.readInt() != 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.d ? 1 : 0);
    }
}
