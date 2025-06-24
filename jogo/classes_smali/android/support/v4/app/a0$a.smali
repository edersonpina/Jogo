.class public abstract Landroid/support/v4/app/a0$a;
.super Landroid/os/Binder;
.source "INotificationSideChannel.java"

# interfaces
.implements Landroid/support/v4/app/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.support.v4.app.INotificationSideChannel"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9

    const-string v0, "android.support.v4.app.INotificationSideChannel"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3e

    const/4 v2, 0x3

    if-eq p1, v2, :cond_19

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_15

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/support/v4/app/NotificationCompatSideChannelService$a;

    iget-object p3, p2, Landroid/support/v4/app/NotificationCompatSideChannelService$a;->a:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p4

    invoke-virtual {p3, p4, p1}, Landroid/support/v4/app/NotificationCompatSideChannelService;->a(ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    :try_start_30
    iget-object p2, p2, Landroid/support/v4/app/NotificationCompatSideChannelService$a;->a:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-virtual {p2, p1}, Landroid/support/v4/app/NotificationCompatSideChannelService;->a(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_39

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_39
    move-exception p1

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :cond_3e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    move-object p4, p0

    check-cast p4, Landroid/support/v4/app/NotificationCompatSideChannelService$a;

    iget-object v0, p4, Landroid/support/v4/app/NotificationCompatSideChannelService$a;->a:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/support/v4/app/NotificationCompatSideChannelService;->a(ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_5d
    iget-object p4, p4, Landroid/support/v4/app/NotificationCompatSideChannelService$a;->a:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-virtual {p4, p1, p3, p2}, Landroid/support/v4/app/NotificationCompatSideChannelService;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_66

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_66
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :cond_6b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_89

    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Notification;

    goto :goto_8a

    :cond_89
    const/4 p2, 0x0

    :goto_8a
    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/NotificationCompatSideChannelService$a;

    iget-object v2, v0, Landroid/support/v4/app/NotificationCompatSideChannelService$a;->a:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Landroid/support/v4/app/NotificationCompatSideChannelService;->a(ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_9a
    iget-object v0, v0, Landroid/support/v4/app/NotificationCompatSideChannelService$a;->a:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-virtual {v0, p1, p3, p4, p2}, Landroid/support/v4/app/NotificationCompatSideChannelService;->a(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    :try_end_9f
    .catchall {:try_start_9a .. :try_end_9f} :catchall_a3

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_a3
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
