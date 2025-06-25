package android.support.v4.app;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.support.v4.app.NotificationCompatSideChannelService;

/* compiled from: INotificationSideChannel.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public interface a0 extends IInterface {

    /* compiled from: INotificationSideChannel.java */
    public static abstract class a extends Binder implements a0 {
        public a() {
            attachInterface(this, "android.support.v4.app.INotificationSideChannel");
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            long clearCallingIdentity;
            if (i == 1) {
                parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
                String readString = parcel.readString();
                int readInt = parcel.readInt();
                String readString2 = parcel.readString();
                Notification notification = parcel.readInt() != 0 ? (Notification) Notification.CREATOR.createFromParcel(parcel) : null;
                NotificationCompatSideChannelService.a aVar = (NotificationCompatSideChannelService.a) this;
                NotificationCompatSideChannelService.this.a(Binder.getCallingUid(), readString);
                clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    NotificationCompatSideChannelService.this.a(readString, readInt, readString2, notification);
                    return true;
                } finally {
                }
            }
            if (i == 2) {
                parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
                String readString3 = parcel.readString();
                int readInt2 = parcel.readInt();
                String readString4 = parcel.readString();
                NotificationCompatSideChannelService.a aVar2 = (NotificationCompatSideChannelService.a) this;
                NotificationCompatSideChannelService.this.a(Binder.getCallingUid(), readString3);
                clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    NotificationCompatSideChannelService.this.a(readString3, readInt2, readString4);
                    return true;
                } finally {
                }
            }
            if (i != 3) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("android.support.v4.app.INotificationSideChannel");
                return true;
            }
            parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
            String readString5 = parcel.readString();
            NotificationCompatSideChannelService.a aVar3 = (NotificationCompatSideChannelService.a) this;
            NotificationCompatSideChannelService.this.a(Binder.getCallingUid(), readString5);
            clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                NotificationCompatSideChannelService.this.a(readString5);
                return true;
            } finally {
            }
        }
    }
}
