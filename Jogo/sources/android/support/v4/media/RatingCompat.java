package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator CREATOR = new a();
    private final int b;
    private final float c;

    static class a implements Parcelable.Creator {
        a() {
        }

        public Object createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat());
        }

        public Object[] newArray(int i) {
            return new RatingCompat[i];
        }
    }

    RatingCompat(int i, float f) {
        this.b = i;
        this.c = f;
    }

    public int describeContents() {
        return this.b;
    }

    public String toString() {
        StringBuilder a2 = d.a.a.a.a.a("Rating:style=");
        a2.append(this.b);
        a2.append(" rating=");
        float f = this.c;
        a2.append(f < 0.0f ? "unrated" : String.valueOf(f));
        return a2.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b);
        parcel.writeFloat(this.c);
    }
}
