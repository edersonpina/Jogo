.class Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;
.super Landroid/support/v4/os/ResultReceiver;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchResultReceiver"
.end annotation


# virtual methods
.method protected a(ILandroid/os/Bundle;)V
    .registers 7

    if-eqz p2, :cond_b

    const-class v0, Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_b
    const/4 v0, 0x0

    if-nez p1, :cond_32

    if-eqz p2, :cond_32

    const-string p1, "search_results"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_31

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v1, :cond_31

    aget-object v3, p1, v2

    check-cast v3, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_31
    throw v0

    :cond_32
    goto :goto_34

    :goto_33
    throw v0

    :goto_34
    goto :goto_33
.end method
