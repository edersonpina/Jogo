.class Landroid/support/v4/media/d;
.super Landroid/media/browse/MediaBrowser$SubscriptionCallback;
.source "MediaBrowserCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/c;",
        ">",
        "Landroid/media/browse/MediaBrowser$SubscriptionCallback;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/support/v4/media/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/c;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/d;->a:Landroid/support/v4/media/c;

    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Landroid/support/v4/media/d;->a:Landroid/support/v4/media/c;

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$k$a;

    iget-object v0, p1, Landroid/support/v4/media/MediaBrowserCompat$k$a;->a:Landroid/support/v4/media/MediaBrowserCompat$k;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$k;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_12

    :cond_c
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$j;

    :goto_12
    if-nez v0, :cond_1d

    iget-object p1, p1, Landroid/support/v4/media/MediaBrowserCompat$k$a;->a:Landroid/support/v4/media/MediaBrowserCompat$k;

    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->a(Ljava/util/List;)Ljava/util/List;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat$k;->a()V

    goto :goto_7b

    :cond_1d
    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$j;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$j;->b()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    :goto_2a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-nez v3, :cond_3e

    iget-object v3, p1, Landroid/support/v4/media/MediaBrowserCompat$k$a;->a:Landroid/support/v4/media/MediaBrowserCompat$k;

    invoke-virtual {v3}, Landroid/support/v4/media/MediaBrowserCompat$k;->a()V

    goto :goto_78

    :cond_3e
    iget-object v4, p1, Landroid/support/v4/media/MediaBrowserCompat$k$a;->a:Landroid/support/v4/media/MediaBrowserCompat$k;

    if-nez p2, :cond_43

    goto :goto_75

    :cond_43
    const/4 v5, -0x1

    const-string v6, "android.media.browse.extra.PAGE"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v6, v5, :cond_55

    if-ne v3, v5, :cond_55

    goto :goto_75

    :cond_55
    mul-int v5, v3, v6

    add-int v7, v5, v3

    if-ltz v6, :cond_73

    const/4 v6, 0x1

    if-lt v3, v6, :cond_73

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v5, v3, :cond_65

    goto :goto_73

    :cond_65
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-le v7, v3, :cond_6f

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    :cond_6f
    invoke-interface {p2, v5, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    goto :goto_75

    :cond_73
    :goto_73
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_75
    invoke-virtual {v4}, Landroid/support/v4/media/MediaBrowserCompat$k;->b()V

    :goto_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_7b
    :goto_7b
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 2

    iget-object p1, p0, Landroid/support/v4/media/d;->a:Landroid/support/v4/media/c;

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$k$a;

    iget-object p1, p1, Landroid/support/v4/media/MediaBrowserCompat$k$a;->a:Landroid/support/v4/media/MediaBrowserCompat$k;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat$k;->c()V

    return-void
.end method
