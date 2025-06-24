.class Landroid/support/v4/media/MediaBrowserCompat$d;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompat$c;
.implements Landroid/support/v4/media/MediaBrowserCompat$h;
.implements Landroid/support/v4/media/MediaBrowserCompat$b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field protected final b:Ljava/lang/Object;

.field protected final c:Landroid/os/Bundle;

.field protected final d:Landroid/support/v4/media/MediaBrowserCompat$a;

.field private final e:Lb/b/c/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/c/d/a<",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserCompat$j;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Landroid/support/v4/media/MediaBrowserCompat$i;

.field protected g:Landroid/os/Messenger;

.field private h:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$b;Landroid/os/Bundle;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$a;-><init>(Landroid/support/v4/media/MediaBrowserCompat$h;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->d:Landroid/support/v4/media/MediaBrowserCompat$a;

    new-instance v0, Lb/b/c/d/a;

    invoke-direct {v0}, Lb/b/c/d/a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->e:Lb/b/c/d/a;

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->a:Landroid/content/Context;

    if-nez p4, :cond_1a

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_1a
    const/4 v0, 0x1

    const-string v1, "extra_client_version"

    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->c:Landroid/os/Bundle;

    iput-object p0, p3, Landroid/support/v4/media/MediaBrowserCompat$b;->b:Landroid/support/v4/media/MediaBrowserCompat$b$a;

    iget-object p3, p3, Landroid/support/v4/media/MediaBrowserCompat$b;->a:Ljava/lang/Object;

    iget-object p4, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->c:Landroid/os/Bundle;

    new-instance v0, Landroid/media/browse/MediaBrowser;

    check-cast p3, Landroid/media/browse/MediaBrowser$ConnectionCallback;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->h:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->b:Ljava/lang/Object;

    check-cast v0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a(Ljava/lang/Object;Landroid/support/v4/media/session/b;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->h:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    :cond_13
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->h:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public a(Landroid/os/Messenger;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .registers 5

    return-void
.end method

.method public a(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->g:Landroid/os/Messenger;

    if-eq v0, p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->e:Lb/b/c/d/a;

    invoke-virtual {p1, p2}, Lb/b/c/d/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$j;

    if-nez p1, :cond_2a

    sget-boolean p1, Landroid/support/v4/media/MediaBrowserCompat;->b:Z

    if-eqz p1, :cond_29

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLoadChildren for id that isn\'t subscribed id="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaBrowserCompat"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void

    :cond_2a
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->a:Landroid/content/Context;

    invoke-virtual {p1, p2, p4}, Landroid/support/v4/media/MediaBrowserCompat$j;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserCompat$k;

    move-result-object p1

    if-eqz p1, :cond_47

    if-nez p4, :cond_3e

    if-nez p3, :cond_3a

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat$k;->c()V

    goto :goto_47

    :cond_3a
    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat$k;->a()V

    goto :goto_47

    :cond_3e
    if-nez p3, :cond_44

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat$k;->d()V

    goto :goto_47

    :cond_44
    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat$k;->b()V

    :cond_47
    :goto_47
    return-void
.end method

.method public b()V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->b:Ljava/lang/Object;

    check-cast v0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x0

    const-string v2, "extra_service_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    const-string v1, "extra_messenger"

    invoke-static {v0, v1}, Landroid/support/v4/app/e;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_41

    new-instance v2, Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->c:Landroid/os/Bundle;

    invoke-direct {v2, v1, v3}, Landroid/support/v4/media/MediaBrowserCompat$i;-><init>(Landroid/os/IBinder;Landroid/os/Bundle;)V

    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->f:Landroid/support/v4/media/MediaBrowserCompat$i;

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->d:Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->g:Landroid/os/Messenger;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->d:Landroid/support/v4/media/MediaBrowserCompat$a;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->g:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$a;->a(Landroid/os/Messenger;)V

    :try_start_32
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->f:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->g:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$i;->b(Landroid/os/Messenger;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_39} :catch_3a

    goto :goto_41

    :catch_3a
    const-string v1, "MediaBrowserCompat"

    const-string v2, "Remote error registering client messenger."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    :goto_41
    const-string v1, "extra_session_binder"

    invoke-static {v0, v1}, Landroid/support/v4/app/e;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/b$a;->a(Landroid/os/IBinder;)Landroid/support/v4/media/session/b;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->b:Ljava/lang/Object;

    check-cast v1, Landroid/media/browse/MediaBrowser;

    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a(Ljava/lang/Object;Landroid/support/v4/media/session/b;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->h:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    :cond_5b
    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public connect()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->b:Ljava/lang/Object;

    check-cast v0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->connect()V

    return-void
.end method

.method public d()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->f:Landroid/support/v4/media/MediaBrowserCompat$i;

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->g:Landroid/os/Messenger;

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->h:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->d:Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$a;->a(Landroid/os/Messenger;)V

    return-void
.end method

.method public disconnect()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->f:Landroid/support/v4/media/MediaBrowserCompat$i;

    if-eqz v0, :cond_13

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->g:Landroid/os/Messenger;

    if-eqz v1, :cond_13

    :try_start_8
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$i;->c(Landroid/os/Messenger;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_13

    :catch_c
    const-string v0, "MediaBrowserCompat"

    const-string v1, "Remote error unregistering client messenger."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->b:Ljava/lang/Object;

    check-cast v0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    return-void
.end method
