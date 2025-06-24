.class public Landroid/support/v7/widget/ActionMenuView;
.super Landroid/support/v7/widget/i0;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/h$b;
.implements Landroid/support/v7/view/menu/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuView$c;,
        Landroid/support/v7/widget/ActionMenuView$a;,
        Landroid/support/v7/widget/ActionMenuView$b;,
        Landroid/support/v7/widget/ActionMenuView$d;,
        Landroid/support/v7/widget/ActionMenuView$e;
    }
.end annotation


# instance fields
.field private A:I

.field B:Landroid/support/v7/widget/ActionMenuView$e;

.field private q:Landroid/support/v7/view/menu/h;

.field private r:Landroid/content/Context;

.field private s:I

.field private t:Z

.field private u:Landroid/support/v7/widget/ActionMenuPresenter;

.field private v:Landroid/support/v7/view/menu/p$a;

.field w:Landroid/support/v7/view/menu/h$a;

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/i0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/i0;->setBaselineAligned(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000  # 56.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->z:I

    const/high16 v1, 0x40800000  # 4.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->A:I

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->r:Landroid/content/Context;

    iput p2, p0, Landroid/support/v7/widget/ActionMenuView;->s:I

    return-void
.end method

.method static b(Landroid/view/View;IIII)I
    .registers 10

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView$c;

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    invoke-static {v1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    instance-of p4, p0, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz p4, :cond_1b

    move-object p4, p0

    check-cast p4, Landroid/support/v7/view/menu/ActionMenuItemView;

    goto :goto_1c

    :cond_1b
    const/4 p4, 0x0

    :goto_1c
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_28

    invoke-virtual {p4}, Landroid/support/v7/view/menu/ActionMenuItemView;->d()Z

    move-result p4

    if-eqz p4, :cond_28

    const/4 p4, 0x1

    goto :goto_29

    :cond_28
    const/4 p4, 0x0

    :goto_29
    const/4 v3, 0x2

    if-lez p2, :cond_4d

    if-eqz p4, :cond_30

    if-lt p2, v3, :cond_4d

    :cond_30
    mul-int p2, p2, p1

    const/high16 v4, -0x80000000

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p2, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    div-int v4, p2, p1

    rem-int/2addr p2, p1

    if-eqz p2, :cond_46

    add-int/lit8 v4, v4, 0x1

    :cond_46
    if-eqz p4, :cond_4b

    if-ge v4, v3, :cond_4b

    goto :goto_4e

    :cond_4b
    move v3, v4

    goto :goto_4e

    :cond_4d
    const/4 v3, 0x0

    :goto_4e
    iget-boolean p2, v0, Landroid/support/v7/widget/ActionMenuView$c;->c:Z

    if-nez p2, :cond_55

    if-eqz p4, :cond_55

    goto :goto_56

    :cond_55
    const/4 v1, 0x0

    :goto_56
    iput-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView$c;->f:Z

    iput v3, v0, Landroid/support/v7/widget/ActionMenuView$c;->d:I

    mul-int p1, p1, v3

    const/high16 p2, 0x40000000  # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->measure(II)V

    return v3
.end method


# virtual methods
.method public a(Landroid/support/v7/view/menu/h;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->q:Landroid/support/v7/view/menu/h;

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/p$a;Landroid/support/v7/view/menu/h$a;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->v:Landroid/support/v7/view/menu/p$a;

    iput-object p2, p0, Landroid/support/v7/widget/ActionMenuView;->w:Landroid/support/v7/view/menu/h$a;

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/k;)Z
    .registers 5

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->q:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v7/view/menu/h;->a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/p;I)Z

    move-result p1

    return p1
.end method

.method protected c(I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1f

    instance-of v3, v1, Landroid/support/v7/widget/ActionMenuView$a;

    if-eqz v3, :cond_1f

    check-cast v1, Landroid/support/v7/widget/ActionMenuView$a;

    invoke-interface {v1}, Landroid/support/v7/widget/ActionMenuView$a;->b()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1f
    if-lez p1, :cond_2c

    instance-of p1, v2, Landroid/support/v7/widget/ActionMenuView$a;

    if-eqz p1, :cond_2c

    check-cast v2, Landroid/support/v7/widget/ActionMenuView$a;

    invoke-interface {v2}, Landroid/support/v7/widget/ActionMenuView$a;->c()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2c
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    if-eqz p1, :cond_8

    instance-of p1, p1, Landroid/support/v7/widget/ActionMenuView$c;

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->c()Z

    :cond_7
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$c;
    .registers 3

    new-instance v0, Landroid/support/v7/widget/ActionMenuView$c;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/ActionMenuView$c;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/i0$a;->b:I

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/support/v7/widget/i0$a;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$c;
    .registers 4

    new-instance v0, Landroid/support/v7/widget/ActionMenuView$c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/ActionMenuView$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$c;
    .registers 3

    if-eqz p1, :cond_1c

    instance-of v0, p1, Landroid/support/v7/widget/ActionMenuView$c;

    if-eqz v0, :cond_e

    new-instance v0, Landroid/support/v7/widget/ActionMenuView$c;

    check-cast p1, Landroid/support/v7/widget/ActionMenuView$c;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ActionMenuView$c;-><init>(Landroid/support/v7/widget/ActionMenuView$c;)V

    goto :goto_13

    :cond_e
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$c;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ActionMenuView$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_13
    iget p1, v0, Landroid/support/v7/widget/i0$a;->b:I

    if-gtz p1, :cond_1b

    const/16 p1, 0x10

    iput p1, v0, Landroid/support/v7/widget/i0$a;->b:I

    :cond_1b
    return-object v0

    :cond_1c
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/i0$a;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/i0$a;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->q:Landroid/support/v7/view/menu/h;

    if-nez v0, :cond_43

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/support/v7/view/menu/h;

    invoke-direct {v1, v0}, Landroid/support/v7/view/menu/h;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->q:Landroid/support/v7/view/menu/h;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->q:Landroid/support/v7/view/menu/h;

    new-instance v2, Landroid/support/v7/widget/ActionMenuView$d;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/ActionMenuView$d;-><init>(Landroid/support/v7/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/h$a;)V

    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->c(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->v:Landroid/support/v7/view/menu/p$a;

    if-eqz v1, :cond_2d

    goto :goto_32

    :cond_2d
    new-instance v1, Landroid/support/v7/widget/ActionMenuView$b;

    invoke-direct {v1}, Landroid/support/v7/widget/ActionMenuView$b;-><init>()V

    :goto_32
    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/b;->a(Landroid/support/v7/view/menu/p$a;)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->q:Landroid/support/v7/view/menu/h;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->r:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/p;Landroid/content/Context;)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuView;)V

    :cond_43
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->q:Landroid/support/v7/view/menu/h;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->s:I

    return v0
.end method

.method public getWindowAnimations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()Landroid/support/v7/widget/ActionMenuView$c;
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView$c;->c:Z

    return-object v0
.end method

.method public i()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public j()Z
    .registers 5

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    iget-object v3, v0, Landroid/support/v7/widget/ActionMenuPresenter;->A:Landroid/support/v7/widget/ActionMenuPresenter$c;

    if-nez v3, :cond_13

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method public k()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->t:Z

    return v0
.end method

.method public m()Landroid/support/v7/view/menu/h;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->q:Landroid/support/v7/view/menu/h;

    return-object v0
.end method

.method public n()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->h()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz p1, :cond_1d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->f()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->e()Z

    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->h()Z

    :cond_1d
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->g()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 23

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView;->x:Z

    if-nez v1, :cond_a

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/i0;->onLayout(ZIIII)V

    return-void

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->getDividerWidth()I

    move-result v3

    sub-int v4, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/f1;->a(Landroid/view/View;)Z

    move-result v6

    move v10, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2b
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v5, v1, :cond_8f

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v11, :cond_3b

    goto :goto_8c

    :cond_3b
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/ActionMenuView$c;

    iget-boolean v14, v11, Landroid/support/v7/widget/ActionMenuView$c;->c:Z

    if-eqz v14, :cond_7b

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->c(I)Z

    move-result v14

    if-eqz v14, :cond_50

    add-int/2addr v8, v3

    :cond_50
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eqz v6, :cond_60

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v15

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v15, v11

    add-int v11, v15, v8

    goto :goto_70

    :cond_60
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v11, v15, v11

    sub-int v15, v11, v8

    :goto_70
    div-int/lit8 v16, v14, 0x2

    sub-int v7, v2, v16

    add-int/2addr v14, v7

    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v10, v8

    const/4 v8, 0x1

    goto :goto_8c

    :cond_7b
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v12

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v11

    sub-int/2addr v10, v7

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->c(I)Z

    move-result v7

    add-int/lit8 v9, v9, 0x1

    :goto_8c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_8f
    if-ne v1, v12, :cond_ae

    if-nez v8, :cond_ae

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v4, v6

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v2, v6

    add-int/2addr v3, v4

    add-int/2addr v5, v2

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_ae
    xor-int/lit8 v3, v8, 0x1

    sub-int/2addr v9, v3

    if-lez v9, :cond_b7

    div-int v7, v10, v9

    const/4 v3, 0x0

    goto :goto_b9

    :cond_b7
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_b9
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v6, :cond_fc

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    :goto_c8
    if-ge v3, v1, :cond_135

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/ActionMenuView$c;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_f9

    iget-boolean v8, v7, Landroid/support/v7/widget/ActionMenuView$c;->c:Z

    if-eqz v8, :cond_df

    goto :goto_f9

    :cond_df
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    sub-int v12, v5, v8

    add-int/2addr v9, v10

    invoke-virtual {v6, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v6

    add-int/2addr v8, v4

    sub-int/2addr v5, v8

    :cond_f9
    :goto_f9
    add-int/lit8 v3, v3, 0x1

    goto :goto_c8

    :cond_fc
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    :goto_100
    if-ge v3, v1, :cond_135

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/ActionMenuView$c;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_132

    iget-boolean v8, v7, Landroid/support/v7/widget/ActionMenuView$c;->c:Z

    if-eqz v8, :cond_117

    goto :goto_132

    :cond_117
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    add-int v12, v5, v8

    add-int/2addr v9, v10

    invoke-virtual {v6, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v6

    add-int/2addr v8, v4

    add-int/2addr v8, v5

    move v5, v8

    :cond_132
    :goto_132
    add-int/lit8 v3, v3, 0x1

    goto :goto_100

    :cond_135
    return-void
.end method

.method protected onMeasure(II)V
    .registers 33

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView;->x:Z

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    iput-boolean v2, v0, Landroid/support/v7/widget/ActionMenuView;->x:Z

    iget-boolean v2, v0, Landroid/support/v7/widget/ActionMenuView;->x:Z

    if-eq v1, v2, :cond_19

    iput v4, v0, Landroid/support/v7/widget/ActionMenuView;->y:I

    :cond_19
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-boolean v2, v0, Landroid/support/v7/widget/ActionMenuView;->x:Z

    if-eqz v2, :cond_2e

    iget-object v2, v0, Landroid/support/v7/widget/ActionMenuView;->q:Landroid/support/v7/view/menu/h;

    if-eqz v2, :cond_2e

    iget v6, v0, Landroid/support/v7/widget/ActionMenuView;->y:I

    if-eq v1, v6, :cond_2e

    iput v1, v0, Landroid/support/v7/widget/ActionMenuView;->y:I

    invoke-virtual {v2, v5}, Landroid/support/v7/view/menu/h;->b(Z)V

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-boolean v2, v0, Landroid/support/v7/widget/ActionMenuView;->x:Z

    if-eqz v2, :cond_2ae

    if-lez v1, :cond_2ae

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    add-int/2addr v9, v7

    const/4 v7, -0x2

    move/from16 v10, p2

    invoke-static {v10, v9, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    sub-int/2addr v2, v8

    iget v8, v0, Landroid/support/v7/widget/ActionMenuView;->z:I

    div-int v10, v2, v8

    rem-int v11, v2, v8

    if-nez v10, :cond_6b

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto/16 :goto_2c8

    :cond_6b
    div-int/2addr v11, v10

    add-int/2addr v11, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move/from16 v16, v10

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    :goto_7c
    if-ge v10, v8, :cond_f6

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v4, 0x8

    if-ne v5, v4, :cond_8d

    move/from16 v20, v6

    goto :goto_ef

    :cond_8d
    instance-of v4, v13, Landroid/support/v7/view/menu/ActionMenuItemView;

    add-int/lit8 v15, v15, 0x1

    if-eqz v4, :cond_9c

    iget v5, v0, Landroid/support/v7/widget/ActionMenuView;->A:I

    move/from16 v20, v6

    const/4 v6, 0x0

    invoke-virtual {v13, v5, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_9f

    :cond_9c
    move/from16 v20, v6

    const/4 v6, 0x0

    :goto_9f
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/ActionMenuView$c;

    iput-boolean v6, v5, Landroid/support/v7/widget/ActionMenuView$c;->h:Z

    iput v6, v5, Landroid/support/v7/widget/ActionMenuView$c;->e:I

    iput v6, v5, Landroid/support/v7/widget/ActionMenuView$c;->d:I

    iput-boolean v6, v5, Landroid/support/v7/widget/ActionMenuView$c;->f:Z

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v4, :cond_be

    move-object v4, v13

    check-cast v4, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/ActionMenuItemView;->d()Z

    move-result v4

    if-eqz v4, :cond_be

    const/4 v4, 0x1

    goto :goto_bf

    :cond_be
    const/4 v4, 0x0

    :goto_bf
    iput-boolean v4, v5, Landroid/support/v7/widget/ActionMenuView$c;->g:Z

    iget-boolean v4, v5, Landroid/support/v7/widget/ActionMenuView$c;->c:Z

    if-eqz v4, :cond_c7

    const/4 v4, 0x1

    goto :goto_c9

    :cond_c7
    move/from16 v4, v16

    :goto_c9
    invoke-static {v13, v11, v4, v7, v9}, Landroid/support/v7/widget/ActionMenuView;->b(Landroid/view/View;IIII)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-boolean v6, v5, Landroid/support/v7/widget/ActionMenuView$c;->f:Z

    if-eqz v6, :cond_d7

    add-int/lit8 v17, v17, 0x1

    :cond_d7
    iget-boolean v5, v5, Landroid/support/v7/widget/ActionMenuView$c;->c:Z

    if-eqz v5, :cond_dc

    const/4 v14, 0x1

    :cond_dc
    sub-int v16, v16, v4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x1

    if-ne v4, v6, :cond_ee

    shl-int v4, v6, v10

    int-to-long v12, v4

    or-long v18, v18, v12

    :cond_ee
    move v12, v5

    :goto_ef
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v20

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_7c

    :cond_f6
    move/from16 v20, v6

    const/4 v4, 0x2

    if-eqz v14, :cond_ff

    if-ne v15, v4, :cond_ff

    const/4 v5, 0x1

    goto :goto_100

    :cond_ff
    const/4 v5, 0x0

    :goto_100
    move/from16 v6, v16

    const/4 v9, 0x0

    :goto_103
    if-lez v17, :cond_1b2

    if-lez v6, :cond_1b2

    const v10, 0x7fffffff

    const v4, 0x7fffffff

    const/4 v10, 0x0

    const/4 v13, 0x0

    const-wide/16 v21, 0x0

    :goto_111
    if-ge v10, v8, :cond_154

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    move/from16 v24, v9

    move-object/from16 v9, v23

    check-cast v9, Landroid/support/v7/widget/ActionMenuView$c;

    move/from16 v23, v12

    iget-boolean v12, v9, Landroid/support/v7/widget/ActionMenuView$c;->f:Z

    if-nez v12, :cond_12b

    :cond_127
    move v9, v1

    move/from16 v25, v2

    goto :goto_14a

    :cond_12b
    iget v9, v9, Landroid/support/v7/widget/ActionMenuView$c;->d:I

    if-ge v9, v4, :cond_13b

    const/4 v12, 0x1

    shl-int v4, v12, v10

    int-to-long v12, v4

    move/from16 v25, v2

    move v4, v9

    move-wide/from16 v21, v12

    const/4 v13, 0x1

    move v9, v1

    goto :goto_14a

    :cond_13b
    if-ne v9, v4, :cond_127

    const/4 v9, 0x1

    shl-int v12, v9, v10

    move v9, v1

    move/from16 v25, v2

    int-to-long v1, v12

    or-long v1, v21, v1

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v21, v1

    :goto_14a
    add-int/lit8 v10, v10, 0x1

    move v1, v9

    move/from16 v12, v23

    move/from16 v9, v24

    move/from16 v2, v25

    goto :goto_111

    :cond_154
    move/from16 v25, v2

    move/from16 v24, v9

    move/from16 v23, v12

    move v9, v1

    or-long v18, v18, v21

    if-le v13, v6, :cond_160

    goto :goto_1b9

    :cond_160
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    :goto_163
    if-ge v1, v8, :cond_1a9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/ActionMenuView$c;

    const/4 v12, 0x1

    shl-int v13, v12, v1

    int-to-long v12, v13

    and-long v26, v21, v12

    const-wide/16 v28, 0x0

    cmp-long v24, v26, v28

    if-nez v24, :cond_184

    iget v2, v10, Landroid/support/v7/widget/ActionMenuView$c;->d:I

    if-ne v2, v4, :cond_181

    or-long v18, v18, v12

    :cond_181
    move/from16 v24, v4

    goto :goto_1a4

    :cond_184
    if-eqz v5, :cond_198

    iget-boolean v12, v10, Landroid/support/v7/widget/ActionMenuView$c;->g:Z

    if-eqz v12, :cond_198

    const/4 v12, 0x1

    if-ne v6, v12, :cond_198

    iget v13, v0, Landroid/support/v7/widget/ActionMenuView;->A:I

    add-int v12, v13, v11

    move/from16 v24, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v12, v4, v13, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_19a

    :cond_198
    move/from16 v24, v4

    :goto_19a
    iget v2, v10, Landroid/support/v7/widget/ActionMenuView$c;->d:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v10, Landroid/support/v7/widget/ActionMenuView$c;->d:I

    iput-boolean v4, v10, Landroid/support/v7/widget/ActionMenuView$c;->h:Z

    add-int/lit8 v6, v6, -0x1

    :goto_1a4
    add-int/lit8 v1, v1, 0x1

    move/from16 v4, v24

    goto :goto_163

    :cond_1a9
    move v1, v9

    move/from16 v12, v23

    move/from16 v2, v25

    const/4 v4, 0x2

    const/4 v9, 0x1

    goto/16 :goto_103

    :cond_1b2
    move/from16 v25, v2

    move/from16 v24, v9

    move/from16 v23, v12

    move v9, v1

    :goto_1b9
    const/4 v1, 0x1

    if-nez v14, :cond_1c0

    if-ne v15, v1, :cond_1c0

    const/4 v2, 0x1

    goto :goto_1c1

    :cond_1c0
    const/4 v2, 0x0

    :goto_1c1
    if-lez v6, :cond_274

    const-wide/16 v4, 0x0

    cmp-long v10, v18, v4

    if-eqz v10, :cond_274

    sub-int/2addr v15, v1

    if-lt v6, v15, :cond_1d0

    if-nez v2, :cond_1d0

    if-le v3, v1, :cond_274

    :cond_1d0
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    int-to-float v1, v1

    if-nez v2, :cond_210

    const-wide/16 v2, 0x1

    and-long v2, v18, v2

    const/high16 v4, 0x3f000000  # 0.5f

    const-wide/16 v12, 0x0

    cmp-long v5, v2, v12

    if-eqz v5, :cond_1f3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActionMenuView$c;

    iget-boolean v2, v2, Landroid/support/v7/widget/ActionMenuView$c;->g:Z

    if-nez v2, :cond_1f3

    sub-float/2addr v1, v4

    :cond_1f3
    add-int/lit8 v2, v8, -0x1

    const/4 v3, 0x1

    shl-int v5, v3, v2

    int-to-long v12, v5

    and-long v12, v18, v12

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-eqz v3, :cond_210

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActionMenuView$c;

    iget-boolean v2, v2, Landroid/support/v7/widget/ActionMenuView$c;->g:Z

    if-nez v2, :cond_210

    sub-float/2addr v1, v4

    :cond_210
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_21b

    mul-int v6, v6, v11

    int-to-float v2, v6

    div-float/2addr v2, v1

    float-to-int v4, v2

    goto :goto_21c

    :cond_21b
    const/4 v4, 0x0

    :goto_21c
    move/from16 v5, v24

    const/4 v1, 0x0

    :goto_21f
    if-ge v1, v8, :cond_276

    const/4 v2, 0x1

    shl-int v3, v2, v1

    int-to-long v2, v3

    and-long v2, v18, v2

    const-wide/16 v12, 0x0

    cmp-long v6, v2, v12

    if-nez v6, :cond_230

    const/4 v6, 0x1

    const/4 v10, 0x2

    goto :goto_271

    :cond_230
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ActionMenuView$c;

    instance-of v2, v2, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v2, :cond_251

    iput v4, v3, Landroid/support/v7/widget/ActionMenuView$c;->e:I

    const/4 v2, 0x1

    iput-boolean v2, v3, Landroid/support/v7/widget/ActionMenuView$c;->h:Z

    if-nez v1, :cond_24e

    iget-boolean v2, v3, Landroid/support/v7/widget/ActionMenuView$c;->g:Z

    if-nez v2, :cond_24e

    neg-int v2, v4

    const/4 v5, 0x2

    div-int/2addr v2, v5

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_24e
    const/4 v6, 0x1

    const/4 v10, 0x2

    goto :goto_25f

    :cond_251
    iget-boolean v2, v3, Landroid/support/v7/widget/ActionMenuView$c;->c:Z

    if-eqz v2, :cond_261

    iput v4, v3, Landroid/support/v7/widget/ActionMenuView$c;->e:I

    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/support/v7/widget/ActionMenuView$c;->h:Z

    neg-int v2, v4

    const/4 v10, 0x2

    div-int/2addr v2, v10

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_25f
    const/4 v5, 0x1

    goto :goto_271

    :cond_261
    const/4 v6, 0x1

    const/4 v10, 0x2

    if-eqz v1, :cond_269

    div-int/lit8 v2, v4, 0x2

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_269
    add-int/lit8 v2, v8, -0x1

    if-eq v1, v2, :cond_271

    div-int/lit8 v2, v4, 0x2

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_271
    :goto_271
    add-int/lit8 v1, v1, 0x1

    goto :goto_21f

    :cond_274
    move/from16 v5, v24

    :cond_276
    if-eqz v5, :cond_29f

    const/4 v1, 0x0

    :goto_279
    if-ge v1, v8, :cond_29f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ActionMenuView$c;

    iget-boolean v4, v3, Landroid/support/v7/widget/ActionMenuView$c;->h:Z

    if-nez v4, :cond_28c

    const/high16 v3, 0x40000000  # 2.0f

    goto :goto_29c

    :cond_28c
    iget v4, v3, Landroid/support/v7/widget/ActionMenuView$c;->d:I

    mul-int v4, v4, v11

    iget v3, v3, Landroid/support/v7/widget/ActionMenuView$c;->e:I

    add-int/2addr v4, v3

    const/high16 v3, 0x40000000  # 2.0f

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v4, v7}, Landroid/view/View;->measure(II)V

    :goto_29c
    add-int/lit8 v1, v1, 0x1

    goto :goto_279

    :cond_29f
    const/high16 v3, 0x40000000  # 2.0f

    if-eq v9, v3, :cond_2a6

    move/from16 v1, v23

    goto :goto_2a8

    :cond_2a6
    move/from16 v1, v20

    :goto_2a8
    move/from16 v2, v25

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_2c8

    :cond_2ae
    move/from16 v10, p2

    const/4 v2, 0x0

    :goto_2b1
    if-ge v2, v1, :cond_2c5

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ActionMenuView$c;

    const/4 v4, 0x0

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b1

    :cond_2c5
    invoke-super/range {p0 .. p2}, Landroid/support/v7/widget/i0;->onMeasure(II)V

    :goto_2c8
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->b(Z)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$e;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->B:Landroid/support/v7/widget/ActionMenuView$e;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuView;->t:Z

    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4

    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->s:I

    if-eq v0, p1, :cond_1a

    iput p1, p0, Landroid/support/v7/widget/ActionMenuView;->s:I

    if-nez p1, :cond_f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->r:Landroid/content/Context;

    goto :goto_1a

    :cond_f
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->r:Landroid/content/Context;

    :cond_1a
    :goto_1a
    return-void
.end method

.method public setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->u:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuView;)V

    return-void
.end method
