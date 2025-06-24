.class final Landroid/support/v4/app/c0$a;
.super Ljava/lang/Object;
.source "LoaderManager.java"

# interfaces
.implements Landroid/support/v4/content/c$b;
.implements Landroid/support/v4/content/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/content/c$b<",
        "Ljava/lang/Object;",
        ">;",
        "Landroid/support/v4/content/c$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Landroid/os/Bundle;

.field c:Landroid/support/v4/app/b0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/b0$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/support/v4/content/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field f:Z

.field g:Ljava/lang/Object;

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Landroid/support/v4/app/c0$a;

.field final synthetic o:Landroid/support/v4/app/c0;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/c0;ILandroid/os/Bundle;Landroid/support/v4/app/b0$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/b0$a<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v4/app/c0$a;->o:Landroid/support/v4/app/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/support/v4/app/c0$a;->a:I

    iput-object p3, p0, Landroid/support/v4/app/c0$a;->b:Landroid/os/Bundle;

    iput-object p4, p0, Landroid/support/v4/app/c0$a;->c:Landroid/support/v4/app/b0$a;

    return-void
.end method


# virtual methods
.method a()V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/c0$a;->l:Z

    iget-boolean v0, p0, Landroid/support/v4/app/c0$a;->f:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/c0$a;->f:Z

    iget-object v2, p0, Landroid/support/v4/app/c0$a;->c:Landroid/support/v4/app/b0$a;

    const/4 v3, 0x0

    if-eqz v2, :cond_45

    iget-object v2, p0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    if-eqz v2, :cond_45

    iget-boolean v2, p0, Landroid/support/v4/app/c0$a;->e:Z

    if-eqz v2, :cond_45

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/support/v4/app/c0$a;->o:Landroid/support/v4/app/c0;

    iget-object v0, v0, Landroid/support/v4/app/c0;->g:Landroid/support/v4/app/i;

    if-eqz v0, :cond_26

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    iget-object v2, v0, Landroid/support/v4/app/k;->u:Ljava/lang/String;

    const-string v4, "onLoaderReset"

    iput-object v4, v0, Landroid/support/v4/app/k;->u:Ljava/lang/String;

    goto :goto_27

    :cond_26
    move-object v2, v3

    :goto_27
    :try_start_27
    iget-object v0, p0, Landroid/support/v4/app/c0$a;->c:Landroid/support/v4/app/b0$a;

    iget-object v4, p0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    invoke-interface {v0, v4}, Landroid/support/v4/app/b0$a;->onLoaderReset(Landroid/support/v4/content/c;)V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_39

    iget-object v0, p0, Landroid/support/v4/app/c0$a;->o:Landroid/support/v4/app/c0;

    iget-object v0, v0, Landroid/support/v4/app/c0;->g:Landroid/support/v4/app/i;

    if-eqz v0, :cond_45

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    iput-object v2, v0, Landroid/support/v4/app/k;->u:Ljava/lang/String;

    goto :goto_45

    :catchall_39
    move-exception v0

    iget-object v1, p0, Landroid/support/v4/app/c0$a;->o:Landroid/support/v4/app/c0;

    iget-object v1, v1, Landroid/support/v4/app/c0;->g:Landroid/support/v4/app/i;

    if-eqz v1, :cond_44

    iget-object v1, v1, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    iput-object v2, v1, Landroid/support/v4/app/k;->u:Ljava/lang/String;

    :cond_44
    throw v0

    :cond_45
    :goto_45
    iput-object v3, p0, Landroid/support/v4/app/c0$a;->c:Landroid/support/v4/app/b0$a;

    iput-object v3, p0, Landroid/support/v4/app/c0$a;->g:Ljava/lang/Object;

    iput-boolean v1, p0, Landroid/support/v4/app/c0$a;->e:Z

    iget-object v0, p0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    if-eqz v0, :cond_62

    iget-boolean v2, p0, Landroid/support/v4/app/c0$a;->m:Z

    if-eqz v2, :cond_5d

    iput-boolean v1, p0, Landroid/support/v4/app/c0$a;->m:Z

    invoke-virtual {v0, p0}, Landroid/support/v4/content/c;->unregisterListener(Landroid/support/v4/content/c$b;)V

    iget-object v0, p0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/c;->unregisterOnLoadCanceledListener(Landroid/support/v4/content/c$a;)V

    :cond_5d
    iget-object v0, p0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    invoke-virtual {v0}, Landroid/support/v4/content/c;->reset()V

    :cond_62
    iget-object v0, p0, Landroid/support/v4/app/c0$a;->n:Landroid/support/v4/app/c0$a;

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Landroid/support/v4/app/c0$a;->a()V

    :cond_69
    return-void
.end method

.method public a(Landroid/support/v4/content/c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/c<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-boolean p1, p0, Landroid/support/v4/app/c0$a;->l:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Landroid/support/v4/app/c0$a;->o:Landroid/support/v4/app/c0;

    iget-object p1, p1, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    iget v0, p0, Landroid/support/v4/app/c0$a;->a:I

    invoke-virtual {p1, v0}, Lb/b/c/d/k;->a(I)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p0, :cond_12

    return-void

    :cond_12
    iget-object p1, p0, Landroid/support/v4/app/c0$a;->n:Landroid/support/v4/app/c0$a;

    if-eqz p1, :cond_35

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/c0$a;->n:Landroid/support/v4/app/c0$a;

    iget-object v1, p0, Landroid/support/v4/app/c0$a;->o:Landroid/support/v4/app/c0;

    iget-object v1, v1, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    iget v2, p0, Landroid/support/v4/app/c0$a;->a:I

    invoke-virtual {v1, v2, v0}, Lb/b/c/d/k;->b(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/support/v4/app/c0$a;->a()V

    iget-object v0, p0, Landroid/support/v4/app/c0$a;->o:Landroid/support/v4/app/c0;

    iget-object v1, v0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    iget v2, p1, Landroid/support/v4/app/c0$a;->a:I

    invoke-virtual {v1, v2, p1}, Lb/b/c/d/k;->b(ILjava/lang/Object;)V

    iget-boolean v0, v0, Landroid/support/v4/app/c0;->d:Z

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Landroid/support/v4/app/c0$a;->b()V

    :cond_35
    return-void
.end method

.method public a(Landroid/support/v4/content/c;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/c<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/support/v4/app/c0$a;->l:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/c0$a;->o:Landroid/support/v4/app/c0;

    iget-object v0, v0, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    iget v1, p0, Landroid/support/v4/app/c0$a;->a:I

    invoke-virtual {v0, v1}, Lb/b/c/d/k;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_12

    return-void

    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/c0$a;->n:Landroid/support/v4/app/c0$a;

    if-eqz v0, :cond_36

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/app/c0$a;->n:Landroid/support/v4/app/c0$a;

    iget-object p2, p0, Landroid/support/v4/app/c0$a;->o:Landroid/support/v4/app/c0;

    iget-object p2, p2, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    iget v1, p0, Landroid/support/v4/app/c0$a;->a:I

    invoke-virtual {p2, v1, p1}, Lb/b/c/d/k;->b(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/support/v4/app/c0$a;->a()V

    iget-object p1, p0, Landroid/support/v4/app/c0$a;->o:Landroid/support/v4/app/c0;

    iget-object p2, p1, Landroid/support/v4/app/c0;->a:Lb/b/c/d/k;

    iget v1, v0, Landroid/support/v4/app/c0$a;->a:I

    invoke-virtual {p2, v1, v0}, Lb/b/c/d/k;->b(ILjava/lang/Object;)V

    iget-boolean p1, p1, Landroid/support/v4/app/c0;->d:Z

    if-eqz p1, :cond_35

    invoke-virtual {v0}, Landroid/support/v4/app/c0$a;->b()V

    :cond_35
    return-void

    :cond_36
    iget-object v0, p0, Landroid/support/v4/app/c0$a;->g:Ljava/lang/Object;

    if-ne v0, p2, :cond_3e

    iget-boolean v0, p0, Landroid/support/v4/app/c0$a;->e:Z

    if-nez v0, :cond_4a

    :cond_3e
    iput-object p2, p0, Landroid/support/v4/app/c0$a;->g:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/c0$a;->e:Z

    iget-boolean v0, p0, Landroid/support/v4/app/c0$a;->h:Z

    if-eqz v0, :cond_4a

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/c0$a;->b(Landroid/support/v4/content/c;Ljava/lang/Object;)V

    :cond_4a
    iget-object p1, p0, Landroid/support/v4/app/c0$a;->o:Landroid/support/v4/app/c0;

    iget-object p1, p1, Landroid/support/v4/app/c0;->b:Lb/b/c/d/k;

    iget p2, p0, Landroid/support/v4/app/c0$a;->a:I

    invoke-virtual {p1, p2}, Lb/b/c/d/k;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/c0$a;

    if-eqz p1, :cond_69

    if-eq p1, p0, :cond_69

    const/4 p2, 0x0

    iput-boolean p2, p1, Landroid/support/v4/app/c0$a;->f:Z

    invoke-virtual {p1}, Landroid/support/v4/app/c0$a;->a()V

    iget-object p1, p0, Landroid/support/v4/app/c0$a;->o:Landroid/support/v4/app/c0;

    iget-object p1, p1, Landroid/support/v4/app/c0;->b:Lb/b/c/d/k;

    iget p2, p0, Landroid/support/v4/app/c0$a;->a:I

    invoke-virtual {p1, p2}, Lb/b/c/d/k;->d(I)V

    :cond_69
    iget-object p1, p0, Landroid/support/v4/app/c0$a;->o:Landroid/support/v4/app/c0;

    iget-object p2, p1, Landroid/support/v4/app/c0;->g:Landroid/support/v4/app/i;

    if-eqz p2, :cond_7e

    invoke-virtual {p1}, Landroid/support/v4/app/c0;->f()Z

    move-result p1

    if-nez p1, :cond_7e

    iget-object p1, p0, Landroid/support/v4/app/c0$a;->o:Landroid/support/v4/app/c0;

    iget-object p1, p1, Landroid/support/v4/app/c0;->g:Landroid/support/v4/app/i;

    iget-object p1, p1, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {p1}, Landroid/support/v4/app/k;->u()V

    :cond_7e
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/c0$a;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/c0$a;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/c0$a;->c:Landroid/support/v4/app/b0$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    const-string v1, "  "

    if-eqz v0, :cond_3e

    invoke-static {p1, v1}, Ld/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/support/v4/content/c;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_3e
    iget-boolean v0, p0, Landroid/support/v4/app/c0$a;->e:Z

    if-nez v0, :cond_46

    iget-boolean v0, p0, Landroid/support/v4/app/c0$a;->f:Z

    if-eqz v0, :cond_6a

    :cond_46
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/c0$a;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/c0$a;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/c0$a;->g:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6a
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/c0$a;->h:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/c0$a;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/c0$a;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/c0$a;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/c0$a;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/c0$a;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/c0$a;->n:Landroid/support/v4/app/c0$a;

    if-eqz v0, :cond_cb

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/c0$a;->n:Landroid/support/v4/app/c0$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/c0$a;->n:Landroid/support/v4/app/c0$a;

    invoke-static {p1, v1}, Ld/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/c0$a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_cb
    return-void
.end method

.method b()V
    .registers 5

    iget-boolean v0, p0, Landroid/support/v4/app/c0$a;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/support/v4/app/c0$a;->j:Z

    if-eqz v0, :cond_c

    iput-boolean v1, p0, Landroid/support/v4/app/c0$a;->h:Z

    return-void

    :cond_c
    iget-boolean v0, p0, Landroid/support/v4/app/c0$a;->h:Z

    if-eqz v0, :cond_11

    return-void

    :cond_11
    iput-boolean v1, p0, Landroid/support/v4/app/c0$a;->h:Z

    iget-object v0, p0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/support/v4/app/c0$a;->c:Landroid/support/v4/app/b0$a;

    if-eqz v0, :cond_25

    iget v2, p0, Landroid/support/v4/app/c0$a;->a:I

    iget-object v3, p0, Landroid/support/v4/app/c0$a;->b:Landroid/os/Bundle;

    invoke-interface {v0, v2, v3}, Landroid/support/v4/app/b0$a;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/c;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    :cond_25
    iget-object v0, p0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_59

    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-static {v1}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    :goto_59
    iget-boolean v0, p0, Landroid/support/v4/app/c0$a;->m:Z

    if-nez v0, :cond_6b

    iget-object v0, p0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    iget v2, p0, Landroid/support/v4/app/c0$a;->a:I

    invoke-virtual {v0, v2, p0}, Landroid/support/v4/content/c;->registerListener(ILandroid/support/v4/content/c$b;)V

    iget-object v0, p0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/c;->registerOnLoadCanceledListener(Landroid/support/v4/content/c$a;)V

    iput-boolean v1, p0, Landroid/support/v4/app/c0$a;->m:Z

    :cond_6b
    iget-object v0, p0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    invoke-virtual {v0}, Landroid/support/v4/content/c;->startLoading()V

    :cond_70
    return-void
.end method

.method b(Landroid/support/v4/content/c;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/c<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/c0$a;->c:Landroid/support/v4/app/b0$a;

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/app/c0$a;->o:Landroid/support/v4/app/c0;

    iget-object v1, v1, Landroid/support/v4/app/c0;->g:Landroid/support/v4/app/i;

    if-eqz v1, :cond_14

    iget-object v0, v1, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    iget-object v1, v0, Landroid/support/v4/app/k;->u:Ljava/lang/String;

    const-string v2, "onLoadFinished"

    iput-object v2, v0, Landroid/support/v4/app/k;->u:Ljava/lang/String;

    move-object v0, v1

    :cond_14
    :try_start_14
    iget-object v1, p0, Landroid/support/v4/app/c0$a;->c:Landroid/support/v4/app/b0$a;

    invoke-interface {v1, p1, p2}, Landroid/support/v4/app/b0$a;->onLoadFinished(Landroid/support/v4/content/c;Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_27

    iget-object p1, p0, Landroid/support/v4/app/c0$a;->o:Landroid/support/v4/app/c0;

    iget-object p1, p1, Landroid/support/v4/app/c0;->g:Landroid/support/v4/app/i;

    if-eqz p1, :cond_23

    iget-object p1, p1, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    iput-object v0, p1, Landroid/support/v4/app/k;->u:Ljava/lang/String;

    :cond_23
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/c0$a;->f:Z

    goto :goto_33

    :catchall_27
    move-exception p1

    iget-object p2, p0, Landroid/support/v4/app/c0$a;->o:Landroid/support/v4/app/c0;

    iget-object p2, p2, Landroid/support/v4/app/c0;->g:Landroid/support/v4/app/i;

    if-eqz p2, :cond_32

    iget-object p2, p2, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    iput-object v0, p2, Landroid/support/v4/app/k;->u:Ljava/lang/String;

    :cond_32
    throw p1

    :cond_33
    :goto_33
    return-void
.end method

.method c()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/c0$a;->h:Z

    iget-boolean v1, p0, Landroid/support/v4/app/c0$a;->i:Z

    if-nez v1, :cond_1e

    iget-object v1, p0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    if-eqz v1, :cond_1e

    iget-boolean v2, p0, Landroid/support/v4/app/c0$a;->m:Z

    if-eqz v2, :cond_1e

    iput-boolean v0, p0, Landroid/support/v4/app/c0$a;->m:Z

    invoke-virtual {v1, p0}, Landroid/support/v4/content/c;->unregisterListener(Landroid/support/v4/content/c$b;)V

    iget-object v0, p0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/c;->unregisterOnLoadCanceledListener(Landroid/support/v4/content/c$a;)V

    iget-object v0, p0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    invoke-virtual {v0}, Landroid/support/v4/content/c;->stopLoading()V

    :cond_1e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/c0$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/c0$a;->d:Landroid/support/v4/content/c;

    invoke-static {v1, v0}, La/a/g;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
