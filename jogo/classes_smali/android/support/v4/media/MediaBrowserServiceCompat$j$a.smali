.class Landroid/support/v4/media/MediaBrowserServiceCompat$j$a;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$l;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$j;->a(Ljava/lang/String;Landroid/support/v4/media/s$b;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/media/MediaBrowserServiceCompat$l<",
        "Ljava/util/List<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Landroid/support/v4/media/s$b;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$j;Ljava/lang/Object;Landroid/support/v4/media/s$b;)V
    .registers 4

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$j$a;->f:Landroid/support/v4/media/s$b;

    invoke-direct {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_25

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_25
    const/4 v0, 0x0

    :cond_26
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$j$a;->f:Landroid/support/v4/media/s$b;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/s$b;->a(Ljava/util/List;I)V

    return-void
.end method
