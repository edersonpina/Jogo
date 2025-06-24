.class public Landroid/support/v4/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "NestedScrollView.java"

# interfaces
.implements Landroid/support/v4/view/i;
.implements Landroid/support/v4/view/e;
.implements Landroid/support/v4/view/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/NestedScrollView$a;,
        Landroid/support/v4/widget/NestedScrollView$SavedState;,
        Landroid/support/v4/widget/NestedScrollView$b;
    }
.end annotation


# static fields
.field private static final B:Landroid/support/v4/widget/NestedScrollView$a;

.field private static final C:[I


# instance fields
.field private A:Landroid/support/v4/widget/NestedScrollView$b;

.field private b:J

.field private final c:Landroid/graphics/Rect;

.field private d:Landroid/widget/OverScroller;

.field private e:Landroid/widget/EdgeEffect;

.field private f:Landroid/widget/EdgeEffect;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Landroid/view/View;

.field private k:Z

.field private l:Landroid/view/VelocityTracker;

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private final s:[I

.field private final t:[I

.field private u:I

.field private v:I

.field private w:Landroid/support/v4/widget/NestedScrollView$SavedState;

.field private final x:Landroid/support/v4/view/j;

.field private final y:Landroid/support/v4/view/g;

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/support/v4/widget/NestedScrollView$a;

    invoke-direct {v0}, Landroid/support/v4/widget/NestedScrollView$a;-><init>()V

    sput-object v0, Landroid/support/v4/widget/NestedScrollView;->B:Landroid/support/v4/widget/NestedScrollView$a;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101017a

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/NestedScrollView;->C:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->h:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/widget/NestedScrollView;->i:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->j:Landroid/view/View;

    iput-boolean v1, p0, Landroid/support/v4/widget/NestedScrollView;->k:Z

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->n:Z

    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v4/widget/NestedScrollView;->r:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->s:[I

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->t:[I

    new-instance v2, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/support/v4/widget/NestedScrollView;->o:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/support/v4/widget/NestedScrollView;->p:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/NestedScrollView;->q:I

    sget-object v2, Landroid/support/v4/widget/NestedScrollView;->C:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->setFillViewport(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/support/v4/view/j;

    invoke-direct {p1, p0}, Landroid/support/v4/view/j;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->x:Landroid/support/v4/view/j;

    new-instance p1, Landroid/support/v4/view/g;

    invoke-direct {p1, p0}, Landroid/support/v4/view/g;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/g;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    sget-object p1, Landroid/support/v4/widget/NestedScrollView;->B:Landroid/support/v4/widget/NestedScrollView$a;

    invoke-static {p0, p1}, Landroid/support/v4/view/n;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    return-void
.end method

.method private a()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_23

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    goto :goto_23

    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    :cond_23
    :goto_23
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/NestedScrollView;->r:I

    if-ne v1, v2, :cond_25

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->g:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/NestedScrollView;->r:I

    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_25
    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_16

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    :cond_16
    return-void
.end method

.method private a(III)Z
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    const/16 v8, 0x21

    if-ne v1, v8, :cond_17

    const/4 v8, 0x1

    goto :goto_18

    :cond_17
    const/4 v8, 0x0

    :goto_18
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_25
    if-ge v11, v10, :cond_6d

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ge v2, v6, :cond_6a

    if-ge v15, v3, :cond_6a

    if-ge v2, v15, :cond_40

    if-ge v6, v3, :cond_40

    const/16 v17, 0x1

    goto :goto_42

    :cond_40
    const/16 v17, 0x0

    :goto_42
    if-nez v12, :cond_48

    move-object v12, v14

    move/from16 v13, v17

    goto :goto_6a

    :cond_48
    if-eqz v8, :cond_50

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v15, v7, :cond_58

    :cond_50
    if-nez v8, :cond_5a

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v6, v7, :cond_5a

    :cond_58
    const/4 v6, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v6, 0x0

    :goto_5b
    if-eqz v13, :cond_62

    if-eqz v17, :cond_6a

    if-eqz v6, :cond_6a

    goto :goto_69

    :cond_62
    if-eqz v17, :cond_67

    move-object v12, v14

    const/4 v13, 0x1

    goto :goto_6a

    :cond_67
    if-eqz v6, :cond_6a

    :goto_69
    move-object v12, v14

    :cond_6a
    :goto_6a
    add-int/lit8 v11, v11, 0x1

    goto :goto_25

    :cond_6d
    if-nez v12, :cond_70

    move-object v12, v0

    :cond_70
    if-lt v2, v5, :cond_77

    if-gt v3, v4, :cond_77

    const/16 v16, 0x0

    goto :goto_82

    :cond_77
    if-eqz v8, :cond_7b

    sub-int/2addr v2, v5

    goto :goto_7d

    :cond_7b
    sub-int v2, v3, v4

    :goto_7d
    invoke-direct {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->g(I)V

    const/16 v16, 0x1

    :goto_82
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    move-result-object v2

    if-eq v12, v2, :cond_8b

    invoke-virtual {v12, v1}, Landroid/view/View;->requestFocus(I)Z

    :cond_8b
    return v16
.end method

.method private a(Landroid/view/View;II)Z
    .registers 5

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-lt p1, v0, :cond_23

    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p2

    add-int/2addr p2, p3

    if-gt p1, p2, :cond_23

    const/4 p1, 0x1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    return p1
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_15

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private g(I)V
    .registers 4

    if-eqz p1, :cond_e

    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/NestedScrollView;->a(II)V

    goto :goto_e

    :cond_b
    invoke-virtual {p0, v1, p1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    :cond_e
    :goto_e
    return-void
.end method

.method private getVerticalScrollFactorCompat()F
    .registers 6

    iget v0, p0, Landroid/support/v4/widget/NestedScrollView;->z:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_35

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->z:F

    goto :goto_35

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    :goto_35
    iget v0, p0, Landroid/support/v4/widget/NestedScrollView;->z:F

    return v0
.end method

.method private h(I)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_8

    if-lez p1, :cond_11

    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_13

    if-gez p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    int-to-float v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {p0, v2, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->b(I)V

    :cond_22
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Rect;)I
    .registers 9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    add-int v3, v2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVerticalFadingEdgeLength()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1b

    add-int/2addr v2, v4

    :cond_1b
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_28

    sub-int/2addr v3, v4

    :cond_28
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v3, :cond_4c

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-le v4, v2, :cond_4c

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_3a

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    goto :goto_3d

    :cond_3a
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v3

    :goto_3d
    add-int/2addr p1, v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_6c

    :cond_4c
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ge v4, v2, :cond_6c

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v3, :cond_6c

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_5f

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p1

    sub-int/2addr v1, v3

    goto :goto_63

    :cond_5f
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    :goto_63
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    neg-int p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_6c
    :goto_6c
    return v1
.end method

.method public final a(II)V
    .registers 8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/v4/widget/NestedScrollView;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v4, v0, v2

    if-lez v4, :cond_4b

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    add-int/2addr p2, v1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, v1

    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v2

    invoke-virtual {p2, v2, v1, v0, p1}, Landroid/widget/OverScroller;->startScroll(IIII)V

    invoke-static {p0}, Landroid/support/v4/view/n;->l(Landroid/view/View;)V

    goto :goto_5b

    :cond_4b
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_58
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    :goto_5b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/support/v4/widget/NestedScrollView;->b:J

    return-void
.end method

.method public a(I)Z
    .registers 9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_7

    const/4 v0, 0x0

    :cond_7
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getMaxScrollAmount()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_37

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    invoke-direct {p0, v1, v2, v4}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/graphics/Rect;)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->g(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_74

    :cond_37
    const/16 v1, 0x21

    const/16 v4, 0x82

    if-ne p1, v1, :cond_48

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    if-ge v1, v2, :cond_48

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    goto :goto_6a

    :cond_48
    if-ne p1, v4, :cond_6a

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_6a

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v6, v5

    sub-int/2addr v1, v6

    if-ge v1, v2, :cond_6a

    move v2, v1

    :cond_6a
    :goto_6a
    if-nez v2, :cond_6d

    return v3

    :cond_6d
    if-ne p1, v4, :cond_70

    goto :goto_71

    :cond_70
    neg-int v2, v2

    :goto_71
    invoke-direct {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->g(I)V

    :goto_74
    const/4 p1, 0x1

    if-eqz v0, :cond_97

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v3, v1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;II)Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_97

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    :cond_97
    return p1
.end method

.method a(IIIIIIII)Z
    .registers 21

    move-object v0, p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->computeHorizontalScrollRange()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->computeVerticalScrollRange()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->computeVerticalScrollExtent()I

    move-result v6

    if-le v3, v6, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    if-eqz v1, :cond_2a

    if-ne v1, v5, :cond_28

    if-eqz v2, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v2, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v2, 0x1

    :goto_2b
    if-eqz v1, :cond_34

    if-ne v1, v5, :cond_32

    if-eqz v3, :cond_32

    goto :goto_34

    :cond_32
    const/4 v1, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    const/4 v1, 0x1

    :goto_35
    add-int v3, p3, p1

    if-nez v2, :cond_3b

    const/4 v2, 0x0

    goto :goto_3d

    :cond_3b
    move/from16 v2, p7

    :goto_3d
    add-int v6, p4, p2

    if-nez v1, :cond_43

    const/4 v1, 0x0

    goto :goto_45

    :cond_43
    move/from16 v1, p8

    :goto_45
    neg-int v7, v2

    add-int v2, v2, p5

    neg-int v8, v1

    add-int v1, v1, p6

    if-le v3, v2, :cond_50

    move v7, v2

    :goto_4e
    const/4 v2, 0x1

    goto :goto_55

    :cond_50
    if-ge v3, v7, :cond_53

    goto :goto_4e

    :cond_53
    move v7, v3

    const/4 v2, 0x0

    :goto_55
    if-le v6, v1, :cond_5a

    move v8, v1

    :goto_58
    const/4 v1, 0x1

    goto :goto_5f

    :cond_5a
    if-ge v6, v8, :cond_5d

    goto :goto_58

    :cond_5d
    move v8, v6

    const/4 v1, 0x0

    :goto_5f
    if-eqz v1, :cond_7e

    invoke-virtual {p0, v5}, Landroid/support/v4/widget/NestedScrollView;->d(I)Z

    move-result v3

    if-nez v3, :cond_7e

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v11

    move-object p1, v3

    move p2, v7

    move p3, v8

    move/from16 p4, v6

    move/from16 p5, v9

    move/from16 p6, v10

    move/from16 p7, v11

    invoke-virtual/range {p1 .. p7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    :cond_7e
    invoke-virtual {p0, v7, v8, v2, v1}, Landroid/support/v4/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    if-nez v2, :cond_85

    if-eqz v1, :cond_86

    :cond_85
    const/4 v4, 0x1

    :cond_86
    return v4
.end method

.method public a(IIII[II)Z
    .registers 14

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/g;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/g;->a(IIII[II)Z

    move-result p1

    return p1
.end method

.method public a(II[I[II)Z
    .registers 12

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/g;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/g;->a(II[I[II)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .registers 7

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v4

    if-ge v3, v1, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    const/16 v3, 0x82

    if-nez v1, :cond_50

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_3c

    const/4 p1, 0x0

    :cond_3c
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4f

    if-eq p1, p0, :cond_4f

    invoke-virtual {p1, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result p1

    if-eqz p1, :cond_4f

    const/4 v0, 0x1

    :cond_4f
    return v0

    :cond_50
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_94

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    const/16 v4, 0x21

    if-eq v1, v2, :cond_85

    const/16 v2, 0x14

    if-eq v1, v2, :cond_75

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_69

    goto :goto_94

    :cond_69
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_71

    const/16 v3, 0x21

    :cond_71
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->e(I)Z

    goto :goto_94

    :cond_75
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_80

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->a(I)Z

    move-result v0

    goto :goto_94

    :cond_80
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->c(I)Z

    move-result v0

    goto :goto_94

    :cond_85
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_90

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->a(I)Z

    move-result v0

    goto :goto_94

    :cond_90
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->c(I)Z

    move-result v0

    :cond_94
    :goto_94
    return v0
.end method

.method public addView(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ScrollView can host only one direct child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(I)V
    .registers 15

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2c

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->c(II)Z

    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/NestedScrollView;->v:I

    invoke-static {p0}, Landroid/support/v4/view/n;->l(Landroid/view/View;)V

    :cond_2c
    return-void
.end method

.method public final b(II)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->a(II)V

    return-void
.end method

.method public c(I)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-ne p1, v2, :cond_8

    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->top:I

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_34

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_34

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_34
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->a(III)Z

    move-result p1

    return p1
.end method

.method public c(II)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/g;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/g;->a(II)Z

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollExtent()I
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .registers 16

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8e

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/NestedScrollView;->v:I

    sub-int v3, v0, v3

    const/4 v5, 0x0

    iget-object v7, p0, Landroid/support/v4/widget/NestedScrollView;->t:[I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, p0

    move v6, v3

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/widget/NestedScrollView;->a(II[I[II)Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->t:[I

    aget v4, v4, v2

    sub-int/2addr v3, v4

    :cond_2b
    if-eqz v3, :cond_88

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v13

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v14

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, p0

    move v6, v3

    move v8, v14

    move v10, v13

    invoke-virtual/range {v4 .. v12}, Landroid/support/v4/widget/NestedScrollView;->a(IIIIIIII)Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    sub-int v7, v4, v14

    sub-int v9, v3, v7

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Landroid/support/v4/widget/NestedScrollView;->a(IIII[II)Z

    move-result v3

    if-nez v3, :cond_88

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v3

    if-eqz v3, :cond_61

    if-ne v3, v2, :cond_62

    if-lez v13, :cond_62

    :cond_61
    const/4 v1, 0x1

    :cond_62
    if-eqz v1, :cond_88

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->a()V

    if-gtz v0, :cond_78

    if-lez v14, :cond_78

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_88

    :cond_78
    if-lt v0, v13, :cond_88

    if-ge v14, v13, :cond_88

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_88
    :goto_88
    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->v:I

    invoke-static {p0}, Landroid/support/v4/view/n;->l(Landroid/view/View;)V

    goto :goto_99

    :cond_8e
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->f(I)V

    :cond_97
    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->v:I

    :goto_99
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .registers 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v0, :cond_15

    return v1

    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    sub-int v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gez v3, :cond_2c

    sub-int/2addr v2, v3

    goto :goto_30

    :cond_2c
    if-le v3, v0, :cond_30

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    :cond_30
    :goto_30
    return v2
.end method

.method public d(I)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/g;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/g;->a(I)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/g;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/g;->a(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/g;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/g;->a(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/g;->a(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/g;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/g;->a(IIII[I)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_96

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-static {p0}, Landroid/support/v4/view/n;->l(Landroid/view/View;)V

    :cond_47
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4a
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_96

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    neg-int v4, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v4, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43340000  # 180.0f

    int-to-float v4, v2

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-static {p0}, Landroid/support/v4/view/n;->l(Landroid/view/View;)V

    :cond_93
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_96
    return-void
.end method

.method public e(I)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-ne p1, v2, :cond_8

    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    if-eqz v2, :cond_38

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_49

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v1, v2, :cond_49

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_49

    :cond_38
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_49

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_49
    :goto_49
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->a(III)Z

    move-result p1

    return p1
.end method

.method public f(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/g;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/g;->b(I)V

    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVerticalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    if-ge v2, v0, :cond_2a

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_2a
    const/high16 v0, 0x3f800000  # 1.0f

    return v0
.end method

.method public getMaxScrollAmount()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000  # 0.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNestedScrollAxes()I
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->x:Landroid/support/v4/view/j;

    invoke-virtual {v0}, Landroid/support/v4/view/j;->a()I

    move-result v0

    return v0
.end method

.method getScrollRange()I
    .registers 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_22

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_22
    return v1
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVerticalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_16

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_16
    const/high16 v0, 0x3f800000  # 1.0f

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/g;->a(I)Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/g;

    invoke-virtual {v0}, Landroid/support/v4/view/g;->a()Z

    move-result v0

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, p3}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result p2

    const/4 p3, 0x0

    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, p5

    iget p5, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, p5

    iget p5, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, p5

    add-int/2addr v0, p3

    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v0, p3}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result p2

    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p4

    const/4 p4, 0x0

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->i:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_12

    goto :goto_44

    :cond_12
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Z

    if-nez v0, :cond_44

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_44

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    sub-int p1, v2, p1

    if-gez p1, :cond_36

    const/4 p1, 0x0

    goto :goto_39

    :cond_36
    if-le p1, v0, :cond_39

    move p1, v0

    :cond_39
    :goto_39
    if-eq p1, v2, :cond_44

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    invoke-super {p0, v0, p1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    const/4 p1, 0x1

    return p1

    :cond_44
    :goto_44
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    iget-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->k:Z

    if-eqz v3, :cond_d

    return v1

    :cond_d
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x0

    if-eqz v0, :cond_aa

    const/4 v4, -0x1

    if-eq v0, v1, :cond_85

    if-eq v0, v2, :cond_24

    const/4 v1, 0x3

    if-eq v0, v1, :cond_85

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1f

    goto/16 :goto_113

    :cond_1f
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_113

    :cond_24
    iget v0, p0, Landroid/support/v4/widget/NestedScrollView;->r:I

    if-ne v0, v4, :cond_2a

    goto/16 :goto_113

    :cond_2a
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-ne v5, v4, :cond_4d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid pointerId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NestedScrollView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_113

    :cond_4d
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v4, p0, Landroid/support/v4/widget/NestedScrollView;->g:I

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/widget/NestedScrollView;->o:I

    if-le v4, v5, :cond_113

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v4

    and-int/2addr v2, v4

    if-nez v2, :cond_113

    iput-boolean v1, p0, Landroid/support/v4/widget/NestedScrollView;->k:Z

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->g:I

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    if-nez v0, :cond_73

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    :cond_73
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput v3, p0, Landroid/support/v4/widget/NestedScrollView;->u:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_113

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_113

    :cond_85
    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->k:Z

    iput v4, p0, Landroid/support/v4/widget/NestedScrollView;->r:I

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->b()V

    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_a6

    invoke-static {p0}, Landroid/support/v4/view/n;->l(Landroid/view/View;)V

    :cond_a6
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->f(I)V

    goto :goto_113

    :cond_aa
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    if-lez v5, :cond_de

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v7, v5

    if-lt v0, v7, :cond_de

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int/2addr v7, v5

    if-ge v0, v7, :cond_de

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lt v4, v5, :cond_de

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v4, v5, :cond_de

    const/4 v4, 0x1

    goto :goto_df

    :cond_de
    const/4 v4, 0x0

    :goto_df
    if-nez v4, :cond_e7

    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->k:Z

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->b()V

    goto :goto_113

    :cond_e7
    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->g:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->r:I

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    if-nez v0, :cond_fa

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    goto :goto_fd

    :cond_fa
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_fd
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->k:Z

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/NestedScrollView;->c(II)Z

    :cond_113
    :goto_113
    iget-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->k:Z

    return p1
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->h:Z

    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->j:Landroid/view/View;

    if-eqz p2, :cond_15

    invoke-static {p2, p0}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_15

    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->j:Landroid/view/View;

    invoke-direct {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;)V

    :cond_15
    const/4 p2, 0x0

    iput-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->j:Landroid/view/View;

    iget-boolean p4, p0, Landroid/support/v4/widget/NestedScrollView;->i:Z

    if-nez p4, :cond_68

    iget-object p4, p0, Landroid/support/v4/widget/NestedScrollView;->w:Landroid/support/v4/widget/NestedScrollView$SavedState;

    if-eqz p4, :cond_2d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p4

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->w:Landroid/support/v4/widget/NestedScrollView$SavedState;

    iget v0, v0, Landroid/support/v4/widget/NestedScrollView$SavedState;->b:I

    invoke-virtual {p0, p4, v0}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    iput-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->w:Landroid/support/v4/widget/NestedScrollView$SavedState;

    :cond_2d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    if-lez p2, :cond_3c

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    goto :goto_3d

    :cond_3c
    const/4 p2, 0x0

    :goto_3d
    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    sub-int/2addr p2, p5

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p3

    if-le p3, p2, :cond_5b

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    goto :goto_68

    :cond_5b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p2

    if-gez p2, :cond_68

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    :cond_68
    :goto_68
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->i:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->m:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    if-lez p2, :cond_4c

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-ge v1, v0, :cond_4c

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v2

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v3, v1}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    :cond_4c
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    if-nez p4, :cond_8

    float-to-int p1, p3

    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->h(I)V

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    invoke-virtual {p0, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 5

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[I)Z

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 12

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p5}, Landroid/widget/FrameLayout;->scrollBy(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p2

    sub-int v2, p2, p1

    sub-int v4, p5, v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[I)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->x:Landroid/support/v4/view/j;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/j;->a(Landroid/view/View;Landroid/view/View;I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    const/16 p1, 0x82

    goto :goto_b

    :cond_7
    if-ne p1, v0, :cond_b

    const/16 p1, 0x21

    :cond_b
    :goto_b
    if-nez p2, :cond_17

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_1f

    :cond_17
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    :goto_1f
    const/4 v2, 0x0

    if-nez v1, :cond_23

    return v2

    :cond_23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;II)Z

    move-result v3

    xor-int/2addr v0, v3

    if-eqz v0, :cond_2f

    return v2

    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Landroid/support/v4/widget/NestedScrollView$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Landroid/support/v4/widget/NestedScrollView$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->w:Landroid/support/v4/widget/NestedScrollView$SavedState;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/v4/widget/NestedScrollView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    iput v0, v1, Landroid/support/v4/widget/NestedScrollView$SavedState;->b:I

    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .registers 11

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->A:Landroid/support/v4/widget/NestedScrollView$b;

    if-eqz v0, :cond_f

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView$b;->a(Landroid/support/v4/widget/NestedScrollView;IIII)V

    :cond_f
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_26

    if-ne p0, p1, :cond_c

    goto :goto_26

    :cond_c
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p4}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_26

    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/graphics/Rect;)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->g(I)V

    :cond_26
    :goto_26
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 4

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->x:Landroid/support/v4/view/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/j;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 24

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    if-nez v0, :cond_e

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    :cond_e
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v12, 0x0

    if-nez v0, :cond_1b

    iput v12, v9, Landroid/support/v4/widget/NestedScrollView;->u:I

    :cond_1b
    iget v1, v9, Landroid/support/v4/widget/NestedScrollView;->u:I

    int-to-float v1, v1

    const/4 v6, 0x0

    invoke-virtual {v11, v6, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v1, 0x2

    const/4 v13, 0x1

    if-eqz v0, :cond_244

    const/4 v2, -0x1

    if-eq v0, v13, :cond_1f2

    if-eq v0, v1, :cond_9a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5b

    const/4 v1, 0x5

    if-eq v0, v1, :cond_48

    const/4 v1, 0x6

    if-eq v0, v1, :cond_36

    goto/16 :goto_27c

    :cond_36
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/MotionEvent;)V

    iget v0, v9, Landroid/support/v4/widget/NestedScrollView;->r:I

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v9, Landroid/support/v4/widget/NestedScrollView;->g:I

    goto/16 :goto_27c

    :cond_48
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v9, Landroid/support/v4/widget/NestedScrollView;->g:I

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v9, Landroid/support/v4/widget/NestedScrollView;->r:I

    goto/16 :goto_27c

    :cond_5b
    iget-boolean v0, v9, Landroid/support/v4/widget/NestedScrollView;->k:Z

    if-eqz v0, :cond_82

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_82

    iget-object v14, v9, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v20

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/n;->l(Landroid/view/View;)V

    :cond_82
    iput v2, v9, Landroid/support/v4/widget/NestedScrollView;->r:I

    iput-boolean v12, v9, Landroid/support/v4/widget/NestedScrollView;->k:Z

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->b()V

    invoke-virtual {v9, v12}, Landroid/support/v4/widget/NestedScrollView;->f(I)V

    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_27c

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_27c

    :cond_9a
    iget v0, v9, Landroid/support/v4/widget/NestedScrollView;->r:I

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    if-ne v14, v2, :cond_bd

    const-string v0, "Invalid pointerId="

    invoke-static {v0}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Landroid/support/v4/widget/NestedScrollView;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in onTouchEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NestedScrollView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27c

    :cond_bd
    invoke-virtual {v10, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v7, v0

    iget v0, v9, Landroid/support/v4/widget/NestedScrollView;->g:I

    sub-int v8, v0, v7

    const/4 v1, 0x0

    iget-object v3, v9, Landroid/support/v4/widget/NestedScrollView;->t:[I

    iget-object v4, v9, Landroid/support/v4/widget/NestedScrollView;->s:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView;->a(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_eb

    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->t:[I

    aget v0, v0, v13

    sub-int/2addr v8, v0

    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->s:[I

    aget v0, v0, v13

    int-to-float v0, v0

    invoke-virtual {v11, v6, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v0, v9, Landroid/support/v4/widget/NestedScrollView;->u:I

    iget-object v1, v9, Landroid/support/v4/widget/NestedScrollView;->s:[I

    aget v1, v1, v13

    add-int/2addr v0, v1

    iput v0, v9, Landroid/support/v4/widget/NestedScrollView;->u:I

    :cond_eb
    iget-boolean v0, v9, Landroid/support/v4/widget/NestedScrollView;->k:Z

    if-nez v0, :cond_10b

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v9, Landroid/support/v4/widget/NestedScrollView;->o:I

    if-le v0, v1, :cond_10b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_100

    invoke-interface {v0, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_100
    iput-boolean v13, v9, Landroid/support/v4/widget/NestedScrollView;->k:Z

    if-lez v8, :cond_108

    iget v0, v9, Landroid/support/v4/widget/NestedScrollView;->o:I

    sub-int/2addr v8, v0

    goto :goto_10b

    :cond_108
    iget v0, v9, Landroid/support/v4/widget/NestedScrollView;->o:I

    add-int/2addr v8, v0

    :cond_10b
    :goto_10b
    move v15, v8

    iget-boolean v0, v9, Landroid/support/v4/widget/NestedScrollView;->k:Z

    if-eqz v0, :cond_27c

    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->s:[I

    aget v0, v0, v13

    sub-int/2addr v7, v0

    iput v7, v9, Landroid/support/v4/widget/NestedScrollView;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_12e

    if-ne v0, v13, :cond_12a

    if-lez v8, :cond_12a

    goto :goto_12e

    :cond_12a
    const/4 v0, 0x0

    const/16 v17, 0x0

    goto :goto_131

    :cond_12e
    :goto_12e
    const/4 v0, 0x1

    const/16 v17, 0x1

    :goto_131
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move v2, v15

    move v6, v8

    move/from16 v21, v8

    move/from16 v8, v18

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/NestedScrollView;->a(IIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_154

    invoke-virtual {v9, v12}, Landroid/support/v4/widget/NestedScrollView;->d(I)Z

    move-result v0

    if-nez v0, :cond_154

    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_154
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    sub-int v2, v0, v16

    sub-int v4, v15, v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v5, v9, Landroid/support/v4/widget/NestedScrollView;->s:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/widget/NestedScrollView;->a(IIII[II)Z

    move-result v0

    if-eqz v0, :cond_184

    iget v0, v9, Landroid/support/v4/widget/NestedScrollView;->g:I

    iget-object v1, v9, Landroid/support/v4/widget/NestedScrollView;->s:[I

    aget v2, v1, v13

    sub-int/2addr v0, v2

    iput v0, v9, Landroid/support/v4/widget/NestedScrollView;->g:I

    aget v0, v1, v13

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {v11, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v0, v9, Landroid/support/v4/widget/NestedScrollView;->u:I

    iget-object v1, v9, Landroid/support/v4/widget/NestedScrollView;->s:[I

    aget v1, v1, v13

    add-int/2addr v0, v1

    iput v0, v9, Landroid/support/v4/widget/NestedScrollView;->u:I

    goto/16 :goto_27c

    :cond_184
    if-eqz v17, :cond_27c

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->a()V

    add-int v0, v16, v15

    if-gez v0, :cond_1b1

    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    int-to-float v1, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v10, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/f;->a(Landroid/widget/EdgeEffect;FF)V

    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1db

    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1db

    :cond_1b1
    move/from16 v1, v21

    if-le v0, v1, :cond_1db

    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    int-to-float v1, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v10, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/f;->a(Landroid/widget/EdgeEffect;FF)V

    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1db

    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1db
    :goto_1db
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_27c

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1ed

    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_27c

    :cond_1ed
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/n;->l(Landroid/view/View;)V

    goto/16 :goto_27c

    :cond_1f2
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v3, v9, Landroid/support/v4/widget/NestedScrollView;->q:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, v9, Landroid/support/v4/widget/NestedScrollView;->r:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, v9, Landroid/support/v4/widget/NestedScrollView;->p:I

    if-le v1, v3, :cond_210

    neg-int v0, v0

    invoke-direct {v9, v0}, Landroid/support/v4/widget/NestedScrollView;->h(I)V

    goto :goto_22d

    :cond_210
    iget-object v14, v9, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v20

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_22d

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/n;->l(Landroid/view/View;)V

    :cond_22d
    :goto_22d
    iput v2, v9, Landroid/support/v4/widget/NestedScrollView;->r:I

    iput-boolean v12, v9, Landroid/support/v4/widget/NestedScrollView;->k:Z

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->b()V

    invoke-virtual {v9, v12}, Landroid/support/v4/widget/NestedScrollView;->f(I)V

    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_27c

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_27c

    :cond_244
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_24b

    return v12

    :cond_24b
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v13

    iput-boolean v0, v9, Landroid/support/v4/widget/NestedScrollView;->k:Z

    if-eqz v0, :cond_25f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_25f

    invoke-interface {v0, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_25f
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_26c

    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_26c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v9, Landroid/support/v4/widget/NestedScrollView;->g:I

    invoke-virtual {v10, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v9, Landroid/support/v4/widget/NestedScrollView;->r:I

    invoke-virtual {v9, v1, v12}, Landroid/support/v4/widget/NestedScrollView;->c(II)Z

    :cond_27c
    :goto_27c
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_283

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_283
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    return v13
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->h:Z

    if-nez v0, :cond_8

    invoke-direct {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;)V

    goto :goto_a

    :cond_8
    iput-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->j:Landroid/view/View;

    :goto_a
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/graphics/Rect;)I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_2a

    if-eqz p3, :cond_27

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    goto :goto_2a

    :cond_27
    invoke-virtual {p0, p2, p1}, Landroid/support/v4/widget/NestedScrollView;->a(II)V

    :cond_2a
    :goto_2a
    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->b()V

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->h:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .registers 8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_58

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_29

    if-gez p1, :cond_22

    goto :goto_29

    :cond_22
    add-int v4, v2, p1

    if-le v4, v3, :cond_2a

    sub-int p1, v3, v2

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p1, 0x0

    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ge v2, v1, :cond_48

    if-gez p2, :cond_41

    goto :goto_48

    :cond_41
    add-int v0, v2, p2

    if-le v0, v1, :cond_49

    sub-int p2, v1, v2

    goto :goto_49

    :cond_48
    :goto_48
    const/4 p2, 0x0

    :cond_49
    :goto_49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    if-ne p1, v0, :cond_55

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_58

    :cond_55
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_58
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->m:Z

    if-eq p1, v0, :cond_9

    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->m:Z

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/g;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/g;->a(Z)V

    return-void
.end method

.method public setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$b;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->A:Landroid/support/v4/widget/NestedScrollView$b;

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->n:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public startNestedScroll(I)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/g;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/g;->a(II)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/g;->b(I)V

    return-void
.end method
