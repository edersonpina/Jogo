.class public Landroid/support/v7/app/c0$d;
.super Lb/b/d/d/b;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/support/v7/view/menu/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Landroid/support/v7/view/menu/h;

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

.field final synthetic h:Landroid/support/v7/app/c0;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/c0;Landroid/content/Context;Lb/b/d/d/b$a;)V
    .registers 4

    iput-object p1, p0, Landroid/support/v7/app/c0$d;->h:Landroid/support/v7/app/c0;

    invoke-direct {p0}, Lb/b/d/d/b;-><init>()V

    iput-object p2, p0, Landroid/support/v7/app/c0$d;->d:Landroid/content/Context;

    iput-object p3, p0, Landroid/support/v7/app/c0$d;->f:Lb/b/d/d/b$a;

    new-instance p1, Landroid/support/v7/view/menu/h;

    invoke-direct {p1, p2}, Landroid/support/v7/view/menu/h;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/view/menu/h;->a(I)Landroid/support/v7/view/menu/h;

    iput-object p1, p0, Landroid/support/v7/app/c0$d;->e:Landroid/support/v7/view/menu/h;

    iget-object p1, p0, Landroid/support/v7/app/c0$d;->e:Landroid/support/v7/view/menu/h;

    invoke-virtual {p1, p0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/h$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Landroid/support/v7/app/c0$d;->h:Landroid/support/v7/app/c0;

    iget-object v1, v0, Landroid/support/v7/app/c0;->j:Landroid/support/v7/app/c0$d;

    if-eq v1, p0, :cond_7

    return-void

    :cond_7
    iget-boolean v1, v0, Landroid/support/v7/app/c0;->r:Z

    iget-boolean v0, v0, Landroid/support/v7/app/c0;->s:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_11

    if-eqz v0, :cond_12

    :cond_11
    const/4 v2, 0x0

    :cond_12
    if-nez v2, :cond_1d

    iget-object v0, p0, Landroid/support/v7/app/c0$d;->h:Landroid/support/v7/app/c0;

    iput-object p0, v0, Landroid/support/v7/app/c0;->k:Lb/b/d/d/b;

    iget-object v1, p0, Landroid/support/v7/app/c0$d;->f:Lb/b/d/d/b$a;

    iput-object v1, v0, Landroid/support/v7/app/c0;->l:Lb/b/d/d/b$a;

    goto :goto_22

    :cond_1d
    iget-object v0, p0, Landroid/support/v7/app/c0$d;->f:Lb/b/d/d/b$a;

    invoke-interface {v0, p0}, Lb/b/d/d/b$a;->a(Lb/b/d/d/b;)V

    :goto_22
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/c0$d;->f:Lb/b/d/d/b$a;

    iget-object v1, p0, Landroid/support/v7/app/c0$d;->h:Landroid/support/v7/app/c0;

    invoke-virtual {v1, v3}, Landroid/support/v7/app/c0;->d(Z)V

    iget-object v1, p0, Landroid/support/v7/app/c0$d;->h:Landroid/support/v7/app/c0;

    iget-object v1, v1, Landroid/support/v7/app/c0;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->a()V

    iget-object v1, p0, Landroid/support/v7/app/c0$d;->h:Landroid/support/v7/app/c0;

    iget-object v1, v1, Landroid/support/v7/app/c0;->e:Landroid/support/v7/widget/d0;

    check-cast v1, Landroid/support/v7/widget/a1;

    invoke-virtual {v1}, Landroid/support/v7/widget/a1;->e()Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object v1, p0, Landroid/support/v7/app/c0$d;->h:Landroid/support/v7/app/c0;

    iget-object v2, v1, Landroid/support/v7/app/c0;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-boolean v1, v1, Landroid/support/v7/app/c0;->x:Z

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v1, p0, Landroid/support/v7/app/c0$d;->h:Landroid/support/v7/app/c0;

    iput-object v0, v1, Landroid/support/v7/app/c0;->j:Landroid/support/v7/app/c0$d;

    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/c0$d;->h:Landroid/support/v7/app/c0;

    iget-object v0, v0, Landroid/support/v7/app/c0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/app/c0$d;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;)V
    .registers 2

    iget-object p1, p0, Landroid/support/v7/app/c0$d;->f:Lb/b/d/d/b$a;

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/app/c0$d;->i()V

    iget-object p1, p0, Landroid/support/v7/app/c0$d;->h:Landroid/support/v7/app/c0;

    iget-object p1, p1, Landroid/support/v7/app/c0;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->d()Z

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/c0$d;->h:Landroid/support/v7/app/c0;

    iget-object v0, v0, Landroid/support/v7/app/c0;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/app/c0$d;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/c0$d;->h:Landroid/support/v7/app/c0;

    iget-object v0, v0, Landroid/support/v7/app/c0;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    invoke-super {p0, p1}, Lb/b/d/d/b;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/app/c0$d;->h:Landroid/support/v7/app/c0;

    iget-object v0, v0, Landroid/support/v7/app/c0;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z
    .registers 3

    iget-object p1, p0, Landroid/support/v7/app/c0$d;->f:Lb/b/d/d/b$a;

    if-eqz p1, :cond_9

    invoke-interface {p1, p0, p2}, Lb/b/d/d/b$a;->a(Lb/b/d/d/b;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public b()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/c0$d;->g:Ljava/lang/ref/WeakReference;

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

    iget-object v0, p0, Landroid/support/v7/app/c0$d;->h:Landroid/support/v7/app/c0;

    iget-object v0, v0, Landroid/support/v7/app/c0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/app/c0$d;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/c0$d;->h:Landroid/support/v7/app/c0;

    iget-object v0, v0, Landroid/support/v7/app/c0;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()Landroid/view/Menu;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/c0$d;->e:Landroid/support/v7/view/menu/h;

    return-object v0
.end method

.method public d()Landroid/view/MenuInflater;
    .registers 3

    new-instance v0, Lb/b/d/d/g;

    iget-object v1, p0, Landroid/support/v7/app/c0$d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lb/b/d/d/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/c0$d;->h:Landroid/support/v7/app/c0;

    iget-object v0, v0, Landroid/support/v7/app/c0;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/c0$d;->h:Landroid/support/v7/app/c0;

    iget-object v0, v0, Landroid/support/v7/app/c0;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/c0$d;->h:Landroid/support/v7/app/c0;

    iget-object v0, v0, Landroid/support/v7/app/c0;->j:Landroid/support/v7/app/c0$d;

    if-eq v0, p0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/c0$d;->e:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->p()V

    :try_start_c
    iget-object v0, p0, Landroid/support/v7/app/c0$d;->f:Lb/b/d/d/b$a;

    iget-object v1, p0, Landroid/support/v7/app/c0$d;->e:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, p0, v1}, Lb/b/d/d/b$a;->b(Lb/b/d/d/b;Landroid/view/Menu;)Z
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_19

    iget-object v0, p0, Landroid/support/v7/app/c0$d;->e:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->o()V

    return-void

    :catchall_19
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/app/c0$d;->e:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->o()V

    throw v0
.end method

.method public j()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/c0$d;->h:Landroid/support/v7/app/c0;

    iget-object v0, v0, Landroid/support/v7/app/c0;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->b()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/c0$d;->e:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->p()V

    :try_start_5
    iget-object v0, p0, Landroid/support/v7/app/c0$d;->f:Lb/b/d/d/b$a;

    iget-object v1, p0, Landroid/support/v7/app/c0$d;->e:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, p0, v1}, Lb/b/d/d/b$a;->a(Lb/b/d/d/b;Landroid/view/Menu;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_13

    iget-object v1, p0, Landroid/support/v7/app/c0$d;->e:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->o()V

    return v0

    :catchall_13
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/app/c0$d;->e:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->o()V

    throw v0
.end method
