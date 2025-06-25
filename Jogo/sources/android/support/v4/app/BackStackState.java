package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.b;
import android.text.TextUtils;
import java.util.ArrayList;

/* compiled from: BackStackRecord.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
final class BackStackState implements Parcelable {
    public static final Parcelable.Creator CREATOR = new a();
    final int[] b;
    final int c;
    final int d;
    final String e;
    final int f;
    final int g;
    final CharSequence h;
    final int i;
    final CharSequence j;
    final ArrayList k;
    final ArrayList l;
    final boolean m;

    /* compiled from: BackStackRecord.java */
    static class a implements Parcelable.Creator {
        a() {
        }

        public Object createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        public Object[] newArray(int i) {
            return new BackStackState[i];
        }
    }

    public BackStackState(Parcel parcel) {
        this.b = parcel.createIntArray();
        this.c = parcel.readInt();
        this.d = parcel.readInt();
        this.e = parcel.readString();
        this.f = parcel.readInt();
        this.g = parcel.readInt();
        this.h = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.i = parcel.readInt();
        this.j = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.k = parcel.createStringArrayList();
        this.l = parcel.createStringArrayList();
        this.m = parcel.readInt() != 0;
    }

    public BackStackState(b bVar) {
        int size = bVar.b.size();
        this.b = new int[size * 6];
        if (!bVar.i) {
            throw new IllegalStateException("Not on back stack");
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            b.a aVar = (b.a) bVar.b.get(i2);
            int[] iArr = this.b;
            int i3 = i + 1;
            iArr[i] = aVar.a;
            int i4 = i3 + 1;
            Fragment fragment = aVar.b;
            iArr[i3] = fragment != null ? fragment.mIndex : -1;
            int[] iArr2 = this.b;
            int i5 = i4 + 1;
            iArr2[i4] = aVar.c;
            int i6 = i5 + 1;
            iArr2[i5] = aVar.d;
            int i7 = i6 + 1;
            iArr2[i6] = aVar.e;
            i = i7 + 1;
            iArr2[i7] = aVar.f;
        }
        this.c = bVar.g;
        this.d = bVar.h;
        this.e = bVar.j;
        this.f = bVar.l;
        this.g = bVar.m;
        this.h = bVar.n;
        this.i = bVar.o;
        this.j = bVar.p;
        this.k = bVar.q;
        this.l = bVar.r;
        this.m = bVar.s;
    }

    public b a(k kVar) {
        b bVar = new b(kVar);
        int i = 0;
        while (i < this.b.length) {
            b.a aVar = new b.a();
            int[] iArr = this.b;
            int i2 = i + 1;
            aVar.a = iArr[i];
            int i3 = i2 + 1;
            int i4 = iArr[i2];
            if (i4 >= 0) {
                aVar.b = (Fragment) kVar.f.get(i4);
            } else {
                aVar.b = null;
            }
            int[] iArr2 = this.b;
            int i5 = i3 + 1;
            aVar.c = iArr2[i3];
            int i6 = i5 + 1;
            aVar.d = iArr2[i5];
            int i7 = i6 + 1;
            aVar.e = iArr2[i6];
            i = i7 + 1;
            aVar.f = iArr2[i7];
            bVar.c = aVar.c;
            bVar.d = aVar.d;
            bVar.e = aVar.e;
            bVar.f = aVar.f;
            bVar.a(aVar);
        }
        bVar.g = this.c;
        bVar.h = this.d;
        bVar.j = this.e;
        bVar.l = this.f;
        bVar.i = true;
        bVar.m = this.g;
        bVar.n = this.h;
        bVar.o = this.i;
        bVar.p = this.j;
        bVar.q = this.k;
        bVar.r = this.l;
        bVar.s = this.m;
        bVar.a(1);
        return bVar;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.b);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
        parcel.writeString(this.e);
        parcel.writeInt(this.f);
        parcel.writeInt(this.g);
        TextUtils.writeToParcel(this.h, parcel, 0);
        parcel.writeInt(this.i);
        TextUtils.writeToParcel(this.j, parcel, 0);
        parcel.writeStringList(this.k);
        parcel.writeStringList(this.l);
        parcel.writeInt(this.m ? 1 : 0);
    }
}
