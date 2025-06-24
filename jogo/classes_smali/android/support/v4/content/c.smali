.class public Landroid/support/v4/content/c;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/c$a;,
        Landroid/support/v4/content/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mContext:Landroid/content/Context;

.field mId:I

.field mListener:Landroid/support/v4/content/c$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/c$b<",
            "TD;>;"
        }
    .end annotation
.end field

.field mOnLoadCanceledListener:Landroid/support/v4/content/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/c$a<",
            "TD;>;"
        }
    .end annotation
.end field

.field mProcessingChange:Z

.field mReset:Z

.field mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/c;->mStarted:Z

    iput-boolean v0, p0, Landroid/support/v4/content/c;->mAbandoned:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/content/c;->mReset:Z

    iput-boolean v0, p0, Landroid/support/v4/content/c;->mContentChanged:Z

    iput-boolean v0, p0, Landroid/support/v4/content/c;->mProcessingChange:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/content/c;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abandon()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/c;->mAbandoned:Z

    invoke-virtual {p0}, Landroid/support/v4/content/c;->onAbandon()V

    return-void
.end method

.method public cancelLoad()Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/content/c;->onCancelLoad()Z

    move-result v0

    return v0
.end method

.method public commitContentChanged()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/c;->mProcessingChange:Z

    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p1, v0}, La/a/g;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deliverCancellation()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/c;->mOnLoadCanceledListener:Landroid/support/v4/content/c$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Landroid/support/v4/content/c$a;->a(Landroid/support/v4/content/c;)V

    :cond_7
    return-void
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/c;->mListener:Landroid/support/v4/content/c$b;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0, p1}, Landroid/support/v4/content/c$b;->a(Landroid/support/v4/content/c;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mId="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/support/v4/content/c;->mId:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mListener="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/content/c;->mListener:Landroid/support/v4/content/c$b;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean p2, p0, Landroid/support/v4/content/c;->mStarted:Z

    if-nez p2, :cond_23

    iget-boolean p2, p0, Landroid/support/v4/content/c;->mContentChanged:Z

    if-nez p2, :cond_23

    iget-boolean p2, p0, Landroid/support/v4/content/c;->mProcessingChange:Z

    if-eqz p2, :cond_44

    :cond_23
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mStarted="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/content/c;->mStarted:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mContentChanged="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/content/c;->mContentChanged:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mProcessingChange="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/content/c;->mProcessingChange:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_44
    iget-boolean p2, p0, Landroid/support/v4/content/c;->mAbandoned:Z

    if-nez p2, :cond_4c

    iget-boolean p2, p0, Landroid/support/v4/content/c;->mReset:Z

    if-eqz p2, :cond_63

    :cond_4c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mAbandoned="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/support/v4/content/c;->mAbandoned:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mReset="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/support/v4/content/c;->mReset:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_63
    return-void
.end method

.method public forceLoad()V
    .registers 1

    invoke-virtual {p0}, Landroid/support/v4/content/c;->onForceLoad()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/c;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/support/v4/content/c;->mId:I

    return v0
.end method

.method public isAbandoned()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/content/c;->mAbandoned:Z

    return v0
.end method

.method public isReset()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/content/c;->mReset:Z

    return v0
.end method

.method public isStarted()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/content/c;->mStarted:Z

    return v0
.end method

.method protected onAbandon()V
    .registers 1

    return-void
.end method

.method protected onCancelLoad()Z
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public onContentChanged()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/content/c;->mStarted:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/support/v4/content/c;->forceLoad()V

    goto :goto_b

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/c;->mContentChanged:Z

    :goto_b
    return-void
.end method

.method protected onForceLoad()V
    .registers 1

    return-void
.end method

.method protected onReset()V
    .registers 1

    return-void
.end method

.method protected onStartLoading()V
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method protected onStopLoading()V
    .registers 1

    return-void
.end method

.method public registerListener(ILandroid/support/v4/content/c$b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/content/c$b<",
            "TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/c;->mListener:Landroid/support/v4/content/c$b;

    if-nez v0, :cond_9

    iput-object p2, p0, Landroid/support/v4/content/c;->mListener:Landroid/support/v4/content/c$b;

    iput p1, p0, Landroid/support/v4/content/c;->mId:I

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There is already a listener registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerOnLoadCanceledListener(Landroid/support/v4/content/c$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/c$a<",
            "TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/c;->mOnLoadCanceledListener:Landroid/support/v4/content/c$a;

    if-nez v0, :cond_7

    iput-object p1, p0, Landroid/support/v4/content/c;->mOnLoadCanceledListener:Landroid/support/v4/content/c$a;

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "There is already a listener registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/content/c;->onReset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/c;->mReset:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/c;->mStarted:Z

    iput-boolean v0, p0, Landroid/support/v4/content/c;->mAbandoned:Z

    iput-boolean v0, p0, Landroid/support/v4/content/c;->mContentChanged:Z

    iput-boolean v0, p0, Landroid/support/v4/content/c;->mProcessingChange:Z

    return-void
.end method

.method public rollbackContentChanged()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/content/c;->mProcessingChange:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/content/c;->onContentChanged()V

    :cond_7
    return-void
.end method

.method public final startLoading()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/c;->mStarted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/c;->mReset:Z

    iput-boolean v0, p0, Landroid/support/v4/content/c;->mAbandoned:Z

    invoke-virtual {p0}, Landroid/support/v4/content/c;->onStartLoading()V

    return-void
.end method

.method public stopLoading()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/c;->mStarted:Z

    invoke-virtual {p0}, Landroid/support/v4/content/c;->onStopLoading()V

    return-void
.end method

.method public takeContentChanged()Z
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/content/c;->mContentChanged:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/content/c;->mContentChanged:Z

    iget-boolean v1, p0, Landroid/support/v4/content/c;->mProcessingChange:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroid/support/v4/content/c;->mProcessingChange:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, La/a/g;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/content/c;->mId:I

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Ld/a/a/a/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterListener(Landroid/support/v4/content/c$b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/c$b<",
            "TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/c;->mListener:Landroid/support/v4/content/c$b;

    if-eqz v0, :cond_12

    if-ne v0, p1, :cond_a

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/content/c;->mListener:Landroid/support/v4/content/c$b;

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterOnLoadCanceledListener(Landroid/support/v4/content/c$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/c$a<",
            "TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/c;->mOnLoadCanceledListener:Landroid/support/v4/content/c$a;

    if-eqz v0, :cond_12

    if-ne v0, p1, :cond_a

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/content/c;->mOnLoadCanceledListener:Landroid/support/v4/content/c$a;

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
