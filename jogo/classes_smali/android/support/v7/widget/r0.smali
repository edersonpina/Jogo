.class public Landroid/support/v7/widget/r0;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/r0$c;,
        Landroid/support/v7/widget/r0$b;,
        Landroid/support/v7/widget/r0$d;
    }
.end annotation


# instance fields
.field b:Ljava/lang/Runnable;

.field private c:Landroid/support/v7/widget/r0$c;

.field d:Landroid/support/v7/widget/i0;

.field private e:Landroid/widget/Spinner;

.field private f:Z

.field g:I

.field h:I

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method

.method private a()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/r0;->e:Landroid/widget/Spinner;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private b()Z
    .registers 6

    iget-object v0, p0, Landroid/support/v7/widget/r0;->e:Landroid/widget/Spinner;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_11

    return v1

    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/r0;->e:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/widget/r0;->d:Landroid/support/v7/widget/i0;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/widget/r0;->e:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/r0;->setTabSelected(I)V

    return v1
.end method


# virtual methods
.method a(Landroid/support/v7/app/a$c;Z)Landroid/support/v7/widget/r0$d;
    .registers 5

    new-instance v0, Landroid/support/v7/widget/r0$d;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/support/v7/widget/r0$d;-><init>(Landroid/support/v7/widget/r0;Landroid/content/Context;Landroid/support/v7/app/a$c;Z)V

    if-eqz p2, :cond_1b

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    const/4 p2, -0x1

    iget v1, p0, Landroid/support/v7/widget/r0;->i:I

    invoke-direct {p1, p2, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2f

    :cond_1b
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/r0;->c:Landroid/support/v7/widget/r0$c;

    if-nez p1, :cond_2a

    new-instance p1, Landroid/support/v7/widget/r0$c;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/r0$c;-><init>(Landroid/support/v7/widget/r0;)V

    iput-object p1, p0, Landroid/support/v7/widget/r0;->c:Landroid/support/v7/widget/r0$c;

    :cond_2a
    iget-object p1, p0, Landroid/support/v7/widget/r0;->c:Landroid/support/v7/widget/r0$c;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2f
    return-object v0
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/r0;->d:Landroid/support/v7/widget/i0;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/widget/r0;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_d
    new-instance v0, Landroid/support/v7/widget/r0$a;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/r0$a;-><init>(Landroid/support/v7/widget/r0;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/r0;->b:Ljava/lang/Runnable;

    iget-object p1, p0, Landroid/support/v7/widget/r0;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/support/v7/widget/r0;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lb/b/d/d/a;->a(Landroid/content/Context;)Lb/b/d/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/d/d/a;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/r0;->setContentHeight(I)V

    invoke-virtual {p1}, Lb/b/d/d/a;->d()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/r0;->h:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/widget/r0;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    check-cast p2, Landroid/support/v7/widget/r0$d;

    invoke-virtual {p2}, Landroid/support/v7/widget/r0$d;->g()Landroid/support/v7/app/a$c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/a$c;->e()V

    return-void
.end method

.method public onMeasure(II)V
    .registers 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x40000000  # 2.0f

    if-ne p2, v2, :cond_c

    const/4 v3, 0x1

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    :goto_d
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    iget-object v4, p0, Landroid/support/v7/widget/r0;->d:Landroid/support/v7/widget/i0;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v0, :cond_42

    if-eq p2, v2, :cond_1f

    const/high16 v6, -0x80000000

    if-ne p2, v6, :cond_42

    :cond_1f
    const/4 p2, 0x2

    if-le v4, p2, :cond_30

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    const v4, 0x3ecccccd  # 0.4f

    mul-float p2, p2, v4

    float-to-int p2, p2

    iput p2, p0, Landroid/support/v7/widget/r0;->g:I

    goto :goto_37

    :cond_30
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    div-int/2addr v4, p2

    iput v4, p0, Landroid/support/v7/widget/r0;->g:I

    :goto_37
    iget p2, p0, Landroid/support/v7/widget/r0;->g:I

    iget v4, p0, Landroid/support/v7/widget/r0;->h:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/r0;->g:I

    goto :goto_44

    :cond_42
    iput v5, p0, Landroid/support/v7/widget/r0;->g:I

    :goto_44
    iget p2, p0, Landroid/support/v7/widget/r0;->i:I

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    if-nez v3, :cond_51

    iget-boolean v2, p0, Landroid/support/v7/widget/r0;->f:Z

    if-eqz v2, :cond_51

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    if-eqz v0, :cond_c0

    iget-object v0, p0, Landroid/support/v7/widget/r0;->d:Landroid/support/v7/widget/i0;

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v0, p0, Landroid/support/v7/widget/r0;->d:Landroid/support/v7/widget/i0;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-le v0, v1, :cond_bc

    invoke-direct {p0}, Landroid/support/v7/widget/r0;->a()Z

    move-result v0

    if-eqz v0, :cond_6c

    goto :goto_c3

    :cond_6c
    iget-object v0, p0, Landroid/support/v7/widget/r0;->e:Landroid/widget/Spinner;

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-nez v0, :cond_8a

    new-instance v0, Landroid/support/v7/widget/x;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lb/b/d/a/a;->actionDropDownStyle:I

    invoke-direct {v0, v4, v1, v6}, Landroid/support/v7/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v4, Landroid/support/v7/widget/i0$a;

    invoke-direct {v4, v2, v5}, Landroid/support/v7/widget/i0$a;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iput-object v0, p0, Landroid/support/v7/widget/r0;->e:Landroid/widget/Spinner;

    :cond_8a
    iget-object v0, p0, Landroid/support/v7/widget/r0;->d:Landroid/support/v7/widget/i0;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/widget/r0;->e:Landroid/widget/Spinner;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/widget/r0;->e:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_ab

    iget-object v0, p0, Landroid/support/v7/widget/r0;->e:Landroid/widget/Spinner;

    new-instance v2, Landroid/support/v7/widget/r0$b;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/r0$b;-><init>(Landroid/support/v7/widget/r0;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_ab
    iget-object v0, p0, Landroid/support/v7/widget/r0;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_b4

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Landroid/support/v7/widget/r0;->b:Ljava/lang/Runnable;

    :cond_b4
    iget-object v0, p0, Landroid/support/v7/widget/r0;->e:Landroid/widget/Spinner;

    iget v1, p0, Landroid/support/v7/widget/r0;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_c3

    :cond_bc
    invoke-direct {p0}, Landroid/support/v7/widget/r0;->b()Z

    goto :goto_c3

    :cond_c0
    invoke-direct {p0}, Landroid/support/v7/widget/r0;->b()Z

    :goto_c3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result p1

    if-eqz v3, :cond_d7

    if-eq v0, p1, :cond_d7

    iget p1, p0, Landroid/support/v7/widget/r0;->j:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/r0;->setTabSelected(I)V

    :cond_d7
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public setAllowCollapse(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/widget/r0;->f:Z

    return-void
.end method

.method public setContentHeight(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/widget/r0;->i:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setTabSelected(I)V
    .registers 7

    iput p1, p0, Landroid/support/v7/widget/r0;->j:I

    iget-object v0, p0, Landroid/support/v7/widget/r0;->d:Landroid/support/v7/widget/i0;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_22

    iget-object v3, p0, Landroid/support/v7/widget/r0;->d:Landroid/support/v7/widget/i0;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_16

    const/4 v4, 0x1

    goto :goto_17

    :cond_16
    const/4 v4, 0x0

    :goto_17
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_1f

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/r0;->a(I)V

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_22
    iget-object v0, p0, Landroid/support/v7/widget/r0;->e:Landroid/widget/Spinner;

    if-eqz v0, :cond_2b

    if-ltz p1, :cond_2b

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_2b
    return-void
.end method
