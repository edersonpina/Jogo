.class Landroid/support/v4/media/MediaBrowserServiceCompat$a;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$l;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$f;Landroid/os/Bundle;)V
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
.field final synthetic f:Landroid/support/v4/media/MediaBrowserServiceCompat$f;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Landroid/os/Bundle;

.field final synthetic i:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompat$f;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->i:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->f:Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->g:Ljava/lang/String;

    iput-object p5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->h:Landroid/os/Bundle;

    invoke-direct {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->i:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Lb/b/c/d/a;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->f:Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$n;

    check-cast v1, Landroid/support/v4/media/MediaBrowserServiceCompat$o;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$o;->a()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/b/c/d/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->f:Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    const-string v2, "MBServiceCompat"

    if-eq v0, v1, :cond_3d

    sget-boolean p1, Landroid/support/v4/media/MediaBrowserServiceCompat;->f:Z

    if-eqz p1, :cond_79

    const-string p1, "Not sending onLoadChildren result for connection that has been disconnected. pkg="

    invoke-static {p1}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->f:Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :cond_3d
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4d

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->i:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->h:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    :cond_4d
    :try_start_4d
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->f:Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$n;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->g:Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->h:Landroid/os/Bundle;
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_55} :catch_5b

    check-cast v0, Landroid/support/v4/media/MediaBrowserServiceCompat$o;

    :try_start_57
    invoke-virtual {v0, v1, p1, v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$o;->a(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_79

    :catch_5b
    const-string p1, "Calling onLoadChildren() failed for id="

    invoke-static {p1}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " package="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->f:Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    :goto_79
    return-void
.end method
