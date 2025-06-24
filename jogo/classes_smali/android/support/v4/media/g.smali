.class Landroid/support/v4/media/g;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Landroid/support/v4/media/MediaBrowserServiceCompat$n;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:I

.field final synthetic f:Landroid/support/v4/media/MediaBrowserServiceCompat$m;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$m;Landroid/support/v4/media/MediaBrowserServiceCompat$n;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 6

    iput-object p1, p0, Landroid/support/v4/media/g;->f:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    iput-object p2, p0, Landroid/support/v4/media/g;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$n;

    iput-object p3, p0, Landroid/support/v4/media/g;->c:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/media/g;->d:Landroid/os/Bundle;

    iput p5, p0, Landroid/support/v4/media/g;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/media/g;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$n;

    check-cast v0, Landroid/support/v4/media/MediaBrowserServiceCompat$o;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$o;->a()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/g;->f:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Lb/b/c/d/a;

    invoke-virtual {v1, v0}, Lb/b/c/d/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    iget-object v2, p0, Landroid/support/v4/media/g;->f:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {v1, v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$f;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iget-object v2, p0, Landroid/support/v4/media/g;->c:Ljava/lang/String;

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->a:Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/media/g;->d:Landroid/os/Bundle;

    iput-object v3, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->b:Landroid/os/Bundle;

    iget-object v4, p0, Landroid/support/v4/media/g;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$n;

    iput-object v4, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$n;

    iget-object v4, p0, Landroid/support/v4/media/g;->f:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget v5, p0, Landroid/support/v4/media/g;->e:I

    invoke-virtual {v4, v2, v5, v3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;ILandroid/os/Bundle;)V

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$e;

    iget-object v3, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$e;

    const-string v4, "MBServiceCompat"

    if-nez v3, :cond_73

    const-string v0, "No root for client "

    invoke-static {v0}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/support/v4/media/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_58
    iget-object v0, p0, Landroid/support/v4/media/g;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$n;
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5a} :catch_60

    check-cast v0, Landroid/support/v4/media/MediaBrowserServiceCompat$o;

    :try_start_5c
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$o;->b()V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_a7

    :catch_60
    const-string v0, "Calling onConnectFailed() failed. Ignoring. pkg="

    invoke-static {v0}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    :cond_73
    :try_start_73
    iget-object v3, p0, Landroid/support/v4/media/g;->f:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Lb/b/c/d/a;

    invoke-virtual {v3, v0, v1}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v3, p0, Landroid/support/v4/media/g;->f:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-nez v3, :cond_89

    goto :goto_a7

    :cond_89
    iget-object v0, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$e;
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_8b} :catch_8c

    throw v2

    :catch_8c
    const-string v1, "Calling onConnect() failed. Dropping client. pkg="

    invoke-static {v1}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/support/v4/media/g;->f:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Lb/b/c/d/a;

    invoke-virtual {v1, v0}, Lb/b/c/d/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a7
    return-void
.end method
