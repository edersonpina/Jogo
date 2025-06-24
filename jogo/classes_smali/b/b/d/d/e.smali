.class public Lb/b/d/d/e;
.super Lb/b/d/d/b;
.source "StandaloneActionMode.java"

# interfaces
.implements Landroid/support/v7/view/menu/h$a;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Landroid/support/v7/widget/ActionBarContextView;

.field private f:Lb/b/d/d/b$a;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Landroid/support/v7/view/menu/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Lb/b/d/d/b$a;Z)V
    .registers 5

    invoke-direct {p0}, Lb/b/d/d/b;-><init>()V

    iput-object p1, p0, Lb/b/d/d/e;->d:Landroid/content/Context;

    iput-object p2, p0, Lb/b/d/d/e;->e:Landroid/support/v7/widget/ActionBarContextView;

    iput-object p3, p0, Lb/b/d/d/e;->f:Lb/b/d/d/b$a;

    new-instance p1, Landroid/support/v7/view/menu/h;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v7/view/menu/h;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/view/menu/h;->a(I)Landroid/support/v7/view/menu/h;

    iput-object p1, p0, Lb/b/d/d/e;->i:Landroid/support/v7/view/menu/h;

    iget-object p1, p0, Lb/b/d/d/e;->i:Landroid/support/v7/view/menu/h;

    invoke-virtual {p1, p0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/h$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-boolean v0, p0, Lb/b/d/d/e;->h:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/d/d/e;->h:Z

    iget-object v0, p0, Lb/b/d/d/e;->e:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lb/b/d/d/e;->f:Lb/b/d/d/b$a;

    invoke-interface {v0, p0}, Lb/b/d/d/b$a;->a(Lb/b/d/d/b;)V

    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lb/b/d/d/e;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/d/d/e;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;)V
    .registers 2

    invoke-virtual {p0}, Lb/b/d/d/e;->i()V

    iget-object p1, p0, Lb/b/d/d/e;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->d()Z

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lb/b/d/d/e;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    if-eqz p1, :cond_d

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lb/b/d/d/e;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lb/b/d/d/e;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    invoke-super {p0, p1}, Lb/b/d/d/b;->a(Z)V

    iget-object v0, p0, Lb/b/d/d/e;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z
    .registers 3

    iget-object p1, p0, Lb/b/d/d/e;->f:Lb/b/d/d/b$a;

    invoke-interface {p1, p0, p2}, Lb/b/d/d/b$a;->a(Lb/b/d/d/b;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lb/b/d/d/e;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Lb/b/d/d/e;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/d/d/e;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lb/b/d/d/e;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()Landroid/view/Menu;
    .registers 2

    iget-object v0, p0, Lb/b/d/d/e;->i:Landroid/support/v7/view/menu/h;

    return-object v0
.end method

.method public d()Landroid/view/MenuInflater;
    .registers 3

    new-instance v0, Lb/b/d/d/g;

    iget-object v1, p0, Lb/b/d/d/e;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/b/d/d/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lb/b/d/d/e;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lb/b/d/d/e;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .registers 3

    iget-object v0, p0, Lb/b/d/d/e;->f:Lb/b/d/d/b$a;

    iget-object v1, p0, Lb/b/d/d/e;->i:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, p0, v1}, Lb/b/d/d/b$a;->b(Lb/b/d/d/b;Landroid/view/Menu;)Z

    return-void
.end method

.method public j()Z
    .registers 2

    iget-object v0, p0, Lb/b/d/d/e;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->b()Z

    move-result v0

    return v0
.end method
