.class Landroid/support/v4/media/j;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Landroid/support/v4/media/MediaBrowserServiceCompat$n;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/os/IBinder;

.field final synthetic e:Landroid/support/v4/media/MediaBrowserServiceCompat$m;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$m;Landroid/support/v4/media/MediaBrowserServiceCompat$n;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 5

    iput-object p1, p0, Landroid/support/v4/media/j;->e:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    iput-object p2, p0, Landroid/support/v4/media/j;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$n;

    iput-object p3, p0, Landroid/support/v4/media/j;->c:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/media/j;->d:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/media/j;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$n;

    check-cast v0, Landroid/support/v4/media/MediaBrowserServiceCompat$o;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$o;->a()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/j;->e:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Lb/b/c/d/a;

    invoke-virtual {v1, v0}, Lb/b/c/d/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    const-string v1, "MBServiceCompat"

    if-nez v0, :cond_2b

    const-string v0, "removeSubscription for callback that isn\'t registered id="

    invoke-static {v0}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/media/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2b
    iget-object v2, p0, Landroid/support/v4/media/j;->e:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v3, p0, Landroid/support/v4/media/j;->c:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/media/j;->d:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$f;Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_50

    const-string v0, "removeSubscription called for "

    invoke-static {v0}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/media/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " which is not subscribed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return-void
.end method
