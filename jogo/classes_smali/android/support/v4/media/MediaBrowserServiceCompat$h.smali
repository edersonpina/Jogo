.class Landroid/support/v4/media/MediaBrowserServiceCompat$h;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompat$g;
.implements Landroid/support/v4/media/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Object;

.field c:Landroid/os/Messenger;

.field final synthetic d:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->b:Ljava/lang/Object;

    check-cast v0, Landroid/service/media/MediaBrowserService;

    invoke-virtual {v0, p1}, Landroid/service/media/MediaBrowserService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/m;
    .registers 8

    const/4 v0, 0x0

    if-eqz p3, :cond_4d

    const/4 v1, 0x0

    const-string v2, "extra_client_version"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4d

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$p;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->c:Landroid/os/Messenger;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x2

    const-string v3, "extra_service_version"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->c:Landroid/os/Messenger;

    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "extra_messenger"

    invoke-static {v1, v3, v2}, Landroid/support/v4/app/e;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v2, :cond_48

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a()Landroid/support/v4/media/session/b;

    move-result-object v2

    if-nez v2, :cond_3e

    move-object v2, v0

    goto :goto_42

    :cond_3e
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_42
    const-string v3, "extra_session_binder"

    invoke-static {v1, v3, v2}, Landroid/support/v4/app/e;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_4d

    :cond_48
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    :goto_4d
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method public a()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    new-instance v1, Landroid/support/v4/media/n;

    invoke-direct {v1, v0, p0}, Landroid/support/v4/media/n;-><init>(Landroid/content/Context;Landroid/support/v4/media/p;)V

    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->b:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->b:Ljava/lang/Object;

    check-cast v0, Landroid/service/media/MediaBrowserService;

    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/support/v4/media/o;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/o<",
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$h$a;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$h$a;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$h;Ljava/lang/Object;Landroid/support/v4/media/o;)V

    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$l;)V

    return-void
.end method
