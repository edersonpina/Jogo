package android.support.v4.os;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.os.a;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator CREATOR = new a();
    final boolean b = false;
    final Handler c = null;
    android.support.v4.os.a d;

    static class a implements Parcelable.Creator {
        a() {
        }

        public Object createFromParcel(Parcel parcel) {
            return new ResultReceiver(parcel);
        }

        public Object[] newArray(int i) {
            return new ResultReceiver[i];
        }
    }

    class b extends a.a {
        b() {
        }

        public void a(int i, Bundle bundle) {
            ResultReceiver resultReceiver = ResultReceiver.this;
            Handler handler = resultReceiver.c;
            if (handler != null) {
                handler.post(resultReceiver.new c(i, bundle));
            } else {
                resultReceiver.a(i, bundle);
            }
        }
    }

    class c implements Runnable {
        final int b;
        final Bundle c;

        c(int i, Bundle bundle) {
            this.b = i;
            this.c = bundle;
        }

        public void run() {
            ResultReceiver.this.a(this.b, this.c);
        }
    }

    ResultReceiver(Parcel parcel) {
        this.d = a.a.a(parcel.readStrongBinder());
    }

    protected void a(int i, Bundle bundle) {
    }

    public void b(int i, Bundle bundle) {
        if (this.b) {
            Handler handler = this.c;
            if (handler != null) {
                handler.post(new c(i, bundle));
                return;
            } else {
                a(i, bundle);
                return;
            }
        }
        android.support.v4.os.a aVar = this.d;
        if (aVar != null) {
            try {
                aVar.a(i, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            if (this.d == null) {
                this.d = new b();
            }
            parcel.writeStrongBinder(this.d.asBinder());
        }
    }
}
