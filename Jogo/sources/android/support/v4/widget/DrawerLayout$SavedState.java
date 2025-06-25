package android.support.v4.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.AbsSavedState;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class DrawerLayout$SavedState extends AbsSavedState {
    public static final Parcelable.Creator CREATOR = new a();
    int d;
    int e;
    int f;
    int g;
    int h;

    static class a implements Parcelable.ClassLoaderCreator {
        a() {
        }

        public Object createFromParcel(Parcel parcel) {
            return new DrawerLayout$SavedState(parcel, null);
        }

        public Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new DrawerLayout$SavedState(parcel, classLoader);
        }

        public Object[] newArray(int i) {
            return new DrawerLayout$SavedState[i];
        }
    }

    public DrawerLayout$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.d = 0;
        this.d = parcel.readInt();
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.g = parcel.readInt();
        this.h = parcel.readInt();
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeInt(this.g);
        parcel.writeInt(this.h);
    }
}
