package android.support.v4.view;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class ViewPager$SavedState extends AbsSavedState {
    public static final Parcelable.Creator CREATOR = new a();
    int d;
    Parcelable e;

    static class a implements Parcelable.ClassLoaderCreator {
        a() {
        }

        public Object createFromParcel(Parcel parcel) {
            return new ViewPager$SavedState(parcel, null);
        }

        public Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new ViewPager$SavedState(parcel, classLoader);
        }

        public Object[] newArray(int i) {
            return new ViewPager$SavedState[i];
        }
    }

    ViewPager$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        classLoader = classLoader == null ? ViewPager$SavedState.class.getClassLoader() : classLoader;
        this.d = parcel.readInt();
        this.e = parcel.readParcelable(classLoader);
    }

    public String toString() {
        StringBuilder a2 = d.a.a.a.a.a("FragmentPager.SavedState{");
        a2.append(Integer.toHexString(System.identityHashCode(this)));
        a2.append(" position=");
        return d.a.a.a.a.a(a2, this.d, "}");
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.d);
        parcel.writeParcelable(this.e, i);
    }
}
