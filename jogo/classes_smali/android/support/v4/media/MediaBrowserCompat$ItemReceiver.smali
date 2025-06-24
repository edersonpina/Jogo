.class Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;
.super Landroid/support/v4/os/ResultReceiver;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemReceiver"
.end annotation


# virtual methods
.method protected a(ILandroid/os/Bundle;)V
    .registers 5

    if-eqz p2, :cond_b

    const-class v0, Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_b
    const/4 v0, 0x0

    if-nez p1, :cond_27

    if-eqz p2, :cond_27

    const-string p1, "media_item"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_24

    instance-of p2, p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    if-eqz p2, :cond_23

    goto :goto_24

    :cond_23
    throw v0

    :cond_24
    :goto_24
    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    throw v0

    :cond_27
    throw v0
.end method
