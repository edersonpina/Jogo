.class Landroid/support/v4/media/MediaBrowserCompat$g;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompat$c;
.implements Landroid/support/v4/media/MediaBrowserCompat$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$g$c;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/content/ComponentName;

.field final c:Landroid/support/v4/media/MediaBrowserCompat$b;

.field final d:Landroid/os/Bundle;

.field final e:Landroid/support/v4/media/MediaBrowserCompat$a;

.field private final f:Lb/b/c/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/c/d/a<",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserCompat$j;",
            ">;"
        }
    .end annotation
.end field

.field g:I

.field h:Landroid/support/v4/media/MediaBrowserCompat$g$c;

.field i:Landroid/support/v4/media/MediaBrowserCompat$i;

.field j:Landroid/os/Messenger;

.field private k:Ljava/lang/String;

.field private l:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$b;Landroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$a;-><init>(Landroid/support/v4/media/MediaBrowserCompat$h;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->e:Landroid/support/v4/media/MediaBrowserCompat$a;

    new-instance v0, Lb/b/c/d/a;

    invoke-direct {v0}, Lb/b/c/d/a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->f:Lb/b/c/d/a;

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    if-eqz p1, :cond_3c

    if-eqz p2, :cond_34

    if-eqz p3, :cond_2c

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->a:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/content/ComponentName;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->c:Landroid/support/v4/media/MediaBrowserCompat$b;

    if-nez p4, :cond_24

    const/4 p1, 0x0

    goto :goto_29

    :cond_24
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_29
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->d:Landroid/os/Bundle;

    return-void

    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "connection callback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "service component must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_21

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_18

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const-string v0, "UNKNOWN/"

    invoke-static {v0, p0}, Ld/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    const-string p0, "CONNECT_STATE_SUSPENDED"

    return-object p0

    :cond_18
    const-string p0, "CONNECT_STATE_CONNECTED"

    return-object p0

    :cond_1b
    const-string p0, "CONNECT_STATE_CONNECTING"

    return-object p0

    :cond_1e
    const-string p0, "CONNECT_STATE_DISCONNECTED"

    return-object p0

    :cond_21
    const-string p0, "CONNECT_STATE_DISCONNECTING"

    return-object p0
.end method

.method private a(Landroid/os/Messenger;Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->j:Landroid/os/Messenger;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_d

    iget p1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    if-eqz p1, :cond_d

    if-ne p1, v1, :cond_c

    goto :goto_d

    :cond_c
    return v1

    :cond_d
    :goto_d
    iget p1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    if-eqz p1, :cond_39

    if-eq p1, v1, :cond_39

    const-string p1, " for "

    invoke-static {p2, p1}, Ld/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with mCallbacksMessenger="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->j:Landroid/os/Messenger;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " this="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaBrowserCompat"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .registers 5

    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->l:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSessionToken() called while not connected(state="

    invoke-static {v1}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    const-string v3, ")"

    invoke-static {v1, v2, v3}, Ld/a/a/a/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/os/Messenger;)V
    .registers 4

    const-string v0, "onConnectFailed for "

    invoke-static {v0}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaBrowserCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "onConnectFailed"

    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$g;->a(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1d

    return-void

    :cond_1d
    iget p1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3e

    const-string p1, "onConnect from service while mState="

    invoke-static {p1}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$g;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "... ignoring"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3e
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$g;->c()V

    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->c:Landroid/support/v4/media/MediaBrowserCompat$b;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat$b;->b()V

    return-void
.end method

.method public a(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .registers 11

    const-string p4, "onConnect"

    invoke-direct {p0, p1, p4}, Landroid/support/v4/media/MediaBrowserCompat$g;->a(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    iget p1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    const/4 p4, 0x2

    const-string v0, "MediaBrowserCompat"

    if-eq p1, p4, :cond_2c

    const-string p1, "onConnect from service while mState="

    invoke-static {p1}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$g;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "... ignoring"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2c
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->k:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->l:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const/4 p1, 0x3

    iput p1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    sget-boolean p1, Landroid/support/v4/media/MediaBrowserCompat;->b:Z

    if-eqz p1, :cond_3f

    const-string p1, "ServiceCallbacks.onConnect..."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$g;->b()V

    :cond_3f
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->c:Landroid/support/v4/media/MediaBrowserCompat$b;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat$b;->a()V

    :try_start_44
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->f:Lb/b/c/d/a;

    invoke-virtual {p1}, Lb/b/c/d/a;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_94

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/media/MediaBrowserCompat$j;

    invoke-virtual {p2}, Landroid/support/v4/media/MediaBrowserCompat$j;->a()Ljava/util/List;

    move-result-object p4

    invoke-virtual {p2}, Landroid/support/v4/media/MediaBrowserCompat$j;->b()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    :goto_6f
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->i:Landroid/support/v4/media/MediaBrowserCompat$i;

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/MediaBrowserCompat$k;

    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserCompat$k;->a(Landroid/support/v4/media/MediaBrowserCompat$k;)Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->j:Landroid/os/Messenger;

    invoke-virtual {v2, p3, v3, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$i;->a(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_8c} :catch_8f

    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    :catch_8f
    const-string p1, "addSubscription failed with RemoteException."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    return-void
.end method

.method public a(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "onLoadChildren"

    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$g;->a(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    sget-boolean p1, Landroid/support/v4/media/MediaBrowserCompat;->b:Z

    const-string v0, "MediaBrowserCompat"

    if-eqz p1, :cond_29

    const-string p1, "onLoadChildren for "

    invoke-static {p1}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " id="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->f:Lb/b/c/d/a;

    invoke-virtual {p1, p2}, Lb/b/c/d/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$j;

    if-nez p1, :cond_4c

    sget-boolean p1, Landroid/support/v4/media/MediaBrowserCompat;->b:Z

    if-eqz p1, :cond_4b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLoadChildren for id that isn\'t subscribed id="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    return-void

    :cond_4c
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->a:Landroid/content/Context;

    invoke-virtual {p1, p2, p4}, Landroid/support/v4/media/MediaBrowserCompat$j;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserCompat$k;

    move-result-object p1

    if-eqz p1, :cond_69

    if-nez p4, :cond_60

    if-nez p3, :cond_5c

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat$k;->c()V

    goto :goto_69

    :cond_5c
    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat$k;->a()V

    goto :goto_69

    :cond_60
    if-nez p3, :cond_66

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat$k;->d()V

    goto :goto_69

    :cond_66
    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat$k;->b()V

    :cond_69
    :goto_69
    return-void
.end method

.method b()V
    .registers 4

    const-string v0, "MediaBrowserCompat"

    const-string v1, "MediaBrowserCompat..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceComponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->c:Landroid/support/v4/media/MediaBrowserCompat$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRootHints="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->d:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->h:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceBinderWrapper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->i:Landroid/support/v4/media/MediaBrowserCompat$i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCallbacksMessenger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->j:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRootId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMediaSessionToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->l:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method c()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->h:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    if-eqz v0, :cond_9

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_9
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->h:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->i:Landroid/support/v4/media/MediaBrowserCompat$i;

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->j:Landroid/os/Messenger;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->e:Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$a;->a(Landroid/os/Messenger;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->k:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->l:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-void
.end method

.method public connect()V
    .registers 5

    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    if-eqz v0, :cond_20

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_20

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connect() called while neigther disconnecting nor disconnected (state="

    invoke-static {v1}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$g;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v1, v2, v3}, Ld/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_20
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->e:Landroid/support/v4/media/MediaBrowserCompat$a;

    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$g$a;

    invoke-direct {v1, p0}, Landroid/support/v4/media/MediaBrowserCompat$g$a;-><init>(Landroid/support/v4/media/MediaBrowserCompat$g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public disconnect()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->e:Landroid/support/v4/media/MediaBrowserCompat$a;

    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$g$b;

    invoke-direct {v1, p0}, Landroid/support/v4/media/MediaBrowserCompat$g$b;-><init>(Landroid/support/v4/media/MediaBrowserCompat$g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
