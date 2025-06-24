.class Landroid/support/v7/widget/Toolbar$d;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/support/v7/view/menu/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field b:Landroid/support/v7/view/menu/h;

.field c:Landroid/support/v7/view/menu/k;

.field final synthetic d:Landroid/support/v7/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->d:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V
    .registers 4

    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->b:Landroid/support/v7/view/menu/h;

    if-eqz p1, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/view/menu/k;

    if-eqz v0, :cond_b

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/k;)Z

    :cond_b
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar$d;->b:Landroid/support/v7/view/menu/h;

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;Z)V
    .registers 3

    return-void
.end method

.method public a(Z)V
    .registers 6

    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/view/menu/k;

    if-eqz p1, :cond_28

    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->b:Landroid/support/v7/view/menu/h;

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, p1, :cond_1f

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar$d;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/view/menu/k;

    if-ne v2, v3, :cond_1c

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1f
    :goto_1f
    if-nez v0, :cond_28

    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->b:Landroid/support/v7/view/menu/h;

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/view/menu/k;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/Toolbar$d;->b(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/k;)Z

    :cond_28
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/k;)Z
    .registers 6

    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->e()V

    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->d:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$d;->d:Landroid/support/v7/widget/Toolbar;

    if-eq p1, v0, :cond_23

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1c

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1c
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->d:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_23
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Landroid/support/v7/view/menu/k;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/widget/Toolbar;->j:Landroid/view/View;

    iput-object p2, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/view/menu/k;

    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->d:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->j:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$d;->d:Landroid/support/v7/widget/Toolbar;

    if-eq p1, v0, :cond_65

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_44

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->j:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_44
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$e;

    move-result-object p1

    const v0, 0x800003

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$d;->d:Landroid/support/v7/widget/Toolbar;

    iget v2, v1, Landroid/support/v7/widget/Toolbar;->o:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v0, v2

    iput v0, p1, Landroid/support/v7/app/a$a;->a:I

    const/4 v0, 0x2

    iput v0, p1, Landroid/support/v7/widget/Toolbar$e;->b:I

    iget-object v0, v1, Landroid/support/v7/widget/Toolbar;->j:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->d:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->j:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_65
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->j()V

    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/support/v7/view/menu/k;->a(Z)V

    iget-object p2, p0, Landroid/support/v7/widget/Toolbar$d;->d:Landroid/support/v7/widget/Toolbar;

    iget-object p2, p2, Landroid/support/v7/widget/Toolbar;->j:Landroid/view/View;

    instance-of v0, p2, Lb/b/d/d/c;

    if-eqz v0, :cond_80

    check-cast p2, Lb/b/d/d/c;

    invoke-interface {p2}, Lb/b/d/d/c;->a()V

    :cond_80
    return p1
.end method

.method public a(Landroid/support/v7/view/menu/v;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/k;)Z
    .registers 4

    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->d:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->j:Landroid/view/View;

    instance-of v0, p1, Lb/b/d/d/c;

    if-eqz v0, :cond_d

    check-cast p1, Lb/b/d/d/c;

    invoke-interface {p1}, Lb/b/d/d/c;->b()V

    :cond_d
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->d:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->j:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->d:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->d:Landroid/support/v7/widget/Toolbar;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/Toolbar;->j:Landroid/view/View;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->a()V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/view/menu/k;

    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/support/v7/view/menu/k;->a(Z)V

    const/4 p1, 0x1

    return p1
.end method
