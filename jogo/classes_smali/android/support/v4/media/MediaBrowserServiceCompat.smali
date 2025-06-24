.class public abstract Landroid/support/v4/media/MediaBrowserServiceCompat;
.super Landroid/app/Service;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserServiceCompat$e;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$o;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$n;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$m;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$l;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$f;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$p;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$j;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$i;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$h;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$k;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$g;
    }
.end annotation


# static fields
.field static final f:Z


# instance fields
.field private b:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

.field final c:Lb/b/c/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/c/d/a<",
            "Landroid/os/IBinder;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$f;",
            ">;"
        }
    .end annotation
.end field

.field final d:Landroid/support/v4/media/MediaBrowserServiceCompat$p;

.field e:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "MBServiceCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lb/b/c/d/a;

    invoke-direct {v0}, Lb/b/c/d/a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Lb/b/c/d/a;

    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$p;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$p;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$p;

    return-void
.end method


# virtual methods
.method a(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const/4 v0, -0x1

    const-string v1, "android.media.browse.extra.PAGE"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ne v1, v0, :cond_16

    if-ne p2, v0, :cond_16

    return-object p1

    :cond_16
    mul-int v0, p2, v1

    add-int v2, v0, p2

    if-ltz v1, :cond_35

    const/4 v1, 0x1

    if-lt p2, v1, :cond_35

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lt v0, p2, :cond_26

    goto :goto_35

    :cond_26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le v2, p2, :cond_30

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :cond_30
    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_35
    :goto_35
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public a(Landroid/support/v4/media/MediaBrowserServiceCompat$l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$l<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public abstract a(Ljava/lang/String;ILandroid/os/Bundle;)V
.end method

.method a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$f;Landroid/support/v4/os/ResultReceiver;)V
    .registers 6

    new-instance p3, Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    invoke-direct {p3, p0, p1, p4}, Landroid/support/v4/media/MediaBrowserServiceCompat$d;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {p0, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Landroid/support/v4/media/MediaBrowserServiceCompat$l;)V

    invoke-virtual {p3}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->b()Z

    move-result p3

    if-eqz p3, :cond_f

    return-void

    :cond_f
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCustomAction must call detach() or sendResult() or sendError() before returning for action="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " extras="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$f;Landroid/os/Bundle;)V
    .registers 11

    new-instance v6, Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$a;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompat$f;Ljava/lang/String;Landroid/os/Bundle;)V

    if-nez p3, :cond_11

    invoke-virtual {p0, p1, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$l;)V

    goto :goto_14

    :cond_11
    invoke-virtual {p0, p1, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat;->b(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$l;)V

    :goto_14
    invoke-virtual {v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->b()Z

    move-result p3

    if-eqz p3, :cond_1b

    return-void

    :cond_1b
    new-instance p3, Ljava/lang/IllegalStateException;

    const-string v0, "onLoadChildren must call detach() or sendResult() before returning for package="

    invoke-static {v0}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p2, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " id="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$f;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 9

    iget-object v0, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/c/d/i;

    iget-object v3, v2, Lb/b/c/d/i;->a:Ljava/lang/Object;

    if-ne p3, v3, :cond_13

    iget-object v2, v2, Lb/b/c/d/i;->b:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {p4, v2}, La/a/g;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_13

    return-void

    :cond_2e
    new-instance v1, Lb/b/c/d/i;

    invoke-direct {v1, p3, p4}, Lb/b/c/d/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->e:Ljava/util/HashMap;

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p4}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$f;Landroid/os/Bundle;)V

    return-void
.end method

.method a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$f;Landroid/support/v4/os/ResultReceiver;)V
    .registers 4

    new-instance p2, Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    invoke-direct {p2, p0, p1, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat$b;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->b(Landroid/support/v4/media/MediaBrowserServiceCompat$l;)V

    invoke-virtual {p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->b()Z

    move-result p2

    if-eqz p2, :cond_f

    return-void

    :cond_f
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "onLoadItem must call detach() or sendResult() before returning for id="

    invoke-static {p3, p1}, Ld/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public abstract a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$l<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation
.end method

.method a(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1d

    aget-object v3, p2, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1d
    return v0
.end method

.method a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$f;Landroid/os/IBinder;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_f

    iget-object p2, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->e:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    iget-object v2, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_3d

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/c/d/i;

    iget-object v4, v4, Lb/b/c/d/i;->a:Ljava/lang/Object;

    if-ne p3, v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_1d

    :cond_32
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_3d

    iget-object p2, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->e:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    return v1
.end method

.method public b(Landroid/support/v4/media/MediaBrowserServiceCompat$l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$l<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->a(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->b(Ljava/lang/Object;)V

    return-void
.end method

.method b(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$f;Landroid/support/v4/os/ResultReceiver;)V
    .registers 5

    new-instance p2, Landroid/support/v4/media/MediaBrowserServiceCompat$c;

    invoke-direct {p2, p0, p1, p4}, Landroid/support/v4/media/MediaBrowserServiceCompat$c;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->c(Landroid/support/v4/media/MediaBrowserServiceCompat$l;)V

    invoke-virtual {p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->b()Z

    move-result p2

    if-eqz p2, :cond_f

    return-void

    :cond_f
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "onSearch must call detach() or sendResult() before returning for query="

    invoke-static {p3, p1}, Ld/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$l<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->a(I)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$l;)V

    return-void
.end method

.method public c(Landroid/support/v4/media/MediaBrowserServiceCompat$l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$l<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->a(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    invoke-interface {v0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->a(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_11

    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$j;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$j;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    goto :goto_30

    :cond_11
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1d

    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$i;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    goto :goto_30

    :cond_1d
    const/16 v1, 0x15

    if-lt v0, v1, :cond_29

    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    goto :goto_30

    :cond_29
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$k;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$k;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    :goto_30
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->a()V

    return-void
.end method
