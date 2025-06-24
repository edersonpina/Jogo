.class Landroid/support/v4/media/f;
.super Landroid/support/v4/media/d;
.source "MediaBrowserCompatApi26.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/e;",
        ">",
        "Landroid/support/v4/media/d<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v4/media/e;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/support/v4/media/d;-><init>(Landroid/support/v4/media/c;)V

    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Landroid/support/v4/media/d;->a:Landroid/support/v4/media/c;

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$k$b;

    iget-object p1, p1, Landroid/support/v4/media/MediaBrowserCompat$k$b;->b:Landroid/support/v4/media/MediaBrowserCompat$k;

    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->a(Ljava/util/List;)Ljava/util/List;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat$k;->b()V

    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    iget-object p1, p0, Landroid/support/v4/media/d;->a:Landroid/support/v4/media/c;

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$k$b;

    iget-object p1, p1, Landroid/support/v4/media/MediaBrowserCompat$k$b;->b:Landroid/support/v4/media/MediaBrowserCompat$k;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat$k;->d()V

    return-void
.end method
