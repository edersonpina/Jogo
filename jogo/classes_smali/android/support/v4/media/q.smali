.class Landroid/support/v4/media/q;
.super Landroid/support/v4/media/n;
.source "MediaBrowserServiceCompatApi23.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/media/r;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/n;-><init>(Landroid/content/Context;Landroid/support/v4/media/p;)V

    return-void
.end method


# virtual methods
.method public onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/n;->b:Landroid/support/v4/media/p;

    new-instance v1, Landroid/support/v4/media/o;

    invoke-direct {v1, p2}, Landroid/support/v4/media/o;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    check-cast v0, Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->b(Ljava/lang/String;Landroid/support/v4/media/o;)V

    return-void
.end method
