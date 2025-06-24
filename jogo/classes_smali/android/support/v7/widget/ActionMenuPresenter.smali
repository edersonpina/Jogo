.class Landroid/support/v7/widget/ActionMenuPresenter;
.super Landroid/support/v7/view/menu/b;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v4/view/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuPresenter$b;,
        Landroid/support/v7/widget/ActionMenuPresenter$c;,
        Landroid/support/v7/widget/ActionMenuPresenter$f;,
        Landroid/support/v7/widget/ActionMenuPresenter$a;,
        Landroid/support/v7/widget/ActionMenuPresenter$e;,
        Landroid/support/v7/widget/ActionMenuPresenter$d;,
        Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# instance fields
.field A:Landroid/support/v7/widget/ActionMenuPresenter$c;

.field private B:Landroid/support/v7/widget/ActionMenuPresenter$b;

.field final C:Landroid/support/v7/widget/ActionMenuPresenter$f;

.field D:I

.field j:Landroid/support/v7/widget/ActionMenuPresenter$d;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private final w:Landroid/util/SparseBooleanArray;

.field private x:Landroid/view/View;

.field y:Landroid/support/v7/widget/ActionMenuPresenter$e;

.field z:Landroid/support/v7/widget/ActionMenuPresenter$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    sget v0, Lb/b/d/a/g;->abc_action_menu_layout:I

    sget v1, Lb/b/d/a/g;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/view/menu/b;-><init>(Landroid/content/Context;II)V

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->w:Landroid/util/SparseBooleanArray;

    new-instance p1, Landroid/support/v7/widget/ActionMenuPresenter$f;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/ActionMenuPresenter$f;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->C:Landroid/support/v7/widget/ActionMenuPresenter$f;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/h;
    .registers 1

    iget-object p0, p0, Landroid/support/v7/view/menu/b;->d:Landroid/support/v7/view/menu/h;

    return-object p0
.end method

.method static synthetic b(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/h;
    .registers 1

    iget-object p0, p0, Landroid/support/v7/view/menu/b;->d:Landroid/support/v7/view/menu/h;

    return-object p0
.end method

.method static synthetic c(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/q;
    .registers 1

    iget-object p0, p0, Landroid/support/v7/view/menu/b;->i:Landroid/support/v7/view/menu/q;

    return-object p0
.end method

.method static synthetic d(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/h;
    .registers 1

    iget-object p0, p0, Landroid/support/v7/view/menu/b;->d:Landroid/support/v7/view/menu/h;

    return-object p0
.end method

.method static synthetic e(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/h;
    .registers 1

    iget-object p0, p0, Landroid/support/v7/view/menu/b;->d:Landroid/support/v7/view/menu/h;

    return-object p0
.end method

.method static synthetic f(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/q;
    .registers 1

    iget-object p0, p0, Landroid/support/v7/view/menu/b;->i:Landroid/support/v7/view/menu/q;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/q;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/b;->i:Landroid/support/v7/view/menu/q;

    invoke-super {p0, p1}, Landroid/support/v7/view/menu/b;->a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/q;

    move-result-object p1

    if-eq v0, p1, :cond_e

    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V

    :cond_e
    return-object p1
.end method

.method public a(Landroid/support/v7/view/menu/k;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    invoke-virtual {p1}, Landroid/support/v7/view/menu/k;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/support/v7/view/menu/k;->e()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/menu/b;->a(Landroid/support/v7/view/menu/k;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_10
    invoke-virtual {p1}, Landroid/support/v7/view/menu/k;->isActionViewExpanded()Z

    move-result p1

    if-eqz p1, :cond_19

    const/16 p1, 0x8

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    check-cast p3, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_30

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_30
    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/b;->a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p1}, Lb/b/d/d/a;->a(Landroid/content/Context;)Lb/b/d/d/a;

    move-result-object p1

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->n:Z

    if-nez v0, :cond_15

    invoke-virtual {p1}, Lb/b/d/d/a;->g()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->m:Z

    :cond_15
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->t:Z

    if-nez v0, :cond_1f

    invoke-virtual {p1}, Lb/b/d/d/a;->b()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->o:I

    :cond_1f
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->r:Z

    if-nez v0, :cond_29

    invoke-virtual {p1}, Lb/b/d/d/a;->c()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->q:I

    :cond_29
    iget p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->o:I

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$d;

    if-nez v0, :cond_56

    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$d;

    iget-object v2, p0, Landroid/support/v7/view/menu/b;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter$d;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$d;

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->l:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$d;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/o;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->k:Landroid/graphics/drawable/Drawable;

    iput-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->l:Z

    :cond_4d
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$d;

    invoke-virtual {v2, v0, v0}, Landroid/widget/ImageView;->measure(II)V

    :cond_56
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$d;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_60

    :cond_5e
    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$d;

    :goto_60
    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->p:I

    const/high16 p1, 0x42600000  # 56.0f

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->v:I

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->x:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$d;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/o;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->l:Z

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->k:Landroid/graphics/drawable/Drawable;

    :goto_d
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->c()Z

    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/b;->a(Landroid/support/v7/view/menu/h;Z)V

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/k;Landroid/support/v7/view/menu/q$a;)V
    .registers 4

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/support/v7/view/menu/q$a;->a(Landroid/support/v7/view/menu/k;I)V

    iget-object p1, p0, Landroid/support/v7/view/menu/b;->i:Landroid/support/v7/view/menu/q;

    check-cast p1, Landroid/support/v7/widget/ActionMenuView;

    check-cast p2, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {p2, p1}, Landroid/support/v7/view/menu/ActionMenuItemView;->setItemInvoker(Landroid/support/v7/view/menu/h$b;)V

    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->B:Landroid/support/v7/widget/ActionMenuPresenter$b;

    if-nez p1, :cond_18

    new-instance p1, Landroid/support/v7/widget/ActionMenuPresenter$b;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/ActionMenuPresenter$b;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->B:Landroid/support/v7/widget/ActionMenuPresenter$b;

    :cond_18
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->B:Landroid/support/v7/widget/ActionMenuPresenter$b;

    invoke-virtual {p2, p1}, Landroid/support/v7/view/menu/ActionMenuItemView;->setPopupCallback(Landroid/support/v7/view/menu/ActionMenuItemView$b;)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/ActionMenuView;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/view/menu/b;->i:Landroid/support/v7/view/menu/q;

    iget-object v0, p0, Landroid/support/v7/view/menu/b;->d:Landroid/support/v7/view/menu/h;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/support/v7/view/menu/h;)V

    return-void
.end method

.method public a(Z)V
    .registers 6

    invoke-super {p0, p1}, Landroid/support/v7/view/menu/b;->a(Z)V

    iget-object p1, p0, Landroid/support/v7/view/menu/b;->i:Landroid/support/v7/view/menu/q;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Landroid/support/v7/view/menu/b;->d:Landroid/support/v7/view/menu/h;

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->c()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_27

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/k;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/k;->a()Landroid/support/v4/view/b;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_27
    iget-object p1, p0, Landroid/support/v7/view/menu/b;->d:Landroid/support/v7/view/menu/h;

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->g()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->m:Z

    if-eqz v1, :cond_4e

    if-eqz p1, :cond_4e

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4b

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/view/menu/k;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/k;->isActionViewExpanded()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    goto :goto_4e

    :cond_4b
    if-lez v1, :cond_4e

    const/4 v0, 0x1

    :cond_4e
    :goto_4e
    if-eqz v0, :cond_7e

    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$d;

    if-nez p1, :cond_5d

    new-instance p1, Landroid/support/v7/widget/ActionMenuPresenter$d;

    iget-object v0, p0, Landroid/support/v7/view/menu/b;->b:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$d;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$d;

    :cond_5d
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$d;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v7/view/menu/b;->i:Landroid/support/v7/view/menu/q;

    if-eq p1, v0, :cond_91

    if-eqz p1, :cond_70

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$d;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_70
    iget-object p1, p0, Landroid/support/v7/view/menu/b;->i:Landroid/support/v7/view/menu/q;

    check-cast p1, Landroid/support/v7/widget/ActionMenuView;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$d;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuView;->h()Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_91

    :cond_7e
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$d;

    if-eqz p1, :cond_91

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/view/menu/b;->i:Landroid/support/v7/view/menu/q;

    if-ne p1, v0, :cond_91

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$d;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_91
    :goto_91
    iget-object p1, p0, Landroid/support/v7/view/menu/b;->i:Landroid/support/v7/view/menu/q;

    check-cast p1, Landroid/support/v7/widget/ActionMenuView;

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->m:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->setOverflowReserved(Z)V

    return-void
.end method

.method public a(ILandroid/support/v7/view/menu/k;)Z
    .registers 3

    invoke-virtual {p2}, Landroid/support/v7/view/menu/k;->g()Z

    move-result p1

    return p1
.end method

.method public a(Landroid/support/v7/view/menu/v;)Z
    .registers 10

    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    move-object v0, p1

    :goto_9
    invoke-virtual {v0}, Landroid/support/v7/view/menu/v;->q()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/view/menu/b;->d:Landroid/support/v7/view/menu/h;

    if-eq v2, v3, :cond_18

    invoke-virtual {v0}, Landroid/support/v7/view/menu/v;->q()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/v;

    goto :goto_9

    :cond_18
    invoke-virtual {v0}, Landroid/support/v7/view/menu/v;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/view/menu/b;->i:Landroid/support/v7/view/menu/q;

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-nez v2, :cond_24

    goto :goto_41

    :cond_24
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_29
    if-ge v5, v4, :cond_41

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Landroid/support/v7/view/menu/q$a;

    if-eqz v7, :cond_3e

    move-object v7, v6

    check-cast v7, Landroid/support/v7/view/menu/q$a;

    invoke-interface {v7}, Landroid/support/v7/view/menu/q$a;->getItemData()Landroid/support/v7/view/menu/k;

    move-result-object v7

    if-ne v7, v0, :cond_3e

    move-object v3, v6

    goto :goto_41

    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_41
    :goto_41
    if-nez v3, :cond_44

    return v1

    :cond_44
    invoke-virtual {p1}, Landroid/support/v7/view/menu/v;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_50
    const/4 v4, 0x1

    if-ge v2, v0, :cond_68

    invoke-virtual {p1, v2}, Landroid/support/v7/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_65

    const/4 v1, 0x1

    goto :goto_68

    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    :cond_68
    :goto_68
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$a;

    iget-object v2, p0, Landroid/support/v7/view/menu/b;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v2, p1, v3}, Landroid/support/v7/widget/ActionMenuPresenter$a;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/view/menu/v;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->z:Landroid/support/v7/widget/ActionMenuPresenter$a;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->z:Landroid/support/v7/widget/ActionMenuPresenter$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/o;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->z:Landroid/support/v7/widget/ActionMenuPresenter$a;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->e()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-super {p0, p1}, Landroid/support/v7/view/menu/b;->a(Landroid/support/v7/view/menu/v;)Z

    return v4

    :cond_82
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_8b

    :goto_8a
    throw p1

    :goto_8b
    goto :goto_8a
.end method

.method public a(Landroid/view/ViewGroup;I)Z
    .registers 5

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$d;

    if-ne v0, v1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/b;->a(Landroid/view/ViewGroup;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->u:Z

    return-void
.end method

.method public b()Z
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/view/menu/b;->d:Landroid/support/v7/view/menu/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_12
    iget v4, v0, Landroid/support/v7/widget/ActionMenuPresenter;->q:I

    iget v5, v0, Landroid/support/v7/widget/ActionMenuPresenter;->p:I

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget-object v7, v0, Landroid/support/v7/view/menu/b;->i:Landroid/support/v7/view/menu/q;

    check-cast v7, Landroid/view/ViewGroup;

    move v11, v4

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_23
    if-ge v4, v3, :cond_4c

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v7/view/menu/k;

    invoke-virtual {v13}, Landroid/support/v7/view/menu/k;->j()Z

    move-result v14

    if-eqz v14, :cond_34

    add-int/lit8 v9, v9, 0x1

    goto :goto_3e

    :cond_34
    invoke-virtual {v13}, Landroid/support/v7/view/menu/k;->i()Z

    move-result v14

    if-eqz v14, :cond_3d

    add-int/lit8 v10, v10, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v8, 0x1

    :goto_3e
    iget-boolean v12, v0, Landroid/support/v7/widget/ActionMenuPresenter;->u:Z

    if-eqz v12, :cond_49

    invoke-virtual {v13}, Landroid/support/v7/view/menu/k;->isActionViewExpanded()Z

    move-result v12

    if-eqz v12, :cond_49

    const/4 v11, 0x0

    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_4c
    iget-boolean v4, v0, Landroid/support/v7/widget/ActionMenuPresenter;->m:Z

    if-eqz v4, :cond_57

    if-nez v8, :cond_55

    add-int/2addr v10, v9

    if-le v10, v11, :cond_57

    :cond_55
    add-int/lit8 v11, v11, -0x1

    :cond_57
    sub-int/2addr v11, v9

    iget-object v4, v0, Landroid/support/v7/widget/ActionMenuPresenter;->w:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    iget-boolean v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->s:Z

    if-eqz v8, :cond_6a

    iget v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->v:I

    div-int v9, v5, v8

    rem-int v10, v5, v8

    div-int/2addr v10, v9

    add-int/2addr v8, v10

    goto :goto_6c

    :cond_6a
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_6c
    move v10, v5

    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_6f
    if-ge v5, v3, :cond_156

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v7/view/menu/k;

    invoke-virtual {v14}, Landroid/support/v7/view/menu/k;->j()Z

    move-result v15

    if-eqz v15, :cond_b2

    iget-object v15, v0, Landroid/support/v7/widget/ActionMenuPresenter;->x:Landroid/view/View;

    invoke-virtual {v0, v14, v15, v7}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/view/menu/k;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    iget-object v12, v0, Landroid/support/v7/widget/ActionMenuPresenter;->x:Landroid/view/View;

    if-nez v12, :cond_89

    iput-object v15, v0, Landroid/support/v7/widget/ActionMenuPresenter;->x:Landroid/view/View;

    :cond_89
    iget-boolean v12, v0, Landroid/support/v7/widget/ActionMenuPresenter;->s:Z

    if-eqz v12, :cond_93

    invoke-static {v15, v8, v9, v6, v2}, Landroid/support/v7/widget/ActionMenuView;->b(Landroid/view/View;IIII)I

    move-result v12

    sub-int/2addr v9, v12

    goto :goto_96

    :cond_93
    invoke-virtual {v15, v6, v6}, Landroid/view/View;->measure(II)V

    :goto_96
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int/2addr v10, v12

    if-nez v13, :cond_9e

    goto :goto_9f

    :cond_9e
    move v12, v13

    :goto_9f
    invoke-virtual {v14}, Landroid/support/v7/view/menu/k;->getGroupId()I

    move-result v13

    const/4 v15, 0x1

    if-eqz v13, :cond_a9

    invoke-virtual {v4, v13, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_a9
    invoke-virtual {v14, v15}, Landroid/support/v7/view/menu/k;->d(Z)V

    move/from16 v17, v3

    move v13, v12

    :goto_af
    const/4 v0, 0x0

    goto/16 :goto_14d

    :cond_b2
    invoke-virtual {v14}, Landroid/support/v7/view/menu/k;->i()Z

    move-result v12

    if-eqz v12, :cond_147

    invoke-virtual {v14}, Landroid/support/v7/view/menu/k;->getGroupId()I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-gtz v11, :cond_c4

    if-eqz v15, :cond_ce

    :cond_c4
    if-lez v10, :cond_ce

    iget-boolean v2, v0, Landroid/support/v7/widget/ActionMenuPresenter;->s:Z

    if-eqz v2, :cond_cc

    if-lez v9, :cond_ce

    :cond_cc
    const/4 v2, 0x1

    goto :goto_cf

    :cond_ce
    const/4 v2, 0x0

    :goto_cf
    move/from16 v16, v2

    if-eqz v2, :cond_10d

    iget-object v2, v0, Landroid/support/v7/widget/ActionMenuPresenter;->x:Landroid/view/View;

    invoke-virtual {v0, v14, v2, v7}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/view/menu/k;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move/from16 v17, v3

    iget-object v3, v0, Landroid/support/v7/widget/ActionMenuPresenter;->x:Landroid/view/View;

    if-nez v3, :cond_e1

    iput-object v2, v0, Landroid/support/v7/widget/ActionMenuPresenter;->x:Landroid/view/View;

    :cond_e1
    iget-boolean v3, v0, Landroid/support/v7/widget/ActionMenuPresenter;->s:Z

    if-eqz v3, :cond_f1

    const/4 v3, 0x0

    invoke-static {v2, v8, v9, v6, v3}, Landroid/support/v7/widget/ActionMenuView;->b(Landroid/view/View;IIII)I

    move-result v18

    sub-int v9, v9, v18

    if-nez v18, :cond_f4

    const/16 v16, 0x0

    goto :goto_f4

    :cond_f1
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    :cond_f4
    :goto_f4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v10, v2

    if-nez v13, :cond_fc

    move v13, v2

    :cond_fc
    iget-boolean v2, v0, Landroid/support/v7/widget/ActionMenuPresenter;->s:Z

    if-eqz v2, :cond_103

    if-ltz v10, :cond_109

    goto :goto_107

    :cond_103
    add-int v2, v10, v13

    if-lez v2, :cond_109

    :goto_107
    const/4 v2, 0x1

    goto :goto_10a

    :cond_109
    const/4 v2, 0x0

    :goto_10a
    and-int v2, v16, v2

    goto :goto_10f

    :cond_10d
    move/from16 v17, v3

    :goto_10f
    if-eqz v2, :cond_118

    if-eqz v12, :cond_118

    const/4 v3, 0x1

    invoke-virtual {v4, v12, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_13e

    :cond_118
    if-eqz v15, :cond_13e

    const/4 v3, 0x0

    invoke-virtual {v4, v12, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v3, 0x0

    :goto_11f
    if-ge v3, v5, :cond_13e

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/v7/view/menu/k;

    invoke-virtual {v15}, Landroid/support/v7/view/menu/k;->getGroupId()I

    move-result v0

    if-ne v0, v12, :cond_139

    invoke-virtual {v15}, Landroid/support/v7/view/menu/k;->g()Z

    move-result v0

    if-eqz v0, :cond_135

    add-int/lit8 v11, v11, 0x1

    :cond_135
    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroid/support/v7/view/menu/k;->d(Z)V

    :cond_139
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_11f

    :cond_13e
    :goto_13e
    if-eqz v2, :cond_142

    add-int/lit8 v11, v11, -0x1

    :cond_142
    invoke-virtual {v14, v2}, Landroid/support/v7/view/menu/k;->d(Z)V

    goto/16 :goto_af

    :cond_147
    move/from16 v17, v3

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroid/support/v7/view/menu/k;->d(Z)V

    :goto_14d
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v3, v17

    goto/16 :goto_6f

    :cond_156
    const/4 v2, 0x1

    return v2
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->m:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->n:Z

    return-void
.end method

.method public c()Z
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->e()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->z:Landroid/support/v7/widget/ActionMenuPresenter$a;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/support/v7/view/menu/o;->a()V

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    or-int/2addr v0, v1

    return v0
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$d;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_9
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->l:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->k:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->A:Landroid/support/v7/widget/ActionMenuPresenter$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object v2, p0, Landroid/support/v7/view/menu/b;->i:Landroid/support/v7/view/menu/q;

    if-eqz v2, :cond_12

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->A:Landroid/support/v7/widget/ActionMenuPresenter$c;

    return v1

    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->y:Landroid/support/v7/widget/ActionMenuPresenter$e;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->a()V

    return v1

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->y:Landroid/support/v7/widget/ActionMenuPresenter$e;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public g()V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->r:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/view/menu/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lb/b/d/d/a;->a(Landroid/content/Context;)Lb/b/d/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/d/d/a;->c()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->q:I

    :cond_10
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->d:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->b(Z)V

    :cond_18
    return-void
.end method

.method public h()Z
    .registers 8

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->m:Z

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->f()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Landroid/support/v7/view/menu/b;->d:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_44

    iget-object v1, p0, Landroid/support/v7/view/menu/b;->i:Landroid/support/v7/view/menu/q;

    if-eqz v1, :cond_44

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->A:Landroid/support/v7/widget/ActionMenuPresenter$c;

    if-nez v1, :cond_44

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$e;

    iget-object v3, p0, Landroid/support/v7/view/menu/b;->c:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/view/menu/b;->d:Landroid/support/v7/view/menu/h;

    iget-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$d;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/widget/ActionMenuPresenter$e;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;Z)V

    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter$c;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$c;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$e;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->A:Landroid/support/v7/widget/ActionMenuPresenter$c;

    iget-object v0, p0, Landroid/support/v7/view/menu/b;->i:Landroid/support/v7/view/menu/q;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->A:Landroid/support/v7/widget/ActionMenuPresenter$c;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/view/menu/b;->a(Landroid/support/v7/view/menu/v;)Z

    const/4 v0, 0x1

    return v0

    :cond_44
    const/4 v0, 0x0

    return v0
.end method
