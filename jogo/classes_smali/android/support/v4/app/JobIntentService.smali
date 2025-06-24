.class public abstract Landroid/support/v4/app/JobIntentService;
.super Landroid/app/Service;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/JobIntentService$a;,
        Landroid/support/v4/app/JobIntentService$d;,
        Landroid/support/v4/app/JobIntentService$e;,
        Landroid/support/v4/app/JobIntentService$f;,
        Landroid/support/v4/app/JobIntentService$c;,
        Landroid/support/v4/app/JobIntentService$b;,
        Landroid/support/v4/app/JobIntentService$g;
    }
.end annotation


# static fields
.field static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/support/v4/app/JobIntentService$g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Landroid/support/v4/app/JobIntentService$b;

.field c:Landroid/support/v4/app/JobIntentService$g;

.field d:Landroid/support/v4/app/JobIntentService$a;

.field e:Z

.field f:Z

.field final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/JobIntentService$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v4/app/JobIntentService;->h:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->e:Z

    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->f:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_12

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->g:Ljava/util/ArrayList;

    goto :goto_19

    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->g:Ljava/util/ArrayList;

    :goto_19
    return-void
.end method


# virtual methods
.method a()Landroid/support/v4/app/JobIntentService$e;
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->b:Landroid/support/v4/app/JobIntentService$b;

    if-eqz v0, :cond_b

    check-cast v0, Landroid/support/v4/app/JobIntentService$f;

    invoke-virtual {v0}, Landroid/support/v4/app/JobIntentService$f;->a()Landroid/support/v4/app/JobIntentService$e;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->g:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_21

    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/JobIntentService$e;

    monitor-exit v0

    return-object v1

    :cond_21
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_24

    throw v1
.end method

.method protected abstract a(Landroid/content/Intent;)V
.end method

.method a(Z)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->d:Landroid/support/v4/app/JobIntentService$a;

    if-nez v0, :cond_1e

    new-instance v0, Landroid/support/v4/app/JobIntentService$a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/JobIntentService$a;-><init>(Landroid/support/v4/app/JobIntentService;)V

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->d:Landroid/support/v4/app/JobIntentService$a;

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->c:Landroid/support/v4/app/JobIntentService$g;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual {v0}, Landroid/support/v4/app/JobIntentService$g;->b()V

    :cond_14
    iget-object p1, p0, Landroid/support/v4/app/JobIntentService;->d:Landroid/support/v4/app/JobIntentService$a;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1e
    return-void
.end method

.method b()Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->d:Landroid/support/v4/app/JobIntentService$a;

    if-eqz v0, :cond_9

    iget-boolean v1, p0, Landroid/support/v4/app/JobIntentService;->e:Z

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/app/JobIntentService;->c()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method d()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_27

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_6
    iput-object v1, p0, Landroid/support/v4/app/JobIntentService;->d:Landroid/support/v4/app/JobIntentService$a;

    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_19

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v4/app/JobIntentService;->a(Z)V

    goto :goto_22

    :cond_19
    iget-boolean v1, p0, Landroid/support/v4/app/JobIntentService;->f:Z

    if-nez v1, :cond_22

    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->c:Landroid/support/v4/app/JobIntentService$g;

    invoke-virtual {v1}, Landroid/support/v4/app/JobIntentService$g;->a()V

    :cond_22
    :goto_22
    monitor-exit v0

    goto :goto_27

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_24

    throw v1

    :cond_27
    :goto_27
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    iget-object p1, p0, Landroid/support/v4/app/JobIntentService;->b:Landroid/support/v4/app/JobIntentService$b;

    if-eqz p1, :cond_b

    check-cast p1, Landroid/support/v4/app/JobIntentService$f;

    invoke-virtual {p1}, Landroid/app/job/JobServiceEngine;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_14

    new-instance v0, Landroid/support/v4/app/JobIntentService$f;

    invoke-direct {v0, p0}, Landroid/support/v4/app/JobIntentService$f;-><init>(Landroid/support/v4/app/JobIntentService;)V

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->b:Landroid/support/v4/app/JobIntentService$b;

    iput-object v1, p0, Landroid/support/v4/app/JobIntentService;->c:Landroid/support/v4/app/JobIntentService$g;

    goto :goto_3f

    :cond_14
    iput-object v1, p0, Landroid/support/v4/app/JobIntentService;->b:Landroid/support/v4/app/JobIntentService$b;

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Landroid/support/v4/app/JobIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Landroid/support/v4/app/JobIntentService;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/JobIntentService$g;

    if-nez v1, :cond_3d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_33

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t be here without a job id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    new-instance v1, Landroid/support/v4/app/JobIntentService$c;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/app/JobIntentService$c;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    sget-object v2, Landroid/support/v4/app/JobIntentService;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    iput-object v1, p0, Landroid/support/v4/app/JobIntentService;->c:Landroid/support/v4/app/JobIntentService$g;

    :goto_3f
    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Landroid/support/v4/app/JobIntentService;->f:Z

    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->c:Landroid/support/v4/app/JobIntentService$g;

    invoke-virtual {v1}, Landroid/support/v4/app/JobIntentService$g;->a()V

    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :goto_15
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    iget-object p2, p0, Landroid/support/v4/app/JobIntentService;->g:Ljava/util/ArrayList;

    if-eqz p2, :cond_28

    iget-object p2, p0, Landroid/support/v4/app/JobIntentService;->c:Landroid/support/v4/app/JobIntentService$g;

    invoke-virtual {p2}, Landroid/support/v4/app/JobIntentService$g;->c()V

    iget-object p2, p0, Landroid/support/v4/app/JobIntentService;->g:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_c
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->g:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/v4/app/JobIntentService$d;

    if-eqz p1, :cond_13

    goto :goto_18

    :cond_13
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :goto_18
    invoke-direct {v1, p0, p1, p3}, Landroid/support/v4/app/JobIntentService$d;-><init>(Landroid/support/v4/app/JobIntentService;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/JobIntentService;->a(Z)V

    monitor-exit p2

    const/4 p1, 0x3

    return p1

    :catchall_25
    move-exception p1

    monitor-exit p2
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    throw p1

    :cond_28
    const/4 p1, 0x2

    return p1
.end method
