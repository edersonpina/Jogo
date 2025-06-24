.class public Landroid/support/v7/view/menu/f;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/view/menu/p;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/f$a;
    }
.end annotation


# instance fields
.field b:Landroid/content/Context;

.field c:Landroid/view/LayoutInflater;

.field d:Landroid/support/v7/view/menu/h;

.field e:Landroid/support/v7/view/menu/ExpandedMenuView;

.field f:I

.field g:I

.field h:I

.field private i:Landroid/support/v7/view/menu/p$a;

.field j:Landroid/support/v7/view/menu/f$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/support/v7/view/menu/f;->h:I

    const/4 p2, 0x0

    iput p2, p0, Landroid/support/v7/view/menu/f;->g:I

    iput-object p1, p0, Landroid/support/v7/view/menu/f;->b:Landroid/content/Context;

    iget-object p1, p0, Landroid/support/v7/view/menu/f;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/view/menu/f;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/q;
    .registers 5

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->e:Landroid/support/v7/view/menu/ExpandedMenuView;

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->c:Landroid/view/LayoutInflater;

    sget v1, Lb/b/d/a/g;->abc_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/view/menu/ExpandedMenuView;

    iput-object p1, p0, Landroid/support/v7/view/menu/f;->e:Landroid/support/v7/view/menu/ExpandedMenuView;

    iget-object p1, p0, Landroid/support/v7/view/menu/f;->j:Landroid/support/v7/view/menu/f$a;

    if-nez p1, :cond_1c

    new-instance p1, Landroid/support/v7/view/menu/f$a;

    invoke-direct {p1, p0}, Landroid/support/v7/view/menu/f$a;-><init>(Landroid/support/v7/view/menu/f;)V

    iput-object p1, p0, Landroid/support/v7/view/menu/f;->j:Landroid/support/v7/view/menu/f$a;

    :cond_1c
    iget-object p1, p0, Landroid/support/v7/view/menu/f;->e:Landroid/support/v7/view/menu/ExpandedMenuView;

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->j:Landroid/support/v7/view/menu/f$a;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Landroid/support/v7/view/menu/f;->e:Landroid/support/v7/view/menu/ExpandedMenuView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_28
    iget-object p1, p0, Landroid/support/v7/view/menu/f;->e:Landroid/support/v7/view/menu/ExpandedMenuView;

    return-object p1
.end method

.method public a()Landroid/widget/ListAdapter;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->j:Landroid/support/v7/view/menu/f$a;

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v7/view/menu/f$a;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/f$a;-><init>(Landroid/support/v7/view/menu/f;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/f;->j:Landroid/support/v7/view/menu/f$a;

    :cond_b
    iget-object v0, p0, Landroid/support/v7/view/menu/f;->j:Landroid/support/v7/view/menu/f$a;

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V
    .registers 5

    iget v0, p0, Landroid/support/v7/view/menu/f;->g:I

    if-eqz v0, :cond_14

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/view/menu/f;->b:Landroid/content/Context;

    iget-object p1, p0, Landroid/support/v7/view/menu/f;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/view/menu/f;->c:Landroid/view/LayoutInflater;

    goto :goto_26

    :cond_14
    iget-object v0, p0, Landroid/support/v7/view/menu/f;->b:Landroid/content/Context;

    if-eqz v0, :cond_26

    iput-object p1, p0, Landroid/support/v7/view/menu/f;->b:Landroid/content/Context;

    iget-object p1, p0, Landroid/support/v7/view/menu/f;->c:Landroid/view/LayoutInflater;

    if-nez p1, :cond_26

    iget-object p1, p0, Landroid/support/v7/view/menu/f;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/view/menu/f;->c:Landroid/view/LayoutInflater;

    :cond_26
    :goto_26
    iput-object p2, p0, Landroid/support/v7/view/menu/f;->d:Landroid/support/v7/view/menu/h;

    iget-object p1, p0, Landroid/support/v7/view/menu/f;->j:Landroid/support/v7/view/menu/f$a;

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/support/v7/view/menu/f$a;->notifyDataSetChanged()V

    :cond_2f
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;Z)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->i:Landroid/support/v7/view/menu/p$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/p$a;->a(Landroid/support/v7/view/menu/h;Z)V

    :cond_7
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/p$a;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/view/menu/f;->i:Landroid/support/v7/view/menu/p$a;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iget-object p1, p0, Landroid/support/v7/view/menu/f;->j:Landroid/support/v7/view/menu/f$a;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/support/v7/view/menu/f$a;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/k;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/support/v7/view/menu/v;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    new-instance v0, Landroid/support/v7/view/menu/i;

    invoke-direct {v0, p1}, Landroid/support/v7/view/menu/i;-><init>(Landroid/support/v7/view/menu/h;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/i;->a(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->i:Landroid/support/v7/view/menu/p$a;

    if-eqz v0, :cond_18

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/p$a;->a(Landroid/support/v7/view/menu/h;)Z

    :cond_18
    const/4 p1, 0x1

    return p1
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/k;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Landroid/support/v7/view/menu/f;->d:Landroid/support/v7/view/menu/h;

    iget-object p2, p0, Landroid/support/v7/view/menu/f;->j:Landroid/support/v7/view/menu/f$a;

    invoke-virtual {p2, p3}, Landroid/support/v7/view/menu/f$a;->getItem(I)Landroid/support/v7/view/menu/k;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroid/support/v7/view/menu/h;->a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/p;I)Z

    return-void
.end method
