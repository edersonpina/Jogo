.class public abstract Landroid/support/v4/app/i;
.super Landroid/support/v4/app/g;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/g;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field final d:Landroid/support/v4/app/k;

.field private e:Lb/b/c/d/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/c/d/j<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/b0;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Landroid/support/v4/app/c0;

.field private h:Z

.field private i:Z


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .registers 4

    iget-object v0, p1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    new-instance v1, Landroid/support/v4/app/k;

    invoke-direct {v1}, Landroid/support/v4/app/k;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    iput-object p1, p0, Landroid/support/v4/app/i;->a:Landroid/app/Activity;

    iput-object p1, p0, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    iput-object v0, p0, Landroid/support/v4/app/i;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;ZZ)Landroid/support/v4/app/c0;
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/i;->e:Lb/b/c/d/j;

    if-nez v0, :cond_b

    new-instance v0, Lb/b/c/d/j;

    invoke-direct {v0}, Lb/b/c/d/j;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/i;->e:Lb/b/c/d/j;

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/i;->e:Lb/b/c/d/j;

    invoke-virtual {v0, p1}, Lb/b/c/d/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c0;

    if-nez v0, :cond_22

    if-eqz p3, :cond_22

    new-instance v0, Landroid/support/v4/app/c0;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/c0;-><init>(Ljava/lang/String;Landroid/support/v4/app/i;Z)V

    iget-object p2, p0, Landroid/support/v4/app/i;->e:Lb/b/c/d/j;

    invoke-virtual {p2, p1, v0}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :cond_22
    if-eqz p2, :cond_2d

    if-eqz v0, :cond_2d

    iget-boolean p1, v0, Landroid/support/v4/app/c0;->d:Z

    if-nez p1, :cond_2d

    invoke-virtual {v0}, Landroid/support/v4/app/c0;->d()V

    :cond_2d
    :goto_2d
    return-object v0
.end method

.method a(Lb/b/c/d/j;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/c/d/j<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/b0;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p1}, Lb/b/c/d/j;->size()I

    move-result v1

    :goto_7
    if-ge v0, v1, :cond_14

    invoke-virtual {p1, v0}, Lb/b/c/d/j;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/c0;

    iput-object p0, v2, Landroid/support/v4/app/c0;->g:Landroid/support/v4/app/i;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_14
    iput-object p1, p0, Landroid/support/v4/app/i;->e:Lb/b/c/d/j;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/i;->e:Lb/b/c/d/j;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Lb/b/c/d/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c0;

    if-eqz v0, :cond_18

    iget-boolean v1, v0, Landroid/support/v4/app/c0;->e:Z

    if-nez v1, :cond_18

    invoke-virtual {v0}, Landroid/support/v4/app/c0;->a()V

    iget-object v0, p0, Landroid/support/v4/app/i;->e:Lb/b/c/d/j;

    invoke-virtual {v0, p1}, Lb/b/c/d/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-void
.end method

.method a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/i;->g:Landroid/support/v4/app/c0;

    if-eqz v0, :cond_36

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->g:Landroid/support/v4/app/c0;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->g:Landroid/support/v4/app/c0;

    const-string v1, "  "

    invoke-static {p1, v1}, Ld/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/c0;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_36
    return-void
.end method

.method a(Z)V
    .registers 4

    iput-boolean p1, p0, Landroid/support/v4/app/i;->f:Z

    iget-object v0, p0, Landroid/support/v4/app/i;->g:Landroid/support/v4/app/c0;

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-boolean v1, p0, Landroid/support/v4/app/i;->i:Z

    if-nez v1, :cond_c

    return-void

    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/i;->i:Z

    if-eqz p1, :cond_15

    invoke-virtual {v0}, Landroid/support/v4/app/c0;->c()V

    goto :goto_18

    :cond_15
    invoke-virtual {v0}, Landroid/support/v4/app/c0;->e()V

    :goto_18
    return-void
.end method

.method b()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/i;->g:Landroid/support/v4/app/c0;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/support/v4/app/c0;->a()V

    return-void
.end method

.method c()V
    .registers 5

    iget-boolean v0, p0, Landroid/support/v4/app/i;->i:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->i:Z

    iget-object v1, p0, Landroid/support/v4/app/i;->g:Landroid/support/v4/app/c0;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/support/v4/app/c0;->d()V

    goto :goto_2a

    :cond_10
    iget-boolean v1, p0, Landroid/support/v4/app/i;->h:Z

    if-nez v1, :cond_2a

    iget-boolean v1, p0, Landroid/support/v4/app/i;->i:Z

    const/4 v2, 0x0

    const-string v3, "(root)"

    invoke-virtual {p0, v3, v1, v2}, Landroid/support/v4/app/i;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/c0;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/i;->g:Landroid/support/v4/app/c0;

    iget-object v1, p0, Landroid/support/v4/app/i;->g:Landroid/support/v4/app/c0;

    if-eqz v1, :cond_2a

    iget-boolean v2, v1, Landroid/support/v4/app/c0;->d:Z

    if-nez v2, :cond_2a

    invoke-virtual {v1}, Landroid/support/v4/app/c0;->d()V

    :cond_2a
    :goto_2a
    iput-boolean v0, p0, Landroid/support/v4/app/i;->h:Z

    return-void
.end method

.method d()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Landroid/app/Activity;

    return-object v0
.end method

.method e()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/i;->c:Landroid/os/Handler;

    return-object v0
.end method

.method f()Landroid/support/v4/app/c0;
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/i;->g:Landroid/support/v4/app/c0;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->h:Z

    iget-boolean v1, p0, Landroid/support/v4/app/i;->i:Z

    const-string v2, "(root)"

    invoke-virtual {p0, v2, v1, v0}, Landroid/support/v4/app/i;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/c0;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/i;->g:Landroid/support/v4/app/c0;

    iget-object v0, p0, Landroid/support/v4/app/i;->g:Landroid/support/v4/app/c0;

    return-object v0
.end method

.method g()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/app/i;->f:Z

    return v0
.end method

.method h()V
    .registers 10

    iget-object v0, p0, Landroid/support/v4/app/i;->e:Lb/b/c/d/j;

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Lb/b/c/d/j;->size()I

    move-result v0

    new-array v1, v0, [Landroid/support/v4/app/c0;

    add-int/lit8 v2, v0, -0x1

    :goto_c
    if-ltz v2, :cond_1b

    iget-object v3, p0, Landroid/support/v4/app/i;->e:Lb/b/c/d/j;

    invoke-virtual {v3, v2}, Lb/b/c/d/j;->d(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/c0;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_1b
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v0, :cond_64

    aget-object v4, v1, v3

    iget-boolean v5, v4, Landroid/support/v4/app/c0;->e:Z

    if-eqz v5, :cond_5e

    iput-boolean v2, v4, Landroid/support/v4/app/c0;->e:Z

    iget-object v5, v4, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    invoke-virtual {v5}, Lb/b/c/d/k;->b()I

    move-result v5

    :cond_2d
    :goto_2d
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_5e

    iget-object v6, v4, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    invoke-virtual {v6, v5}, Lb/b/c/d/k;->e(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/c0$a;

    iget-boolean v7, v6, Landroid/support/v4/app/c0$a;->i:Z

    if-eqz v7, :cond_4a

    iput-boolean v2, v6, Landroid/support/v4/app/c0$a;->i:Z

    iget-boolean v7, v6, Landroid/support/v4/app/c0$a;->h:Z

    iget-boolean v8, v6, Landroid/support/v4/app/c0$a;->j:Z

    if-eq v7, v8, :cond_4a

    if-nez v7, :cond_4a

    invoke-virtual {v6}, Landroid/support/v4/app/c0$a;->c()V

    :cond_4a
    iget-boolean v7, v6, Landroid/support/v4/app/c0$a;->h:Z

    if-eqz v7, :cond_2d

    iget-boolean v7, v6, Landroid/support/v4/app/c0$a;->e:Z

    if-eqz v7, :cond_2d

    iget-boolean v7, v6, Landroid/support/v4/app/c0$a;->k:Z

    if-nez v7, :cond_2d

    iget-object v7, v6, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    iget-object v8, v6, Landroid/support/v4/app/c0$a;->g:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/c0$a;->b(Landroid/support/v4/content/c;Ljava/lang/Object;)V

    goto :goto_2d

    :cond_5e
    invoke-virtual {v4}, Landroid/support/v4/app/c0;->b()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_64
    return-void
.end method

.method i()Lb/b/c/d/j;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/b/c/d/j<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/b0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/i;->e:Lb/b/c/d/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lb/b/c/d/j;->size()I

    move-result v0

    new-array v2, v0, [Landroid/support/v4/app/c0;

    add-int/lit8 v3, v0, -0x1

    :goto_d
    if-ltz v3, :cond_1c

    iget-object v4, p0, Landroid/support/v4/app/i;->e:Lb/b/c/d/j;

    invoke-virtual {v4, v3}, Lb/b/c/d/j;->d(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/c0;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_d

    :cond_1c
    invoke-virtual {p0}, Landroid/support/v4/app/i;->g()Z

    move-result v3

    const/4 v4, 0x0

    :goto_21
    if-ge v1, v0, :cond_48

    aget-object v5, v2, v1

    iget-boolean v6, v5, Landroid/support/v4/app/c0;->e:Z

    if-nez v6, :cond_35

    if-eqz v3, :cond_35

    iget-boolean v6, v5, Landroid/support/v4/app/c0;->d:Z

    if-nez v6, :cond_32

    invoke-virtual {v5}, Landroid/support/v4/app/c0;->d()V

    :cond_32
    invoke-virtual {v5}, Landroid/support/v4/app/c0;->c()V

    :cond_35
    iget-boolean v6, v5, Landroid/support/v4/app/c0;->e:Z

    if-eqz v6, :cond_3b

    const/4 v4, 0x1

    goto :goto_45

    :cond_3b
    invoke-virtual {v5}, Landroid/support/v4/app/c0;->a()V

    iget-object v6, p0, Landroid/support/v4/app/i;->e:Lb/b/c/d/j;

    iget-object v5, v5, Landroid/support/v4/app/c0;->c:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lb/b/c/d/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_48
    move v1, v4

    :cond_49
    if-eqz v1, :cond_4e

    iget-object v0, p0, Landroid/support/v4/app/i;->e:Lb/b/c/d/j;

    return-object v0

    :cond_4e
    const/4 v0, 0x0

    return-object v0
.end method
