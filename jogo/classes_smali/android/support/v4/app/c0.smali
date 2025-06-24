.class Landroid/support/v4/app/c0;
.super Landroid/support/v4/app/b0;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/c0$a;
    }
.end annotation


# instance fields
.field final a:Lb/b/c/d/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/c/d/k<",
            "Landroid/support/v4/app/c0$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lb/b/c/d/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/c/d/k<",
            "Landroid/support/v4/app/c0$a;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/String;

.field d:Z

.field e:Z

.field f:Z

.field g:Landroid/support/v4/app/i;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/support/v4/app/i;Z)V
    .registers 6

    invoke-direct {p0}, Landroid/support/v4/app/b0;-><init>()V

    new-instance v0, Lb/b/c/d/k;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lb/b/c/d/k;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    new-instance v0, Lb/b/c/d/k;

    invoke-direct {v0, v1}, Lb/b/c/d/k;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/c0;->b:Lb/b/c/d/k;

    iput-object p1, p0, Landroid/support/v4/app/c0;->c:Ljava/lang/String;

    iput-object p2, p0, Landroid/support/v4/app/c0;->g:Landroid/support/v4/app/i;

    iput-boolean p3, p0, Landroid/support/v4/app/c0;->d:Z

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Landroid/support/v4/app/b0$a;)Landroid/support/v4/content/c;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/b0$a<",
            "TD;>;)",
            "Landroid/support/v4/content/c<",
            "TD;>;"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/support/v4/app/c0;->f:Z

    if-nez v0, :cond_46

    iget-object v0, p0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    invoke-virtual {v0, p1}, Lb/b/c/d/k;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c0$a;

    if-nez v0, :cond_32

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_10
    iput-boolean v0, p0, Landroid/support/v4/app/c0;->f:Z

    new-instance v0, Landroid/support/v4/app/c0$a;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v4/app/c0$a;-><init>(Landroid/support/v4/app/c0;ILandroid/os/Bundle;Landroid/support/v4/app/b0$a;)V

    invoke-interface {p3, p1, p2}, Landroid/support/v4/app/b0$a;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/c;

    move-result-object p1

    iput-object p1, v0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    iget-object p1, p0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    iget p2, v0, Landroid/support/v4/app/c0$a;->a:I

    invoke-virtual {p1, p2, v0}, Lb/b/c/d/k;->b(ILjava/lang/Object;)V

    iget-boolean p1, p0, Landroid/support/v4/app/c0;->d:Z

    if-eqz p1, :cond_2b

    invoke-virtual {v0}, Landroid/support/v4/app/c0$a;->b()V
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_2e

    :cond_2b
    iput-boolean v1, p0, Landroid/support/v4/app/c0;->f:Z

    goto :goto_34

    :catchall_2e
    move-exception p1

    iput-boolean v1, p0, Landroid/support/v4/app/c0;->f:Z

    throw p1

    :cond_32
    iput-object p3, v0, Landroid/support/v4/app/c0$a;->c:Landroid/support/v4/app/b0$a;

    :goto_34
    iget-boolean p1, v0, Landroid/support/v4/app/c0$a;->e:Z

    if-eqz p1, :cond_43

    iget-boolean p1, p0, Landroid/support/v4/app/c0;->d:Z

    if-eqz p1, :cond_43

    iget-object p1, v0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    iget-object p2, v0, Landroid/support/v4/app/c0$a;->g:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/c0$a;->b(Landroid/support/v4/content/c;Ljava/lang/Object;)V

    :cond_43
    iget-object p1, v0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    return-object p1

    :cond_46
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called while creating a loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a()V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/c0;->e:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    invoke-virtual {v0}, Lb/b/c/d/k;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_1c

    iget-object v1, p0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    invoke-virtual {v1, v0}, Lb/b/c/d/k;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/c0$a;

    invoke-virtual {v1}, Landroid/support/v4/app/c0$a;->a()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    invoke-virtual {v0}, Lb/b/c/d/k;->a()V

    :cond_21
    iget-object v0, p0, Landroid/support/v4/app/c0;->b:Lb/b/c/d/k;

    invoke-virtual {v0}, Lb/b/c/d/k;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_29
    if-ltz v0, :cond_39

    iget-object v1, p0, Landroid/support/v4/app/c0;->b:Lb/b/c/d/k;

    invoke-virtual {v1, v0}, Lb/b/c/d/k;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/c0$a;

    invoke-virtual {v1}, Landroid/support/v4/app/c0$a;->a()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    :cond_39
    iget-object v0, p0, Landroid/support/v4/app/c0;->b:Lb/b/c/d/k;

    invoke-virtual {v0}, Lb/b/c/d/k;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/c0;->g:Landroid/support/v4/app/i;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13

    iget-object v0, p0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    invoke-virtual {v0}, Lb/b/c/d/k;->b()I

    move-result v0

    const-string v1, ": "

    const-string v2, "  #"

    const/4 v3, 0x0

    const-string v4, "    "

    if-lez v0, :cond_56

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    :goto_27
    iget-object v6, p0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    invoke-virtual {v6}, Lb/b/c/d/k;->b()I

    move-result v6

    if-ge v5, v6, :cond_56

    iget-object v6, p0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    invoke-virtual {v6, v5}, Lb/b/c/d/k;->e(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/c0$a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    invoke-virtual {v7, v5}, Lb/b/c/d/k;->c(I)I

    move-result v7

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/support/v4/app/c0$a;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6, v0, p2, p3, p4}, Landroid/support/v4/app/c0$a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_56
    iget-object v0, p0, Landroid/support/v4/app/c0;->b:Lb/b/c/d/k;

    invoke-virtual {v0}, Lb/b/c/d/k;->b()I

    move-result v0

    if-lez v0, :cond_a4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_75
    iget-object v4, p0, Landroid/support/v4/app/c0;->b:Lb/b/c/d/k;

    invoke-virtual {v4}, Lb/b/c/d/k;->b()I

    move-result v4

    if-ge v3, v4, :cond_a4

    iget-object v4, p0, Landroid/support/v4/app/c0;->b:Lb/b/c/d/k;

    invoke-virtual {v4, v3}, Lb/b/c/d/k;->e(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/c0$a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/support/v4/app/c0;->b:Lb/b/c/d/k;

    invoke-virtual {v5, v3}, Lb/b/c/d/k;->c(I)I

    move-result v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/support/v4/app/c0$a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/support/v4/app/c0$a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    :cond_a4
    return-void
.end method

.method b()V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    invoke-virtual {v0}, Lb/b/c/d/k;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2f

    iget-object v1, p0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    invoke-virtual {v1, v0}, Lb/b/c/d/k;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/c0$a;

    iget-boolean v2, v1, Landroid/support/v4/app/c0$a;->h:Z

    if-eqz v2, :cond_2c

    iget-boolean v2, v1, Landroid/support/v4/app/c0$a;->k:Z

    if-eqz v2, :cond_2c

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/c0$a;->k:Z

    iget-boolean v2, v1, Landroid/support/v4/app/c0$a;->e:Z

    if-eqz v2, :cond_2c

    iget-boolean v2, v1, Landroid/support/v4/app/c0$a;->i:Z

    if-nez v2, :cond_2c

    iget-object v2, v1, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    iget-object v3, v1, Landroid/support/v4/app/c0$a;->g:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/c0$a;->b(Landroid/support/v4/content/c;Ljava/lang/Object;)V

    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2f
    return-void
.end method

.method c()V
    .registers 6

    iget-boolean v0, p0, Landroid/support/v4/app/c0;->d:Z

    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called doRetain when not started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoaderManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/c0;->e:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/c0;->d:Z

    iget-object v2, p0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    invoke-virtual {v2}, Lb/b/c/d/k;->b()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_32
    if-ltz v2, :cond_4a

    iget-object v3, p0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    invoke-virtual {v3, v2}, Lb/b/c/d/k;->e(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/c0$a;

    iput-boolean v0, v3, Landroid/support/v4/app/c0$a;->i:Z

    iget-boolean v4, v3, Landroid/support/v4/app/c0$a;->h:Z

    iput-boolean v4, v3, Landroid/support/v4/app/c0$a;->j:Z

    iput-boolean v1, v3, Landroid/support/v4/app/c0$a;->h:Z

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v4/app/c0$a;->c:Landroid/support/v4/app/b0$a;

    add-int/lit8 v2, v2, -0x1

    goto :goto_32

    :cond_4a
    return-void
.end method

.method d()V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/c0;->d:Z

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called doStart when already started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoaderManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/c0;->d:Z

    iget-object v1, p0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    invoke-virtual {v1}, Lb/b/c/d/k;->b()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_2f
    if-ltz v1, :cond_3f

    iget-object v0, p0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    invoke-virtual {v0, v1}, Lb/b/c/d/k;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c0$a;

    invoke-virtual {v0}, Landroid/support/v4/app/c0$a;->b()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2f

    :cond_3f
    return-void
.end method

.method e()V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/c0;->d:Z

    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called doStop when not started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoaderManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_25
    iget-object v0, p0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    invoke-virtual {v0}, Lb/b/c/d/k;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2d
    if-ltz v0, :cond_3d

    iget-object v1, p0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    invoke-virtual {v1, v0}, Lb/b/c/d/k;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/c0$a;

    invoke-virtual {v1}, Landroid/support/v4/app/c0$a;->c()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    :cond_3d
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/c0;->d:Z

    return-void
.end method

.method public f()Z
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    invoke-virtual {v0}, Lb/b/c/d/k;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v2, v0, :cond_22

    iget-object v4, p0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    invoke-virtual {v4, v2}, Lb/b/c/d/k;->e(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/c0$a;

    iget-boolean v5, v4, Landroid/support/v4/app/c0$a;->h:Z

    if-eqz v5, :cond_1d

    iget-boolean v4, v4, Landroid/support/v4/app/c0$a;->f:Z

    if-nez v4, :cond_1d

    const/4 v4, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v4, 0x0

    :goto_1e
    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_22
    return v3
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/c0;->g:Landroid/support/v4/app/i;

    invoke-static {v1, v0}, La/a/g;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
