.class Landroid/support/v7/widget/f0;
.super Landroid/support/v7/widget/m0;
.source "DropDownListView.java"


# instance fields
.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Landroid/support/v4/view/q;

.field private n:Landroid/support/v4/widget/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    sget v0, Lb/b/d/a/a;->dropDownListViewStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/m0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean p2, p0, Landroid/support/v7/widget/f0;->k:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;I)Z
    .registers 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_18

    const/4 v3, 0x2

    if-eq v0, v3, :cond_16

    const/4 p2, 0x3

    if-eq v0, p2, :cond_12

    :cond_e
    :goto_e
    const/4 p2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_a4

    :cond_12
    :goto_12
    const/4 p2, 0x0

    const/4 v3, 0x0

    goto/16 :goto_a4

    :cond_16
    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_20

    goto :goto_12

    :cond_20
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, v4, p2}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_33

    const/4 p2, 0x1

    goto :goto_a4

    :cond_33
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    int-to-float v4, v4

    int-to-float p2, p2

    iput-boolean v2, p0, Landroid/support/v7/widget/f0;->l:Z

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_4a

    invoke-virtual {p0, v4, p2}, Landroid/widget/ListView;->drawableHotspotChanged(FF)V

    :cond_4a
    invoke-virtual {p0}, Landroid/widget/ListView;->isPressed()Z

    move-result v7

    if-nez v7, :cond_53

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setPressed(Z)V

    :cond_53
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    iget v7, p0, Landroid/support/v7/widget/m0;->g:I

    if-eq v7, v6, :cond_70

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v7, v6

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_70

    if-eq v6, v3, :cond_70

    invoke-virtual {v6}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_70

    invoke-virtual {v6, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_70
    iput v5, p0, Landroid/support/v7/widget/m0;->g:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v4, v6

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, p2, v7

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v8, :cond_87

    invoke-virtual {v3, v6, v7}, Landroid/view/View;->drawableHotspotChanged(FF)V

    :cond_87
    invoke-virtual {v3}, Landroid/view/View;->isPressed()Z

    move-result v6

    if-nez v6, :cond_90

    invoke-virtual {v3, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_90
    invoke-virtual {p0, v5, v3, v4, p2}, Landroid/support/v7/widget/m0;->a(ILandroid/view/View;FF)V

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/m0;->setSelectorEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/ListView;->refreshDrawableState()V

    if-ne v0, v2, :cond_e

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    invoke-virtual {p0, v3, v5, v6, v7}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    goto/16 :goto_e

    :goto_a4
    if-eqz v3, :cond_a8

    if-eqz p2, :cond_ca

    :cond_a8
    iput-boolean v1, p0, Landroid/support/v7/widget/f0;->l:Z

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/m0;->drawableStateChanged()V

    iget p2, p0, Landroid/support/v7/widget/m0;->g:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_c0

    invoke-virtual {p2, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_c0
    iget-object p2, p0, Landroid/support/v7/widget/f0;->m:Landroid/support/v4/view/q;

    if-eqz p2, :cond_ca

    invoke-virtual {p2}, Landroid/support/v4/view/q;->a()V

    const/4 p2, 0x0

    iput-object p2, p0, Landroid/support/v7/widget/f0;->m:Landroid/support/v4/view/q;

    :cond_ca
    if-eqz v3, :cond_e2

    iget-object p2, p0, Landroid/support/v7/widget/f0;->n:Landroid/support/v4/widget/h;

    if-nez p2, :cond_d7

    new-instance p2, Landroid/support/v4/widget/h;

    invoke-direct {p2, p0}, Landroid/support/v4/widget/h;-><init>(Landroid/widget/ListView;)V

    iput-object p2, p0, Landroid/support/v7/widget/f0;->n:Landroid/support/v4/widget/h;

    :cond_d7
    iget-object p2, p0, Landroid/support/v7/widget/f0;->n:Landroid/support/v4/widget/h;

    invoke-virtual {p2, v2}, Landroid/support/v4/widget/a;->a(Z)Landroid/support/v4/widget/a;

    iget-object p2, p0, Landroid/support/v7/widget/f0;->n:Landroid/support/v4/widget/h;

    invoke-virtual {p2, p0, p1}, Landroid/support/v4/widget/a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_e9

    :cond_e2
    iget-object p1, p0, Landroid/support/v7/widget/f0;->n:Landroid/support/v4/widget/h;

    if-eqz p1, :cond_e9

    invoke-virtual {p1, v1}, Landroid/support/v4/widget/a;->a(Z)Landroid/support/v4/widget/a;

    :cond_e9
    :goto_e9
    return v3
.end method

.method protected b()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/f0;->l:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/support/v7/widget/m0;->b()Z

    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public hasFocus()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/f0;->k:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public hasWindowFocus()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/f0;->k:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isFocused()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/f0;->k:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isInTouchMode()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/f0;->k:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/widget/f0;->j:Z

    if-nez v0, :cond_e

    :cond_8
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method setListSelectionHidden(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/widget/f0;->j:Z

    return-void
.end method
