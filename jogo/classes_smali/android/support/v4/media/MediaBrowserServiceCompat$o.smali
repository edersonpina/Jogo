.class Landroid/support/v4/media/MediaBrowserServiceCompat$o;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompat$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "o"
.end annotation


# instance fields
.field final a:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Landroid/os/Messenger;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$o;->a:Landroid/os/Messenger;

    return-void
.end method

.method private a(ILandroid/os/Bundle;)V
    .registers 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    const/4 p1, 0x2

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$o;->a:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$o;->a:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data_media_item_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data_options"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz p2, :cond_23

    instance-of p1, p2, Ljava/util/ArrayList;

    if-eqz p1, :cond_19

    check-cast p2, Ljava/util/ArrayList;

    move-object p1, p2

    goto :goto_1e

    :cond_19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1e
    const-string p2, "data_media_item_list"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_23
    const/4 p1, 0x3

    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$o;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public b()V
    .registers 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$o;->a(ILandroid/os/Bundle;)V

    return-void
.end method
