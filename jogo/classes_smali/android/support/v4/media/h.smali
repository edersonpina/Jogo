.class Landroid/support/v4/media/h;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Landroid/support/v4/media/MediaBrowserServiceCompat$n;

.field final synthetic c:Landroid/support/v4/media/MediaBrowserServiceCompat$m;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$m;Landroid/support/v4/media/MediaBrowserServiceCompat$n;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/media/h;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    iput-object p2, p0, Landroid/support/v4/media/h;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/media/h;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$n;

    check-cast v0, Landroid/support/v4/media/MediaBrowserServiceCompat$o;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$o;->a()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/h;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Lb/b/c/d/a;

    invoke-virtual {v1, v0}, Lb/b/c/d/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    if-eqz v0, :cond_22

    iget-object v1, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$n;

    check-cast v1, Landroid/support/v4/media/MediaBrowserServiceCompat$o;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$o;->a()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_22
    return-void
.end method
