.class Landroid/support/v4/media/k;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Landroid/support/v4/media/MediaBrowserServiceCompat$n;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Landroid/support/v4/media/MediaBrowserServiceCompat$m;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$m;Landroid/support/v4/media/MediaBrowserServiceCompat$n;Landroid/os/Bundle;)V
    .registers 4

    iput-object p1, p0, Landroid/support/v4/media/k;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    iput-object p2, p0, Landroid/support/v4/media/k;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$n;

    iput-object p3, p0, Landroid/support/v4/media/k;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/media/k;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$n;

    check-cast v0, Landroid/support/v4/media/MediaBrowserServiceCompat$o;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$o;->a()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/k;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Lb/b/c/d/a;

    invoke-virtual {v1, v0}, Lb/b/c/d/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    iget-object v2, p0, Landroid/support/v4/media/k;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {v1, v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$f;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iget-object v2, p0, Landroid/support/v4/media/k;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$n;

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$n;

    iget-object v2, p0, Landroid/support/v4/media/k;->c:Landroid/os/Bundle;

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->b:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/support/v4/media/k;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Lb/b/c/d/a;

    invoke-virtual {v2, v0, v1}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    :try_start_2c
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_37

    :catch_30
    const-string v0, "MBServiceCompat"

    const-string v1, "IBinder is already dead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    return-void
.end method
