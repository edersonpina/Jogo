.class public abstract Landroid/support/v4/content/a;
.super Landroid/support/v4/content/c;
.source "AsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/content/c<",
        "TD;>;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AsyncTaskLoader"


# instance fields
.field volatile mCancellingTask:Landroid/support/v4/content/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/a<",
            "TD;>.a;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mHandler:Landroid/os/Handler;

.field mLastLoadCompleteTime:J

.field volatile mTask:Landroid/support/v4/content/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/a<",
            "TD;>.a;"
        }
    .end annotation
.end field

.field mUpdateThrottle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Landroid/support/v4/content/d;->i:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Landroid/support/v4/content/a;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Landroid/support/v4/content/a;->mLastLoadCompleteTime:J

    iput-object p2, p0, Landroid/support/v4/content/a;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .registers 1

    return-void
.end method

.method dispatchOnCancelled(Landroid/support/v4/content/a$a;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/a<",
            "TD;>.a;TD;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Landroid/support/v4/content/a;->onCanceled(Ljava/lang/Object;)V

    iget-object p2, p0, Landroid/support/v4/content/a;->mCancellingTask:Landroid/support/v4/content/a$a;

    if-ne p2, p1, :cond_19

    invoke-virtual {p0}, Landroid/support/v4/content/c;->rollbackContentChanged()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/support/v4/content/a;->mLastLoadCompleteTime:J

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/content/a;->mCancellingTask:Landroid/support/v4/content/a$a;

    invoke-virtual {p0}, Landroid/support/v4/content/c;->deliverCancellation()V

    invoke-virtual {p0}, Landroid/support/v4/content/a;->executePendingTask()V

    :cond_19
    return-void
.end method

.method dispatchOnLoadComplete(Landroid/support/v4/content/a$a;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/a<",
            "TD;>.a;TD;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    if-eq v0, p1, :cond_8

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/content/a;->dispatchOnCancelled(Landroid/support/v4/content/a$a;Ljava/lang/Object;)V

    goto :goto_21

    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/content/c;->isAbandoned()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0, p2}, Landroid/support/v4/content/a;->onCanceled(Ljava/lang/Object;)V

    goto :goto_21

    :cond_12
    invoke-virtual {p0}, Landroid/support/v4/content/c;->commitContentChanged()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/content/a;->mLastLoadCompleteTime:J

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    invoke-virtual {p0, p2}, Landroid/support/v4/content/c;->deliverResult(Ljava/lang/Object;)V

    :goto_21
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/c;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    const-string p4, " waiting="

    if-eqz p2, :cond_20

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    iget-boolean p2, p2, Landroid/support/v4/content/a$a;->l:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_20
    iget-object p2, p0, Landroid/support/v4/content/a;->mCancellingTask:Landroid/support/v4/content/a$a;

    if-eqz p2, :cond_3b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCancellingTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/content/a;->mCancellingTask:Landroid/support/v4/content/a$a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/content/a;->mCancellingTask:Landroid/support/v4/content/a$a;

    iget-boolean p2, p2, Landroid/support/v4/content/a$a;->l:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3b
    iget-wide v0, p0, Landroid/support/v4/content/a;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_6d

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mUpdateThrottle="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide p1, p0, Landroid/support/v4/content/a;->mUpdateThrottle:J

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Lb/b/c/d/l;->a(JLjava/io/PrintWriter;I)V

    const-string p1, " mLastLoadCompleteTime="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide p1, p0, Landroid/support/v4/content/a;->mLastLoadCompleteTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v4, p1, v2

    if-nez v4, :cond_66

    const-string p1, "--"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6a

    :cond_66
    sub-long/2addr p1, v0

    invoke-static {p1, p2, p3, p4}, Lb/b/c/d/l;->a(JLjava/io/PrintWriter;I)V

    :goto_6a
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :cond_6d
    return-void
.end method

.method executePendingTask()V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/content/a;->mCancellingTask:Landroid/support/v4/content/a$a;

    if-nez v0, :cond_49

    iget-object v0, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    if-eqz v0, :cond_49

    iget-object v0, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    iget-boolean v0, v0, Landroid/support/v4/content/a$a;->l:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/content/a$a;->l:Z

    iget-object v0, p0, Landroid/support/v4/content/a;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1a
    iget-wide v0, p0, Landroid/support/v4/content/a;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_41

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/v4/content/a;->mLastLoadCompleteTime:J

    iget-wide v4, p0, Landroid/support/v4/content/a;->mUpdateThrottle:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_41

    iget-object v0, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/content/a$a;->l:Z

    iget-object v0, p0, Landroid/support/v4/content/a;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    iget-wide v2, p0, Landroid/support/v4/content/a;->mLastLoadCompleteTime:J

    iget-wide v4, p0, Landroid/support/v4/content/a;->mUpdateThrottle:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void

    :cond_41
    iget-object v0, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    iget-object v1, p0, Landroid/support/v4/content/a;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/d;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/support/v4/content/d;

    :cond_49
    return-void
.end method

.method public isLoadInBackgroundCanceled()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/a;->mCancellingTask:Landroid/support/v4/content/a$a;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public abstract loadInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method protected onCancelLoad()Z
    .registers 5

    iget-object v0, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    iget-boolean v0, p0, Landroid/support/v4/content/c;->mStarted:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/c;->mContentChanged:Z

    :cond_c
    iget-object v0, p0, Landroid/support/v4/content/a;->mCancellingTask:Landroid/support/v4/content/a$a;

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    iget-boolean v0, v0, Landroid/support/v4/content/a$a;->l:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    iput-boolean v1, v0, Landroid/support/v4/content/a$a;->l:Z

    iget-object v0, p0, Landroid/support/v4/content/a;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_22
    iput-object v2, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    return v1

    :cond_25
    iget-object v0, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    iget-boolean v0, v0, Landroid/support/v4/content/a$a;->l:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    iput-boolean v1, v0, Landroid/support/v4/content/a$a;->l:Z

    iget-object v0, p0, Landroid/support/v4/content/a;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    return v1

    :cond_39
    iget-object v0, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/d;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v1, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    iput-object v1, p0, Landroid/support/v4/content/a;->mCancellingTask:Landroid/support/v4/content/a$a;

    invoke-virtual {p0}, Landroid/support/v4/content/a;->cancelLoadInBackground()V

    :cond_48
    iput-object v2, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    return v0

    :cond_4b
    return v1
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    return-void
.end method

.method protected onForceLoad()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/content/c;->onForceLoad()V

    invoke-virtual {p0}, Landroid/support/v4/content/c;->cancelLoad()Z

    new-instance v0, Landroid/support/v4/content/a$a;

    invoke-direct {v0, p0}, Landroid/support/v4/content/a$a;-><init>(Landroid/support/v4/content/a;)V

    iput-object v0, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    invoke-virtual {p0}, Landroid/support/v4/content/a;->executePendingTask()V

    return-void
.end method

.method protected onLoadInBackground()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/content/a;->loadInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setUpdateThrottle(J)V
    .registers 6

    iput-wide p1, p0, Landroid/support/v4/content/a;->mUpdateThrottle:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_f

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroid/support/v4/content/a;->mHandler:Landroid/os/Handler;

    :cond_f
    return-void
.end method

.method public waitForLoader()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/a;->mTask:Landroid/support/v4/content/a$a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/support/v4/content/a$a;->c()V

    :cond_7
    return-void
.end method
