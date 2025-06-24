.class public Landroid/support/v4/media/MediaBrowserServiceCompat$l;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->e:I

    return v0
.end method

.method a(I)V
    .registers 2

    iput p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->e:I

    return-void
.end method

.method a(Landroid/os/Bundle;)V
    .registers 4

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "It is not supported to send an error for "

    invoke-static {v0}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const p0, 0x0

    throw p0
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->c:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->d:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->d:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->a(Landroid/os/Bundle;)V

    return-void

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "sendError() called when either sendResult() or sendError() had already been called for: "

    invoke-static {v0}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->c:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->d:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->c:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->a(Ljava/lang/Object;)V

    return-void

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "sendResult() called when either sendResult() or sendError() had already been called for: "

    invoke-static {v0}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->b:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->c:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->d:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
