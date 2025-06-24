.class public Landroid/support/v4/app/h;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field private final a:Landroid/support/v4/app/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/i<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/support/v4/app/i;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/i<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    return-void
.end method

.method public static final a(Landroid/support/v4/app/i;)Landroid/support/v4/app/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/i<",
            "*>;)",
            "Landroid/support/v4/app/h;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/app/h;

    invoke-direct {v0, p0}, Landroid/support/v4/app/h;-><init>(Landroid/support/v4/app/i;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/k;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->d()V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;Landroid/support/v4/app/o;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/k;->a(Landroid/os/Parcelable;Landroid/support/v4/app/o;)V

    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v1, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    iget-object v2, v1, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    if-nez v2, :cond_f

    iput-object v0, v1, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iput-object v0, v1, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    iput-object p1, v1, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    return-void

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already attached"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/Menu;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->a(Landroid/view/Menu;)V

    return-void
.end method

.method public a(Lb/b/c/d/j;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/c/d/j<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/b0;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/i;->a(Lb/b/c/d/j;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/i;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/k;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->e()V

    return-void
.end method

.method public b(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->b(Z)V

    return-void
.end method

.method public b(Landroid/view/Menu;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->b(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->b(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->f()V

    return-void
.end method

.method public c(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/i;->a(Z)V

    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->h()V

    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->i()V

    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->j()V

    return-void
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->k()V

    return-void
.end method

.method public h()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->l()V

    return-void
.end method

.method public i()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->m()V

    return-void
.end method

.method public j()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->b()V

    return-void
.end method

.method public k()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->c()V

    return-void
.end method

.method public l()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->o()Z

    move-result v0

    return v0
.end method

.method public m()Landroid/support/v4/app/j;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    return-object v0
.end method

.method public n()Landroid/support/v4/app/b0;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->f()Landroid/support/v4/app/c0;

    move-result-object v0

    return-object v0
.end method

.method public o()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->q()V

    return-void
.end method

.method public p()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->h()V

    return-void
.end method

.method public q()Lb/b/c/d/j;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/b/c/d/j<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/b0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->i()Lb/b/c/d/j;

    move-result-object v0

    return-object v0
.end method

.method public r()Landroid/support/v4/app/o;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->r()Landroid/support/v4/app/o;

    move-result-object v0

    return-object v0
.end method

.method public s()Landroid/os/Parcelable;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->s()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
