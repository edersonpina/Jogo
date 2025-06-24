.class abstract Landroid/support/v4/content/d;
.super Ljava/lang/Object;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/d$d;,
        Landroid/support/v4/content/d$g;,
        Landroid/support/v4/content/d$e;,
        Landroid/support/v4/content/d$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final g:Ljava/util/concurrent/ThreadFactory;

.field private static final h:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Ljava/util/concurrent/Executor;

.field private static j:Landroid/support/v4/content/d$e;


# instance fields
.field private final b:Landroid/support/v4/content/d$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/d$g<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private volatile d:Landroid/support/v4/content/d$f;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Landroid/support/v4/content/d$a;

    invoke-direct {v0}, Landroid/support/v4/content/d$a;-><init>()V

    sput-object v0, Landroid/support/v4/content/d;->g:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Landroid/support/v4/content/d;->h:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Landroid/support/v4/content/d;->h:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Landroid/support/v4/content/d;->g:Ljava/util/concurrent/ThreadFactory;

    const/4 v3, 0x5

    const/16 v4, 0x80

    const-wide/16 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Landroid/support/v4/content/d;->i:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v4/content/d$f;->b:Landroid/support/v4/content/d$f;

    iput-object v0, p0, Landroid/support/v4/content/d;->d:Landroid/support/v4/content/d$f;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/support/v4/content/d$b;

    invoke-direct {v0, p0}, Landroid/support/v4/content/d$b;-><init>(Landroid/support/v4/content/d;)V

    iput-object v0, p0, Landroid/support/v4/content/d;->b:Landroid/support/v4/content/d$g;

    new-instance v0, Landroid/support/v4/content/d$c;

    iget-object v1, p0, Landroid/support/v4/content/d;->b:Landroid/support/v4/content/d$g;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/content/d$c;-><init>(Landroid/support/v4/content/d;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Landroid/support/v4/content/d;->c:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic a(Landroid/support/v4/content/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Landroid/support/v4/content/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Landroid/support/v4/content/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Landroid/support/v4/content/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private static c()Landroid/os/Handler;
    .registers 2

    const-class v0, Landroid/support/v4/content/d;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/support/v4/content/d;->j:Landroid/support/v4/content/d$e;

    if-nez v1, :cond_e

    new-instance v1, Landroid/support/v4/content/d$e;

    invoke-direct {v1}, Landroid/support/v4/content/d$e;-><init>()V

    sput-object v1, Landroid/support/v4/content/d;->j:Landroid/support/v4/content/d$e;

    :cond_e
    sget-object v1, Landroid/support/v4/content/d;->j:Landroid/support/v4/content/d$e;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/support/v4/content/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Landroid/support/v4/content/d<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/d;->d:Landroid/support/v4/content/d$f;

    sget-object v1, Landroid/support/v4/content/d$f;->b:Landroid/support/v4/content/d$f;

    if-eq v0, v1, :cond_2a

    iget-object p1, p0, Landroid/support/v4/content/d;->d:Landroid/support/v4/content/d$f;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_22

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1a

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "We should never reach this state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    sget-object v0, Landroid/support/v4/content/d$f;->c:Landroid/support/v4/content/d$f;

    iput-object v0, p0, Landroid/support/v4/content/d;->d:Landroid/support/v4/content/d$f;

    iget-object v0, p0, Landroid/support/v4/content/d;->b:Landroid/support/v4/content/d$g;

    iput-object p2, v0, Landroid/support/v4/content/d$g;->a:[Ljava/lang/Object;

    iget-object p2, p0, Landroid/support/v4/content/d;->c:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/content/d;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Landroid/support/v4/content/d;->b(Ljava/lang/Object;)V

    goto :goto_d

    :cond_a
    invoke-virtual {p0, p1}, Landroid/support/v4/content/d;->c(Ljava/lang/Object;)V

    :goto_d
    sget-object p1, Landroid/support/v4/content/d$f;->d:Landroid/support/v4/content/d$f;

    iput-object p1, p0, Landroid/support/v4/content/d;->d:Landroid/support/v4/content/d$f;

    return-void
.end method

.method public final a()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final a(Z)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v4/content/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Landroid/support/v4/content/d;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method protected varargs b()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected c(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    invoke-static {}, Landroid/support/v4/content/d;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/content/d$d;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Landroid/support/v4/content/d$d;-><init>(Landroid/support/v4/content/d;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method e(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, p1}, Landroid/support/v4/content/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method
