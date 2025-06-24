.class Landroid/support/v4/media/MediaBrowserServiceCompat$c;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$l;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;->b(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$f;Landroid/support/v4/os/ResultReceiver;)V
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
.field final synthetic f:Landroid/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V
    .registers 4

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->f:Landroid/support/v4/os/ResultReceiver;

    invoke-direct {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_26

    if-nez p1, :cond_d

    goto :goto_26

    :cond_d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    const-string v2, "search_results"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->f:Landroid/support/v4/os/ResultReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/os/ResultReceiver;->b(ILandroid/os/Bundle;)V

    goto :goto_2d

    :cond_26
    :goto_26
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->f:Landroid/support/v4/os/ResultReceiver;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/os/ResultReceiver;->b(ILandroid/os/Bundle;)V

    :goto_2d
    return-void
.end method
