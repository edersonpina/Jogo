.class public Landroid/support/v7/widget/i0;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/i0$a;
    }
.end annotation


# instance fields
.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:Z

.field private j:[I

.field private k:[I

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:I

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/i0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/i0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/i0;->b:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/i0;->c:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/widget/i0;->d:I

    const v3, 0x800033

    iput v3, p0, Landroid/support/v7/widget/i0;->f:I

    sget-object v3, Lb/b/d/a/j;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v2}, Landroid/support/v7/widget/y0;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/y0;

    move-result-object p1

    sget p2, Lb/b/d/a/j;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/y0;->d(II)I

    move-result p2

    if-ltz p2, :cond_22

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/i0;->setOrientation(I)V

    :cond_22
    sget p2, Lb/b/d/a/j;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/y0;->d(II)I

    move-result p2

    if-ltz p2, :cond_2d

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/i0;->setGravity(I)V

    :cond_2d
    sget p2, Lb/b/d/a/j;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/y0;->a(IZ)Z

    move-result p2

    if-nez p2, :cond_38

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/i0;->setBaselineAligned(Z)V

    :cond_38
    sget p2, Lb/b/d/a/j;->LinearLayoutCompat_android_weightSum:I

    const/high16 p3, -0x40800000  # -1.0f

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/y0;->a(IF)F

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/i0;->h:F

    sget p2, Lb/b/d/a/j;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/y0;->d(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/i0;->c:I

    sget p2, Lb/b/d/a/j;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {p1, p2, v2}, Landroid/support/v7/widget/y0;->a(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/widget/i0;->i:Z

    sget p2, Lb/b/d/a/j;->LinearLayoutCompat_divider:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/y0;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/i0;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p2, Lb/b/d/a/j;->LinearLayoutCompat_showDividers:I

    invoke-virtual {p1, p2, v2}, Landroid/support/v7/widget/y0;->d(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/i0;->o:I

    sget p2, Lb/b/d/a/j;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {p1, p2, v2}, Landroid/support/v7/widget/y0;->c(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/i0;->p:I

    invoke-virtual {p1}, Landroid/support/v7/widget/y0;->a()V

    return-void
.end method

.method private c(II)V
    .registers 13

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p1, :cond_3a

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/i0;->a(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_37

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/support/v7/widget/i0$a;

    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_37

    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3a
    return-void
.end method

.method private d(II)V
    .registers 13

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p1, :cond_3a

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/i0;->a(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_37

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/support/v7/widget/i0$a;

    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_37

    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3a
    return-void
.end method


# virtual methods
.method a(I)Landroid/view/View;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method a(II)V
    .registers 41

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    const/4 v9, 0x0

    iput v9, v6, Landroid/support/v7/widget/i0;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->getVirtualChildCount()I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    iget-object v0, v6, Landroid/support/v7/widget/i0;->j:[I

    const/4 v13, 0x4

    if-eqz v0, :cond_1e

    iget-object v0, v6, Landroid/support/v7/widget/i0;->k:[I

    if-nez v0, :cond_26

    :cond_1e
    new-array v0, v13, [I

    iput-object v0, v6, Landroid/support/v7/widget/i0;->j:[I

    new-array v0, v13, [I

    iput-object v0, v6, Landroid/support/v7/widget/i0;->k:[I

    :cond_26
    iget-object v14, v6, Landroid/support/v7/widget/i0;->j:[I

    iget-object v15, v6, Landroid/support/v7/widget/i0;->k:[I

    const/16 v16, 0x3

    const/4 v5, -0x1

    aput v5, v14, v16

    const/16 v17, 0x2

    aput v5, v14, v17

    const/16 v18, 0x1

    aput v5, v14, v18

    aput v5, v14, v9

    aput v5, v15, v16

    aput v5, v15, v17

    aput v5, v15, v18

    aput v5, v15, v9

    iget-boolean v4, v6, Landroid/support/v7/widget/i0;->b:Z

    iget-boolean v3, v6, Landroid/support/v7/widget/i0;->i:Z

    const/high16 v2, 0x40000000  # 2.0f

    if-ne v11, v2, :cond_4c

    const/16 v19, 0x1

    goto :goto_4e

    :cond_4c
    const/16 v19, 0x0

    :goto_4e
    const/16 v20, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v13, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x0

    :goto_61
    const/16 v5, 0x8

    if-ge v1, v10, :cond_1f9

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/i0;->a(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_7b

    iget v5, v6, Landroid/support/v7/widget/i0;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->f()I

    move-result v9

    add-int/2addr v5, v9

    iput v5, v6, Landroid/support/v7/widget/i0;->g:I

    :goto_74
    move/from16 v37, v3

    move/from16 v30, v4

    const/4 v2, -0x1

    goto/16 :goto_1e9

    :cond_7b
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_87

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->c()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_74

    :cond_87
    invoke-virtual {v6, v1}, Landroid/support/v7/widget/i0;->b(I)Z

    move-result v2

    if-eqz v2, :cond_94

    iget v2, v6, Landroid/support/v7/widget/i0;->g:I

    iget v5, v6, Landroid/support/v7/widget/i0;->m:I

    add-int/2addr v2, v5

    iput v2, v6, Landroid/support/v7/widget/i0;->g:I

    :cond_94
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/support/v7/widget/i0$a;

    iget v2, v5, Landroid/support/v7/widget/i0$a;->a:F

    add-float v33, v0, v2

    const/high16 v2, 0x40000000  # 2.0f

    if-ne v11, v2, :cond_ec

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v0, :cond_ec

    iget v0, v5, Landroid/support/v7/widget/i0$a;->a:F

    cmpl-float v0, v0, v20

    if-lez v0, :cond_ec

    if-eqz v19, :cond_bc

    iget v0, v6, Landroid/support/v7/widget/i0;->g:I

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v34, v1

    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    iput v2, v6, Landroid/support/v7/widget/i0;->g:I

    goto :goto_cc

    :cond_bc
    move/from16 v34, v1

    iget v0, v6, Landroid/support/v7/widget/i0;->g:I

    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Landroid/support/v7/widget/i0;->g:I

    :goto_cc
    if-eqz v4, :cond_df

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v9, v1, v1}, Landroid/view/View;->measure(II)V

    move/from16 v37, v3

    move/from16 v30, v4

    move-object v8, v5

    const/16 v29, -0x2

    goto/16 :goto_160

    :cond_df
    move/from16 v37, v3

    move/from16 v30, v4

    move-object v8, v5

    const/high16 v1, 0x40000000  # 2.0f

    const/16 v24, 0x1

    const/16 v29, -0x2

    goto/16 :goto_162

    :cond_ec
    move/from16 v34, v1

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v0, :cond_fd

    iget v0, v5, Landroid/support/v7/widget/i0$a;->a:F

    cmpl-float v0, v0, v20

    if-lez v0, :cond_fd

    const/4 v2, -0x2

    iput v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v1, 0x0

    goto :goto_100

    :cond_fd
    const/4 v2, -0x2

    const/high16 v1, -0x80000000

    :goto_100
    cmpl-float v0, v33, v20

    if-nez v0, :cond_109

    iget v0, v6, Landroid/support/v7/widget/i0;->g:I

    move/from16 v30, v0

    goto :goto_10b

    :cond_109
    const/16 v30, 0x0

    :goto_10b
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v36, v1

    move-object v1, v9

    const/16 v32, -0x2

    move/from16 v2, p1

    move/from16 v37, v3

    move/from16 v3, v30

    move/from16 v30, v4

    move/from16 v4, p2

    move-object v8, v5

    const/high16 v7, -0x80000000

    const/16 v29, -0x2

    move/from16 v5, v35

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/i0;->a(Landroid/view/View;IIII)V

    move/from16 v0, v36

    if-eq v0, v7, :cond_12e

    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_12e
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v19, :cond_145

    iget v1, v6, Landroid/support/v7/widget/i0;->g:I

    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->e()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    iput v2, v6, Landroid/support/v7/widget/i0;->g:I

    goto :goto_15a

    :cond_145
    iget v1, v6, Landroid/support/v7/widget/i0;->g:I

    add-int v2, v1, v0

    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->e()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Landroid/support/v7/widget/i0;->g:I

    :goto_15a
    if-eqz v37, :cond_160

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_160
    :goto_160
    const/high16 v1, 0x40000000  # 2.0f

    :goto_162
    if-eq v12, v1, :cond_16d

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_16e

    const/4 v0, 0x1

    const/16 v28, 0x1

    goto :goto_16f

    :cond_16d
    const/4 v2, -0x1

    :cond_16e
    const/4 v0, 0x0

    :goto_16f
    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v7, v26

    invoke-static {v7, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    if-eqz v30, :cond_1ad

    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v7

    if-eq v7, v2, :cond_1ad

    iget v9, v8, Landroid/support/v7/widget/i0$a;->b:I

    if-gez v9, :cond_191

    iget v9, v6, Landroid/support/v7/widget/i0;->f:I

    :cond_191
    and-int/lit8 v9, v9, 0x70

    const/16 v25, 0x4

    shr-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, -0x2

    shr-int/lit8 v9, v9, 0x1

    aget v1, v14, v9

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v14, v9

    aget v1, v15, v9

    sub-int v7, v4, v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v15, v9

    :cond_1ad
    move/from16 v9, v21

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v27, :cond_1bb

    iget v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v7, v2, :cond_1bb

    const/4 v7, 0x1

    goto :goto_1bc

    :cond_1bb
    const/4 v7, 0x0

    :goto_1bc
    iget v8, v8, Landroid/support/v7/widget/i0$a;->a:F

    cmpl-float v8, v8, v20

    if-lez v8, :cond_1cd

    if-eqz v0, :cond_1c5

    goto :goto_1c6

    :cond_1c5
    move v3, v4

    :goto_1c6
    move/from16 v8, v23

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v23

    goto :goto_1da

    :cond_1cd
    move/from16 v8, v23

    if-eqz v0, :cond_1d2

    move v4, v3

    :cond_1d2
    move/from16 v3, v22

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v23, v8

    :goto_1da
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->c()I

    move-result v0

    add-int v0, v34, v0

    move/from16 v21, v1

    move/from16 v26, v5

    move/from16 v27, v7

    move v1, v0

    move/from16 v0, v33

    :goto_1e9
    add-int/lit8 v1, v1, 0x1

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v4, v30

    move/from16 v3, v37

    const/high16 v2, 0x40000000  # 2.0f

    const/4 v5, -0x1

    const/4 v9, 0x0

    goto/16 :goto_61

    :cond_1f9
    move/from16 v37, v3

    move/from16 v30, v4

    move/from16 v9, v21

    move/from16 v3, v22

    move/from16 v8, v23

    const/4 v2, -0x1

    const/high16 v7, -0x80000000

    const/16 v29, -0x2

    iget v1, v6, Landroid/support/v7/widget/i0;->g:I

    if-lez v1, :cond_219

    invoke-virtual {v6, v10}, Landroid/support/v7/widget/i0;->b(I)Z

    move-result v1

    if-eqz v1, :cond_219

    iget v1, v6, Landroid/support/v7/widget/i0;->g:I

    iget v4, v6, Landroid/support/v7/widget/i0;->m:I

    add-int/2addr v1, v4

    iput v1, v6, Landroid/support/v7/widget/i0;->g:I

    :cond_219
    aget v1, v14, v18

    if-ne v1, v2, :cond_22d

    const/4 v1, 0x0

    aget v4, v14, v1

    if-ne v4, v2, :cond_22d

    aget v1, v14, v17

    if-ne v1, v2, :cond_22d

    aget v1, v14, v16

    if-eq v1, v2, :cond_22b

    goto :goto_22d

    :cond_22b
    move v1, v9

    goto :goto_25b

    :cond_22d
    :goto_22d
    aget v1, v14, v16

    const/4 v4, 0x0

    aget v2, v14, v4

    aget v5, v14, v18

    aget v7, v14, v17

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget v2, v15, v16

    aget v5, v15, v4

    aget v4, v15, v18

    aget v7, v15, v17

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_25b
    if-eqz v37, :cond_2b8

    const/high16 v2, -0x80000000

    if-eq v11, v2, :cond_263

    if-nez v11, :cond_2b8

    :cond_263
    const/4 v2, 0x0

    iput v2, v6, Landroid/support/v7/widget/i0;->g:I

    const/4 v2, 0x0

    :goto_267
    if-ge v2, v10, :cond_2b8

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/i0;->a(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_279

    iget v4, v6, Landroid/support/v7/widget/i0;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->f()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v6, Landroid/support/v7/widget/i0;->g:I

    goto :goto_2b5

    :cond_279
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-ne v5, v7, :cond_287

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->c()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_2b5

    :cond_287
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/i0$a;

    if-eqz v19, :cond_2a0

    iget v5, v6, Landroid/support/v7/widget/i0;->g:I

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v13

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->e()I

    move-result v4

    add-int/2addr v7, v4

    add-int/2addr v7, v5

    iput v7, v6, Landroid/support/v7/widget/i0;->g:I

    goto :goto_2b5

    :cond_2a0
    iget v5, v6, Landroid/support/v7/widget/i0;->g:I

    add-int v7, v5, v13

    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v9

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->e()I

    move-result v4

    add-int/2addr v7, v4

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v6, Landroid/support/v7/widget/i0;->g:I

    :goto_2b5
    add-int/lit8 v2, v2, 0x1

    goto :goto_267

    :cond_2b8
    iget v2, v6, Landroid/support/v7/widget/i0;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    iput v5, v6, Landroid/support/v7/widget/i0;->g:I

    iget v2, v6, Landroid/support/v7/widget/i0;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v4, p1

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    const v5, 0xffffff

    and-int/2addr v5, v2

    iget v7, v6, Landroid/support/v7/widget/i0;->g:I

    sub-int/2addr v5, v7

    if-nez v24, :cond_32b

    if-eqz v5, :cond_2e7

    cmpl-float v9, v0, v20

    if-lez v9, :cond_2e7

    goto :goto_32b

    :cond_2e7
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v37, :cond_323

    const/high16 v3, 0x40000000  # 2.0f

    if-eq v11, v3, :cond_323

    const/4 v3, 0x0

    :goto_2f2
    if-ge v3, v10, :cond_323

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/i0;->a(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_320

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_303

    goto :goto_320

    :cond_303
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/i0$a;

    iget v8, v8, Landroid/support/v7/widget/i0$a;->a:F

    cmpl-float v8, v8, v20

    if-lez v8, :cond_320

    const/high16 v8, 0x40000000  # 2.0f

    invoke-static {v13, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v11, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v5, v9, v11}, Landroid/view/View;->measure(II)V

    :cond_320
    :goto_320
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f2

    :cond_323
    move/from16 v5, p2

    move/from16 v23, v10

    move/from16 v8, v26

    goto/16 :goto_4d0

    :cond_32b
    :goto_32b
    iget v1, v6, Landroid/support/v7/widget/i0;->h:F

    cmpl-float v8, v1, v20

    if-lez v8, :cond_332

    move v0, v1

    :cond_332
    const/4 v1, -0x1

    aput v1, v14, v16

    aput v1, v14, v17

    aput v1, v14, v18

    const/4 v8, 0x0

    aput v1, v14, v8

    aput v1, v15, v16

    aput v1, v15, v17

    aput v1, v15, v18

    aput v1, v15, v8

    iput v8, v6, Landroid/support/v7/widget/i0;->g:I

    move v1, v0

    move v9, v3

    move/from16 v8, v26

    const/4 v0, 0x0

    const/4 v3, -0x1

    :goto_34c
    if-ge v0, v10, :cond_479

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/i0;->a(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_469

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v4, 0x8

    if-ne v7, v4, :cond_35e

    goto/16 :goto_469

    :cond_35e
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/i0$a;

    iget v4, v7, Landroid/support/v7/widget/i0$a;->a:F

    cmpl-float v23, v4, v20

    if-lez v23, :cond_3c8

    move/from16 v23, v10

    int-to-float v10, v5

    mul-float v10, v10, v4

    div-float/2addr v10, v1

    float-to-int v10, v10

    sub-float/2addr v1, v4

    sub-int/2addr v5, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v24

    add-int v24, v24, v4

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v24, v24, v4

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v4, v24, v4

    move/from16 v24, v1

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v26, v5

    move/from16 v5, p2

    invoke-static {v5, v4, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v4, :cond_3a6

    const/high16 v4, 0x40000000  # 2.0f

    if-eq v11, v4, :cond_39a

    goto :goto_3a8

    :cond_39a
    if-lez v10, :cond_39d

    goto :goto_39e

    :cond_39d
    const/4 v10, 0x0

    :goto_39e
    invoke-static {v10, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v13, v10, v1}, Landroid/view/View;->measure(II)V

    goto :goto_3b8

    :cond_3a6
    const/high16 v4, 0x40000000  # 2.0f

    :goto_3a8
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    add-int v10, v31, v10

    if-gez v10, :cond_3b1

    const/4 v10, 0x0

    :cond_3b1
    invoke-static {v10, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v13, v10, v1}, Landroid/view/View;->measure(II)V

    :goto_3b8
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    invoke-static {v8, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v8

    move/from16 v1, v24

    move/from16 v4, v26

    goto :goto_3cd

    :cond_3c8
    move v4, v5

    move/from16 v23, v10

    move/from16 v5, p2

    :goto_3cd
    if-eqz v19, :cond_3ec

    iget v10, v6, Landroid/support/v7/widget/i0;->g:I

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    move/from16 v26, v1

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v24, v24, v1

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v24, v24, v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->e()I

    move-result v1

    add-int v24, v24, v1

    add-int v1, v24, v10

    iput v1, v6, Landroid/support/v7/widget/i0;->g:I

    move/from16 v24, v4

    goto :goto_408

    :cond_3ec
    move/from16 v26, v1

    iget v1, v6, Landroid/support/v7/widget/i0;->g:I

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v1

    move/from16 v24, v4

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v4

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->e()I

    move-result v4

    add-int/2addr v10, v4

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Landroid/support/v7/widget/i0;->g:I

    :goto_408
    const/high16 v1, 0x40000000  # 2.0f

    if-eq v12, v1, :cond_413

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_413

    const/4 v1, 0x1

    goto :goto_414

    :cond_413
    const/4 v1, 0x0

    :goto_414
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v10

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v4

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v1, :cond_425

    goto :goto_426

    :cond_425
    move v4, v10

    :goto_426
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v27, :cond_433

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v9, -0x1

    if-ne v4, v9, :cond_434

    const/4 v4, 0x1

    goto :goto_435

    :cond_433
    const/4 v9, -0x1

    :cond_434
    const/4 v4, 0x0

    :goto_435
    if-eqz v30, :cond_45f

    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v13

    if-eq v13, v9, :cond_45f

    iget v7, v7, Landroid/support/v7/widget/i0$a;->b:I

    if-gez v7, :cond_443

    iget v7, v6, Landroid/support/v7/widget/i0;->f:I

    :cond_443
    and-int/lit8 v7, v7, 0x70

    const/16 v25, 0x4

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, -0x2

    shr-int/lit8 v7, v7, 0x1

    aget v9, v14, v7

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v14, v7

    aget v9, v15, v7

    sub-int/2addr v10, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v15, v7

    goto :goto_461

    :cond_45f
    const/16 v25, 0x4

    :goto_461
    move v9, v1

    move/from16 v27, v4

    move/from16 v4, v24

    move/from16 v1, v26

    goto :goto_470

    :cond_469
    :goto_469
    move v4, v5

    move/from16 v23, v10

    const/16 v25, 0x4

    move/from16 v5, p2

    :goto_470
    add-int/lit8 v0, v0, 0x1

    move v5, v4

    move/from16 v10, v23

    move/from16 v4, p1

    goto/16 :goto_34c

    :cond_479
    move/from16 v5, p2

    move/from16 v23, v10

    iget v0, v6, Landroid/support/v7/widget/i0;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v1

    add-int/2addr v4, v0

    iput v4, v6, Landroid/support/v7/widget/i0;->g:I

    aget v0, v14, v18

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4a0

    const/4 v0, 0x0

    aget v4, v14, v0

    if-ne v4, v1, :cond_4a0

    aget v0, v14, v17

    if-ne v0, v1, :cond_4a0

    aget v0, v14, v16

    if-eq v0, v1, :cond_49e

    goto :goto_4a0

    :cond_49e
    move v1, v3

    goto :goto_4cf

    :cond_4a0
    :goto_4a0
    aget v0, v14, v16

    const/4 v1, 0x0

    aget v4, v14, v1

    aget v7, v14, v18

    aget v10, v14, v17

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget v4, v15, v16

    aget v1, v15, v1

    aget v7, v15, v18

    aget v10, v15, v17

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    :goto_4cf
    move v0, v9

    :goto_4d0
    if-nez v27, :cond_4d7

    const/high16 v3, 0x40000000  # 2.0f

    if-eq v12, v3, :cond_4d7

    goto :goto_4d8

    :cond_4d7
    move v0, v1

    :goto_4d8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v8

    or-int/2addr v1, v2

    shl-int/lit8 v2, v8, 0x10

    invoke-static {v0, v5, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v6, v1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    if-eqz v28, :cond_500

    move/from16 v0, p1

    move/from16 v1, v23

    invoke-direct {v6, v1, v0}, Landroid/support/v7/widget/i0;->c(II)V

    :cond_500
    return-void
.end method

.method a(IIII)V
    .registers 27

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/f1;->a(Landroid/view/View;)Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int v4, v3, v4

    sub-int/2addr v3, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->getVirtualChildCount()I

    move-result v5

    iget v6, v0, Landroid/support/v7/widget/i0;->f:I

    const v7, 0x800007

    and-int/2addr v7, v6

    and-int/lit8 v6, v6, 0x70

    iget-boolean v8, v0, Landroid/support/v7/widget/i0;->b:Z

    iget-object v9, v0, Landroid/support/v7/widget/i0;->j:[I

    iget-object v10, v0, Landroid/support/v7/widget/i0;->k:[I

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/n;->d(Landroid/view/View;)I

    move-result v11

    invoke-static {v7, v11}, La/a/g;->a(II)I

    move-result v7

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v7, v12, :cond_4a

    const/4 v13, 0x5

    if-eq v7, v13, :cond_3e

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    goto :goto_55

    :cond_3e
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    add-int v7, v7, p3

    sub-int v7, v7, p1

    iget v13, v0, Landroid/support/v7/widget/i0;->g:I

    sub-int/2addr v7, v13

    goto :goto_55

    :cond_4a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    sub-int v13, p3, p1

    iget v14, v0, Landroid/support/v7/widget/i0;->g:I

    sub-int/2addr v13, v14

    div-int/2addr v13, v11

    add-int/2addr v7, v13

    :goto_55
    const/4 v13, 0x0

    if-eqz v1, :cond_5c

    add-int/lit8 v1, v5, -0x1

    const/4 v15, -0x1

    goto :goto_5e

    :cond_5c
    const/4 v1, 0x0

    const/4 v15, 0x1

    :goto_5e
    if-ge v13, v5, :cond_12d

    mul-int v16, v15, v13

    add-int v12, v16, v1

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/i0;->a(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_7c

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->f()I

    move-result v11

    add-int/2addr v7, v11

    move/from16 p3, v1

    :cond_71
    move/from16 v17, v5

    move/from16 v16, v6

    move/from16 v18, v8

    move/from16 v19, v15

    const/4 v15, -0x1

    goto/16 :goto_11d

    :cond_7c
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v14

    move/from16 p3, v1

    const/16 v1, 0x8

    if-eq v14, v1, :cond_71

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move/from16 v17, v5

    move-object/from16 v5, v16

    check-cast v5, Landroid/support/v7/widget/i0$a;

    if-eqz v8, :cond_a8

    move/from16 v16, v6

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v18, v8

    const/4 v8, -0x1

    if-eq v6, v8, :cond_ac

    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    move-result v6

    goto :goto_ad

    :cond_a8
    move/from16 v16, v6

    move/from16 v18, v8

    :cond_ac
    const/4 v6, -0x1

    :goto_ad
    iget v8, v5, Landroid/support/v7/widget/i0$a;->b:I

    if-gez v8, :cond_b3

    move/from16 v8, v16

    :cond_b3
    and-int/lit8 v8, v8, 0x70

    move/from16 v19, v15

    const/16 v15, 0x10

    if-eq v8, v15, :cond_ea

    const/16 v15, 0x30

    if-eq v8, v15, :cond_db

    const/16 v15, 0x50

    if-eq v8, v15, :cond_c5

    move v8, v2

    goto :goto_d9

    :cond_c5
    sub-int v8, v4, v14

    iget v15, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v8, v15

    const/4 v15, -0x1

    if-eq v6, v15, :cond_d9

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v15, v6

    const/4 v6, 0x2

    aget v20, v10, v6

    sub-int v20, v20, v15

    sub-int v8, v8, v20

    :cond_d9
    :goto_d9
    const/4 v15, -0x1

    goto :goto_f7

    :cond_db
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v2

    const/4 v15, -0x1

    if-eq v6, v15, :cond_f7

    const/16 v20, 0x1

    aget v21, v9, v20

    sub-int v21, v21, v6

    add-int v8, v21, v8

    goto :goto_f7

    :cond_ea
    const/4 v15, -0x1

    sub-int v6, v3, v14

    const/4 v8, 0x2

    div-int/2addr v6, v8

    add-int/2addr v6, v2

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v8

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v8, v6, v8

    :cond_f7
    :goto_f7
    invoke-virtual {v0, v12}, Landroid/support/v7/widget/i0;->b(I)Z

    move-result v6

    if-eqz v6, :cond_100

    iget v6, v0, Landroid/support/v7/widget/i0;->m:I

    add-int/2addr v7, v6

    :cond_100
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->d()I

    move-result v6

    add-int/2addr v6, v7

    add-int v12, v1, v6

    add-int/2addr v14, v8

    invoke-virtual {v11, v6, v8, v12, v14}, Landroid/view/View;->layout(IIII)V

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->e()I

    move-result v5

    add-int/2addr v1, v5

    add-int/2addr v1, v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->c()I

    move-result v5

    add-int/2addr v13, v5

    move v7, v1

    :goto_11d
    const/4 v1, 0x1

    add-int/2addr v13, v1

    move/from16 v1, p3

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v8, v18

    move/from16 v15, v19

    const/4 v11, 0x2

    const/4 v12, 0x1

    goto/16 :goto_5e

    :cond_12d
    return-void
.end method

.method a(Landroid/graphics/Canvas;)V
    .registers 8

    invoke-virtual {p0}, Landroid/support/v7/widget/i0;->getVirtualChildCount()I

    move-result v0

    invoke-static {p0}, Landroid/support/v7/widget/f1;->a(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_3f

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/i0;->a(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3c

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/i0;->b(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/i0$a;

    if-eqz v1, :cond_2f

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    goto :goto_39

    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/i0;->m:I

    sub-int/2addr v3, v4

    :goto_39
    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/i0;->b(Landroid/graphics/Canvas;I)V

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_3f
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/i0;->b(I)Z

    move-result v2

    if-eqz v2, :cond_7d

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/i0;->a(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_60

    if-eqz v1, :cond_54

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    goto :goto_7a

    :cond_54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/i0;->m:I

    goto :goto_71

    :cond_60
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/i0$a;

    if-eqz v1, :cond_73

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/i0;->m:I

    :goto_71
    sub-int/2addr v0, v1

    goto :goto_7a

    :cond_73
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    :goto_7a
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/i0;->b(Landroid/graphics/Canvas;I)V

    :cond_7d
    return-void
.end method

.method a(Landroid/graphics/Canvas;I)V
    .registers 7

    iget-object v0, p0, Landroid/support/v7/widget/i0;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/i0;->p:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/i0;->p:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/i0;->n:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Landroid/support/v7/widget/i0;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method a(Landroid/view/View;IIII)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method b(II)V
    .registers 36

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    const/4 v9, 0x0

    iput v9, v6, Landroid/support/v7/widget/i0;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->getVirtualChildCount()I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    iget v13, v6, Landroid/support/v7/widget/i0;->c:I

    iget-boolean v14, v6, Landroid/support/v7/widget/i0;->i:Z

    const/16 v16, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_28
    const/16 v3, 0x8

    if-ge v5, v10, :cond_184

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/i0;->a(I)Landroid/view/View;

    move-result-object v25

    if-nez v25, :cond_43

    iget v3, v6, Landroid/support/v7/widget/i0;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->f()I

    move-result v15

    add-int/2addr v3, v15

    iput v3, v6, Landroid/support/v7/widget/i0;->g:I

    :goto_3b
    move/from16 v22, v10

    move/from16 v8, v21

    move/from16 v21, v12

    goto/16 :goto_176

    :cond_43
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-ne v15, v3, :cond_4f

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->c()I

    move-result v3

    add-int/2addr v5, v3

    goto :goto_3b

    :cond_4f
    invoke-virtual {v6, v5}, Landroid/support/v7/widget/i0;->b(I)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget v3, v6, Landroid/support/v7/widget/i0;->g:I

    iget v15, v6, Landroid/support/v7/widget/i0;->n:I

    add-int/2addr v3, v15

    iput v3, v6, Landroid/support/v7/widget/i0;->g:I

    :cond_5c
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/support/v7/widget/i0$a;

    iget v3, v15, Landroid/support/v7/widget/i0$a;->a:F

    add-float v26, v0, v3

    const/high16 v0, 0x40000000  # 2.0f

    if-ne v12, v0, :cond_96

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v0, :cond_96

    iget v0, v15, Landroid/support/v7/widget/i0$a;->a:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_96

    iget v0, v6, Landroid/support/v7/widget/i0;->g:I

    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v0

    move/from16 v27, v1

    iget v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Landroid/support/v7/widget/i0;->g:I

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v22, v10

    move/from16 v8, v21

    move/from16 v30, v27

    const/16 v17, 0x1

    move/from16 v21, v12

    goto/16 :goto_fc

    :cond_96
    move/from16 v27, v1

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v0, :cond_a8

    iget v0, v15, Landroid/support/v7/widget/i0$a;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a9

    const/4 v0, -0x2

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v3, 0x0

    goto :goto_ab

    :cond_a8
    const/4 v1, 0x0

    :cond_a9
    const/high16 v3, -0x80000000

    :goto_ab
    const/16 v28, 0x0

    cmpl-float v0, v26, v1

    if-nez v0, :cond_b6

    iget v0, v6, Landroid/support/v7/widget/i0;->g:I

    move/from16 v29, v0

    goto :goto_b8

    :cond_b6
    const/16 v29, 0x0

    :goto_b8
    move-object/from16 v0, p0

    move/from16 v30, v27

    move-object/from16 v1, v25

    move v7, v2

    move/from16 v2, p1

    move/from16 v22, v10

    move/from16 v8, v21

    const/high16 v10, -0x80000000

    move/from16 v21, v12

    move v12, v3

    move/from16 v3, v28

    move/from16 v31, v4

    move/from16 v4, p2

    move/from16 v32, v5

    move/from16 v5, v29

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/i0;->a(Landroid/view/View;IIII)V

    if-eq v12, v10, :cond_db

    iput v12, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_db
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v6, Landroid/support/v7/widget/i0;->g:I

    add-int v2, v1, v0

    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->e()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Landroid/support/v7/widget/i0;->g:I

    if-eqz v14, :cond_fb

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_fc

    :cond_fb
    move v2, v7

    :goto_fc
    if-ltz v13, :cond_109

    move/from16 v0, v32

    add-int/lit8 v5, v0, 0x1

    if-ne v13, v5, :cond_10b

    iget v1, v6, Landroid/support/v7/widget/i0;->g:I

    iput v1, v6, Landroid/support/v7/widget/i0;->d:I

    goto :goto_10b

    :cond_109
    move/from16 v0, v32

    :cond_10b
    :goto_10b
    if-ge v0, v13, :cond_11d

    iget v1, v15, Landroid/support/v7/widget/i0$a;->a:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_115

    goto :goto_11d

    :cond_115
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11d
    :goto_11d
    const/high16 v1, 0x40000000  # 2.0f

    if-eq v11, v1, :cond_12a

    iget v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_12b

    const/4 v1, 0x1

    const/16 v20, 0x1

    goto :goto_12c

    :cond_12a
    const/4 v4, -0x1

    :cond_12b
    const/4 v1, 0x0

    :goto_12c
    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    move/from16 v12, v30

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredState()I

    move-result v10

    invoke-static {v9, v10}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    if-eqz v19, :cond_14c

    iget v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v10, v4, :cond_14c

    const/4 v4, 0x1

    goto :goto_14d

    :cond_14c
    const/4 v4, 0x0

    :goto_14d
    iget v10, v15, Landroid/support/v7/widget/i0$a;->a:F

    const/4 v12, 0x0

    cmpl-float v10, v10, v12

    if-lez v10, :cond_160

    if-eqz v1, :cond_157

    goto :goto_158

    :cond_157
    move v3, v5

    :goto_158
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v8, v1

    move/from16 v1, v31

    goto :goto_16a

    :cond_160
    if-eqz v1, :cond_163

    goto :goto_164

    :cond_163
    move v3, v5

    :goto_164
    move/from16 v1, v31

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_16a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->c()I

    move-result v3

    add-int v5, v0, v3

    move/from16 v19, v4

    move/from16 v0, v26

    move v4, v1

    move v1, v7

    :goto_176
    add-int/lit8 v5, v5, 0x1

    move/from16 v7, p1

    move/from16 v12, v21

    move/from16 v10, v22

    move/from16 v21, v8

    move/from16 v8, p2

    goto/16 :goto_28

    :cond_184
    move v7, v2

    move/from16 v22, v10

    move/from16 v8, v21

    const/high16 v10, -0x80000000

    move/from16 v21, v12

    move v12, v1

    move v1, v4

    const/4 v4, -0x1

    iget v2, v6, Landroid/support/v7/widget/i0;->g:I

    if-lez v2, :cond_1a4

    move/from16 v2, v22

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/i0;->b(I)Z

    move-result v5

    if-eqz v5, :cond_1a6

    iget v5, v6, Landroid/support/v7/widget/i0;->g:I

    iget v13, v6, Landroid/support/v7/widget/i0;->n:I

    add-int/2addr v5, v13

    iput v5, v6, Landroid/support/v7/widget/i0;->g:I

    goto :goto_1a6

    :cond_1a4
    move/from16 v2, v22

    :cond_1a6
    :goto_1a6
    move/from16 v5, v21

    if-eqz v14, :cond_1f2

    if-eq v5, v10, :cond_1ae

    if-nez v5, :cond_1f2

    :cond_1ae
    const/4 v10, 0x0

    iput v10, v6, Landroid/support/v7/widget/i0;->g:I

    const/4 v10, 0x0

    :goto_1b2
    if-ge v10, v2, :cond_1f2

    invoke-virtual {v6, v10}, Landroid/support/v7/widget/i0;->a(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_1c4

    iget v13, v6, Landroid/support/v7/widget/i0;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->f()I

    move-result v15

    add-int/2addr v13, v15

    iput v13, v6, Landroid/support/v7/widget/i0;->g:I

    goto :goto_1ee

    :cond_1c4
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-ne v15, v3, :cond_1d0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->c()I

    move-result v13

    add-int/2addr v10, v13

    goto :goto_1ee

    :cond_1d0
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v7/widget/i0$a;

    iget v15, v6, Landroid/support/v7/widget/i0;->g:I

    add-int v21, v15, v7

    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v21, v21, v4

    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v21, v21, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->e()I

    move-result v4

    add-int v4, v21, v4

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v6, Landroid/support/v7/widget/i0;->g:I

    :goto_1ee
    add-int/lit8 v10, v10, 0x1

    const/4 v4, -0x1

    goto :goto_1b2

    :cond_1f2
    iget v4, v6, Landroid/support/v7/widget/i0;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v13

    add-int/2addr v13, v10

    add-int/2addr v13, v4

    iput v13, v6, Landroid/support/v7/widget/i0;->g:I

    iget v4, v6, Landroid/support/v7/widget/i0;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v10, v8

    const/4 v13, 0x0

    move/from16 v8, p2

    invoke-static {v4, v8, v13}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    const v13, 0xffffff

    and-int/2addr v13, v4

    iget v15, v6, Landroid/support/v7/widget/i0;->g:I

    sub-int/2addr v13, v15

    if-nez v17, :cond_263

    if-eqz v13, :cond_223

    const/4 v15, 0x0

    cmpl-float v17, v0, v15

    if-lez v17, :cond_223

    goto :goto_263

    :cond_223
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v14, :cond_25e

    const/high16 v1, 0x40000000  # 2.0f

    if-eq v5, v1, :cond_25e

    const/4 v1, 0x0

    :goto_22e
    if-ge v1, v2, :cond_25e

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/i0;->a(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_25b

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v3, :cond_23d

    goto :goto_25b

    :cond_23d
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/i0$a;

    iget v10, v10, Landroid/support/v7/widget/i0$a;->a:F

    const/4 v13, 0x0

    cmpl-float v10, v10, v13

    if-lez v10, :cond_25b

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    const/high16 v13, 0x40000000  # 2.0f

    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-static {v7, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v5, v10, v14}, Landroid/view/View;->measure(II)V

    :cond_25b
    :goto_25b
    add-int/lit8 v1, v1, 0x1

    goto :goto_22e

    :cond_25e
    move/from16 v13, p1

    move v1, v12

    goto/16 :goto_35e

    :cond_263
    :goto_263
    iget v7, v6, Landroid/support/v7/widget/i0;->h:F

    const/4 v10, 0x0

    cmpl-float v14, v7, v10

    if-lez v14, :cond_26b

    move v0, v7

    :cond_26b
    const/4 v10, 0x0

    iput v10, v6, Landroid/support/v7/widget/i0;->g:I

    move v7, v1

    move v1, v12

    move v12, v0

    const/4 v0, 0x0

    :goto_272
    if-ge v0, v2, :cond_34d

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/i0;->a(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-ne v15, v3, :cond_287

    move/from16 v24, v13

    const/4 v3, -0x1

    const/16 v18, 0x0

    move/from16 v13, p1

    goto/16 :goto_344

    :cond_287
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/support/v7/widget/i0$a;

    iget v3, v15, Landroid/support/v7/widget/i0$a;->a:F

    const/16 v18, 0x0

    cmpl-float v21, v3, v18

    if-lez v21, :cond_2ee

    int-to-float v10, v13

    mul-float v10, v10, v3

    div-float/2addr v10, v12

    float-to-int v10, v10

    sub-float/2addr v12, v3

    sub-int/2addr v13, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v22

    add-int v22, v22, v3

    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v22, v22, v3

    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v3, v22, v3

    move/from16 v22, v12

    iget v12, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v23, v13

    move/from16 v13, p1

    invoke-static {v13, v3, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    iget v12, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v12, :cond_2cf

    const/high16 v12, 0x40000000  # 2.0f

    if-eq v5, v12, :cond_2c3

    goto :goto_2d1

    :cond_2c3
    if-lez v10, :cond_2c6

    goto :goto_2c7

    :cond_2c6
    const/4 v10, 0x0

    :goto_2c7
    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v14, v3, v10}, Landroid/view/View;->measure(II)V

    goto :goto_2e1

    :cond_2cf
    const/high16 v12, 0x40000000  # 2.0f

    :goto_2d1
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v10, v24, v10

    if-gez v10, :cond_2da

    const/4 v10, 0x0

    :cond_2da
    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v14, v3, v10}, Landroid/view/View;->measure(II)V

    :goto_2e1
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    and-int/lit16 v3, v3, -0x100

    invoke-static {v9, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    move/from16 v3, v23

    goto :goto_2f3

    :cond_2ee
    move v3, v13

    move/from16 v13, p1

    move/from16 v22, v12

    :goto_2f3
    iget v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v12, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v12

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v10

    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v23, v1

    const/high16 v1, 0x40000000  # 2.0f

    if-eq v11, v1, :cond_310

    iget v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v24, v3

    const/4 v3, -0x1

    if-ne v1, v3, :cond_313

    const/4 v1, 0x1

    goto :goto_314

    :cond_310
    move/from16 v24, v3

    const/4 v3, -0x1

    :cond_313
    const/4 v1, 0x0

    :goto_314
    if-eqz v1, :cond_317

    goto :goto_318

    :cond_317
    move v10, v12

    :goto_318
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v19, :cond_324

    iget v7, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v7, v3, :cond_324

    const/4 v7, 0x1

    goto :goto_325

    :cond_324
    const/4 v7, 0x0

    :goto_325
    iget v10, v6, Landroid/support/v7/widget/i0;->g:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v10

    iget v14, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v14

    iget v14, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v14

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/i0;->e()I

    move-result v14

    add-int/2addr v12, v14

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v6, Landroid/support/v7/widget/i0;->g:I

    move/from16 v19, v7

    move/from16 v12, v22

    move v7, v1

    move/from16 v1, v23

    :goto_344
    add-int/lit8 v0, v0, 0x1

    move/from16 v13, v24

    const/16 v3, 0x8

    const/4 v10, 0x0

    goto/16 :goto_272

    :cond_34d
    move/from16 v13, p1

    iget v0, v6, Landroid/support/v7/widget/i0;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v5, v0

    iput v5, v6, Landroid/support/v7/widget/i0;->g:I

    move v0, v7

    :goto_35e
    if-nez v19, :cond_365

    const/high16 v3, 0x40000000  # 2.0f

    if-eq v11, v3, :cond_365

    goto :goto_366

    :cond_365
    move v0, v1

    :goto_366
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v13, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v6, v0, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    if-eqz v20, :cond_384

    invoke-direct {v6, v2, v8}, Landroid/support/v7/widget/i0;->d(II)V

    :cond_384
    return-void
.end method

.method b(IIII)V
    .registers 16

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p3, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p1

    sub-int p1, p3, p1

    sub-int/2addr p3, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/i0;->getVirtualChildCount()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/i0;->f:I

    and-int/lit8 v3, v2, 0x70

    const v4, 0x800007

    and-int/2addr v2, v4

    const/16 v4, 0x10

    if-eq v3, v4, :cond_35

    const/16 v4, 0x50

    if-eq v3, v4, :cond_2a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    goto :goto_41

    :cond_2a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, p4

    sub-int/2addr v3, p2

    iget p2, p0, Landroid/support/v7/widget/i0;->g:I

    sub-int p2, v3, p2

    goto :goto_41

    :cond_35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr p4, p2

    iget p2, p0, Landroid/support/v7/widget/i0;->g:I

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    add-int p2, v3, p4

    :goto_41
    const/4 p4, 0x0

    :goto_42
    if-ge p4, v1, :cond_b7

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/i0;->a(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_51

    invoke-virtual {p0}, Landroid/support/v7/widget/i0;->f()I

    move-result v3

    add-int/2addr p2, v3

    goto :goto_b5

    :cond_51
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_b5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/i0$a;

    iget v8, v7, Landroid/support/v7/widget/i0$a;->b:I

    if-gez v8, :cond_6c

    move v8, v2

    :cond_6c
    invoke-static {p0}, Landroid/support/v4/view/n;->d(Landroid/view/View;)I

    move-result v9

    invoke-static {v8, v9}, La/a/g;->a(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7

    if-eq v8, v4, :cond_84

    const/4 v9, 0x5

    if-eq v8, v9, :cond_7f

    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v0

    goto :goto_8f

    :cond_7f
    sub-int v8, p1, v5

    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_8e

    :cond_84
    sub-int v8, p3, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v0

    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_8e
    sub-int/2addr v8, v9

    :goto_8f
    invoke-virtual {p0, p4}, Landroid/support/v7/widget/i0;->b(I)Z

    move-result v9

    if-eqz v9, :cond_98

    iget v9, p0, Landroid/support/v7/widget/i0;->n:I

    add-int/2addr p2, v9

    :cond_98
    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p2, v9

    invoke-virtual {p0}, Landroid/support/v7/widget/i0;->d()I

    move-result v9

    add-int/2addr v9, p2

    add-int/2addr v5, v8

    add-int v10, v6, v9

    invoke-virtual {v3, v8, v9, v5, v10}, Landroid/view/View;->layout(IIII)V

    iget v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/i0;->e()I

    move-result v3

    add-int/2addr v6, v3

    add-int/2addr v6, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/i0;->c()I

    move-result p2

    add-int/2addr p4, p2

    move p2, v6

    :cond_b5
    :goto_b5
    add-int/2addr p4, v4

    goto :goto_42

    :cond_b7
    return-void
.end method

.method b(Landroid/graphics/Canvas;)V
    .registers 7

    invoke-virtual {p0}, Landroid/support/v7/widget/i0;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_31

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/i0;->a(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2e

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/i0;->b(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/i0$a;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/i0;->n:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/i0;->a(Landroid/graphics/Canvas;I)V

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_31
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/i0;->b(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/i0;->a(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/i0;->n:I

    sub-int/2addr v0, v1

    goto :goto_59

    :cond_4c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/i0$a;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    :goto_59
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/i0;->a(Landroid/graphics/Canvas;I)V

    :cond_5c
    return-void
.end method

.method b(Landroid/graphics/Canvas;I)V
    .registers 8

    iget-object v0, p0, Landroid/support/v7/widget/i0;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/i0;->p:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/i0;->m:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/i0;->p:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Landroid/support/v7/widget/i0;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected b(I)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_b

    iget p1, p0, Landroid/support/v7/widget/i0;->o:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_19

    iget p1, p0, Landroid/support/v7/widget/i0;->o:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0

    :cond_19
    iget v2, p0, Landroid/support/v7/widget/i0;->o:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_33

    sub-int/2addr p1, v1

    :goto_20
    if-ltz p1, :cond_33

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_30

    const/4 v0, 0x1

    goto :goto_33

    :cond_30
    add-int/lit8 p1, p1, -0x1

    goto :goto_20

    :cond_33
    :goto_33
    return v0
.end method

.method c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    instance-of p1, p1, Landroid/support/v7/widget/i0$a;

    return p1
.end method

.method d()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method e()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method f()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/i0$a;
    .registers 4

    iget v0, p0, Landroid/support/v7/widget/i0;->e:I

    const/4 v1, -0x2

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v7/widget/i0$a;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/i0$a;-><init>(II)V

    return-object v0

    :cond_b
    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    new-instance v0, Landroid/support/v7/widget/i0$a;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/i0$a;-><init>(II)V

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/widget/i0;->generateDefaultLayoutParams()Landroid/support/v7/widget/i0$a;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/i0$a;
    .registers 4

    new-instance v0, Landroid/support/v7/widget/i0$a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/i0$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/i0$a;
    .registers 3

    new-instance v0, Landroid/support/v7/widget/i0$a;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/i0$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/i0;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/i0$a;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/i0;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/i0$a;

    move-result-object p1

    return-object p1
.end method

.method public getBaseline()I
    .registers 6

    iget v0, p0, Landroid/support/v7/widget/i0;->c:I

    if-gez v0, :cond_9

    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/i0;->c:I

    if-le v0, v1, :cond_77

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    iget v0, p0, Landroid/support/v7/widget/i0;->c:I

    if-nez v0, :cond_21

    return v2

    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iget v2, p0, Landroid/support/v7/widget/i0;->d:I

    iget v3, p0, Landroid/support/v7/widget/i0;->e:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6c

    iget v3, p0, Landroid/support/v7/widget/i0;->f:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_6c

    const/16 v4, 0x10

    if-eq v3, v4, :cond_53

    const/16 v4, 0x50

    if-eq v3, v4, :cond_41

    goto :goto_6c

    :cond_41
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/i0;->g:I

    sub-int/2addr v2, v3

    goto :goto_6c

    :cond_53
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/i0;->g:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    :cond_6c
    :goto_6c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i0$a;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    :cond_77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/i0;->c:I

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/i0;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/i0;->p:I

    return v0
.end method

.method public getDividerWidth()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/i0;->m:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/i0;->f:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/i0;->e:I

    return v0
.end method

.method public getShowDividers()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/i0;->o:I

    return v0
.end method

.method getVirtualChildCount()I
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/i0;->h:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/i0;->l:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Landroid/support/v7/widget/i0;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/i0;->b(Landroid/graphics/Canvas;)V

    goto :goto_11

    :cond_e
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/i0;->a(Landroid/graphics/Canvas;)V

    :goto_11
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v7/widget/i0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/support/v7/widget/i0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    iget p1, p0, Landroid/support/v7/widget/i0;->e:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/i0;->b(IIII)V

    goto :goto_c

    :cond_9
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/i0;->a(IIII)V

    :goto_c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    iget v0, p0, Landroid/support/v7/widget/i0;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/i0;->b(II)V

    goto :goto_c

    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/i0;->a(II)V

    :goto_c
    return-void
.end method

.method public setBaselineAligned(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/widget/i0;->b:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .registers 4

    if-ltz p1, :cond_b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_b

    iput p1, p0, Landroid/support/v7/widget/i0;->c:I

    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "base aligned child index out of range (0, "

    invoke-static {v0}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/i0;->l:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Landroid/support/v7/widget/i0;->l:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/i0;->m:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/i0;->n:I

    goto :goto_1b

    :cond_17
    iput v0, p0, Landroid/support/v7/widget/i0;->m:I

    iput v0, p0, Landroid/support/v7/widget/i0;->n:I

    :goto_1b
    if-nez p1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setDividerPadding(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/widget/i0;->p:I

    return-void
.end method

.method public setGravity(I)V
    .registers 3

    iget v0, p0, Landroid/support/v7/widget/i0;->f:I

    if-eq v0, p1, :cond_19

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    or-int/lit8 p1, p1, 0x30

    :cond_14
    iput p1, p0, Landroid/support/v7/widget/i0;->f:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_19
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 4

    const v0, 0x800007

    and-int/2addr p1, v0

    iget v1, p0, Landroid/support/v7/widget/i0;->f:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_13

    const v0, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/i0;->f:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_13
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/widget/i0;->i:Z

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    iget v0, p0, Landroid/support/v7/widget/i0;->e:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Landroid/support/v7/widget/i0;->e:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setShowDividers(I)V
    .registers 3

    iget v0, p0, Landroid/support/v7/widget/i0;->o:I

    if-eq p1, v0, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_7
    iput p1, p0, Landroid/support/v7/widget/i0;->o:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 4

    and-int/lit8 p1, p1, 0x70

    iget v0, p0, Landroid/support/v7/widget/i0;->f:I

    and-int/lit8 v1, v0, 0x70

    if-eq v1, p1, :cond_10

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/i0;->f:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_10
    return-void
.end method

.method public setWeightSum(F)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/i0;->h:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
