.class Landroid/support/v7/widget/ActionMenuPresenter$d$a;
.super Landroid/support/v7/widget/h0;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ActionMenuPresenter$d;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Landroid/support/v7/widget/ActionMenuPresenter$d;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter$d;Landroid/view/View;Landroid/support/v7/widget/ActionMenuPresenter;)V
    .registers 4

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$d$a;->k:Landroid/support/v7/widget/ActionMenuPresenter$d;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/h0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/view/menu/t;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$d$a;->k:Landroid/support/v7/widget/ActionMenuPresenter$d;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter$d;->d:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->y:Landroid/support/v7/widget/ActionMenuPresenter$e;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->b()Landroid/support/v7/view/menu/n;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$d$a;->k:Landroid/support/v7/widget/ActionMenuPresenter$d;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter$d;->d:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->h()Z

    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$d$a;->k:Landroid/support/v7/widget/ActionMenuPresenter$d;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter$d;->d:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->A:Landroid/support/v7/widget/ActionMenuPresenter$c;

    if-eqz v1, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->e()Z

    const/4 v0, 0x1

    return v0
.end method
