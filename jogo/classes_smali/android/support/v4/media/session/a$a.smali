.class public abstract Landroid/support/v4/media/session/a$a;
.super Landroid/os/Binder;
.source "IMediaControllerCallback.java"

# interfaces
.implements Landroid/support/v4/media/session/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const v0, 0x5f4e5446

    const-string v1, "android.support.v4.media.session.IMediaControllerCallback"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_f7

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_fc

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_11  #0xd
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Landroid/support/v4/media/session/MediaControllerCompat$a$b;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->b()V

    return v2

    :pswitch_1b  #0xc
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    move-object p2, p0

    check-cast p2, Landroid/support/v4/media/session/MediaControllerCompat$a$b;

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->b(I)V

    return v2

    :pswitch_29  #0xb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_34

    const/4 p1, 0x1

    goto :goto_35

    :cond_34
    const/4 p1, 0x0

    :goto_35
    move-object p2, p0

    check-cast p2, Landroid/support/v4/media/session/MediaControllerCompat$a$b;

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->a(Z)V

    return v2

    :pswitch_3c  #0xa
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    move-object p1, p0

    check-cast p1, Landroid/support/v4/media/session/MediaControllerCompat$a$b;

    return v2

    :pswitch_47  #0x9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    move-object p2, p0

    check-cast p2, Landroid/support/v4/media/session/MediaControllerCompat$a$b;

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->a(I)V

    return v2

    :pswitch_55  #0x8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_67

    sget-object p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    :cond_67
    invoke-interface {p0, v0}, Landroid/support/v4/media/session/a;->a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    return v2

    :pswitch_6b  #0x7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7d

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    :cond_7d
    invoke-interface {p0, v0}, Landroid/support/v4/media/session/a;->a(Landroid/os/Bundle;)V

    return v2

    :pswitch_81  #0x6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_93

    sget-object p1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    :cond_93
    invoke-interface {p0, v0}, Landroid/support/v4/media/session/a;->a(Ljava/lang/CharSequence;)V

    return v2

    :pswitch_97  #0x5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object p1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/support/v4/media/session/a;->a(Ljava/util/List;)V

    return v2

    :pswitch_a4  #0x4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b6

    sget-object p1, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/support/v4/media/MediaMetadataCompat;

    :cond_b6
    invoke-interface {p0, v0}, Landroid/support/v4/media/session/a;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    return v2

    :pswitch_ba  #0x3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_cc

    sget-object p1, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    :cond_cc
    move-object p1, p0

    check-cast p1, Landroid/support/v4/media/session/MediaControllerCompat$a$b;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return v2

    :pswitch_d3  #0x2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/support/v4/media/session/a;->a()V

    return v2

    :pswitch_da  #0x1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_f0

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    :cond_f0
    move-object p2, p0

    check-cast p2, Landroid/support/v4/media/session/MediaControllerCompat$a$b;

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return v2

    :cond_f7
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_da  #00000001
        :pswitch_d3  #00000002
        :pswitch_ba  #00000003
        :pswitch_a4  #00000004
        :pswitch_97  #00000005
        :pswitch_81  #00000006
        :pswitch_6b  #00000007
        :pswitch_55  #00000008
        :pswitch_47  #00000009
        :pswitch_3c  #0000000a
        :pswitch_29  #0000000b
        :pswitch_1b  #0000000c
        :pswitch_11  #0000000d
    .end packed-switch
.end method
