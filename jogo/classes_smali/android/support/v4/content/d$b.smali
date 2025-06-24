.class Landroid/support/v4/content/d$b;
.super Landroid/support/v4/content/d$g;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/content/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/d$g<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v4/content/d;


# direct methods
.method constructor <init>(Landroid/support/v4/content/d;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/content/d$b;->b:Landroid/support/v4/content/d;

    invoke-direct {p0}, Landroid/support/v4/content/d$g;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/d$b;->b:Landroid/support/v4/content/d;

    invoke-static {v0}, Landroid/support/v4/content/d;->a(Landroid/support/v4/content/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    const/4 v2, 0x0

    :try_start_d
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Landroid/support/v4/content/d$b;->b:Landroid/support/v4/content/d;

    iget-object v3, p0, Landroid/support/v4/content/d$g;->a:[Ljava/lang/Object;

    invoke-virtual {v0, v3}, Landroid/support/v4/content/d;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_21

    iget-object v0, p0, Landroid/support/v4/content/d$b;->b:Landroid/support/v4/content/d;

    invoke-virtual {v0, v2}, Landroid/support/v4/content/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :catchall_21
    move-exception v0

    :try_start_22
    iget-object v3, p0, Landroid/support/v4/content/d$b;->b:Landroid/support/v4/content/d;

    invoke-static {v3}, Landroid/support/v4/content/d;->b(Landroid/support/v4/content/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v0

    iget-object v1, p0, Landroid/support/v4/content/d$b;->b:Landroid/support/v4/content/d;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method
