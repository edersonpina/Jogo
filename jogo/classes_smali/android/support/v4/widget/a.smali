.class public abstract Landroid/support/v4/widget/a;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/a$a;,
        Landroid/support/v4/widget/a$b;
    }
.end annotation


# static fields
.field private static final s:I


# instance fields
.field final b:Landroid/support/v4/widget/a$a;

.field private final c:Landroid/view/animation/Interpolator;

.field final d:Landroid/view/View;

.field private e:Ljava/lang/Runnable;

.field private f:[F

.field private g:[F

.field private h:I

.field private i:I

.field private j:[F

.field private k:[F

.field private l:[F

.field private m:Z

.field n:Z

.field o:Z

.field p:Z

.field private q:Z

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/widget/a;->s:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/widget/a$a;

    invoke-direct {v0}, Landroid/support/v4/widget/a$a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/a;->b:Landroid/support/v4/widget/a$a;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/a;->c:Landroid/view/animation/Interpolator;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_94

    iput-object v1, p0, Landroid/support/v4/widget/a;->f:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_9c

    iput-object v1, p0, Landroid/support/v4/widget/a;->g:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_a4

    iput-object v1, p0, Landroid/support/v4/widget/a;->j:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_ac

    iput-object v1, p0, Landroid/support/v4/widget/a;->k:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_b4

    iput-object v0, p0, Landroid/support/v4/widget/a;->l:[F

    iput-object p1, p0, Landroid/support/v4/widget/a;->d:Landroid/view/View;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const v0, 0x44c4e000  # 1575.0f

    mul-float v0, v0, p1

    const/high16 v1, 0x3f000000  # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const v2, 0x439d8000  # 315.0f

    mul-float p1, p1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float v0, v0

    iget-object v1, p0, Landroid/support/v4/widget/a;->l:[F

    const/high16 v2, 0x447a0000  # 1000.0f

    div-float/2addr v0, v2

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v4, 0x1

    aput v0, v1, v4

    int-to-float p1, p1

    iget-object v0, p0, Landroid/support/v4/widget/a;->k:[F

    div-float/2addr p1, v2

    aput p1, v0, v3

    aput p1, v0, v4

    iput v4, p0, Landroid/support/v4/widget/a;->h:I

    iget-object p1, p0, Landroid/support/v4/widget/a;->g:[F

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    aput v0, p1, v3

    aput v0, p1, v4

    iget-object p1, p0, Landroid/support/v4/widget/a;->f:[F

    const v0, 0x3e4ccccd  # 0.2f

    aput v0, p1, v3

    aput v0, p1, v4

    iget-object p1, p0, Landroid/support/v4/widget/a;->j:[F

    const v0, 0x3a83126f  # 0.001f

    aput v0, p1, v3

    aput v0, p1, v4

    sget p1, Landroid/support/v4/widget/a;->s:I

    iput p1, p0, Landroid/support/v4/widget/a;->i:I

    iget-object p1, p0, Landroid/support/v4/widget/a;->b:Landroid/support/v4/widget/a$a;

    const/16 v0, 0x1f4

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/a$a;->b(I)V

    iget-object p1, p0, Landroid/support/v4/widget/a;->b:Landroid/support/v4/widget/a$a;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/a$a;->a(I)V

    return-void

    nop

    :array_94
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_9c
    .array-data 4
        0x7f7fffff  # Float.MAX_VALUE
        0x7f7fffff  # Float.MAX_VALUE
    .end array-data

    :array_a4
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_ac
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_b4
    .array-data 4
        0x7f7fffff  # Float.MAX_VALUE
        0x7f7fffff  # Float.MAX_VALUE
    .end array-data
.end method

.method private a(FF)F
    .registers 7

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_6

    return v0

    :cond_6
    iget v1, p0, Landroid/support/v4/widget/a;->h:I

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    if-eq v1, v2, :cond_18

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    goto :goto_2e

    :cond_11
    cmpg-float v1, p1, v0

    if-gez v1, :cond_2e

    neg-float p2, p2

    div-float/2addr p1, p2

    return p1

    :cond_18
    cmpg-float v1, p1, p2

    if-gez v1, :cond_2e

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v3, p1, v0

    if-ltz v3, :cond_25

    div-float/2addr p1, p2

    sub-float/2addr v1, p1

    return v1

    :cond_25
    iget-boolean p1, p0, Landroid/support/v4/widget/a;->p:Z

    if-eqz p1, :cond_2e

    iget p1, p0, Landroid/support/v4/widget/a;->h:I

    if-ne p1, v2, :cond_2e

    return v1

    :cond_2e
    :goto_2e
    return v0
.end method

.method static a(FFF)F
    .registers 4

    cmpl-float v0, p0, p2

    if-lez v0, :cond_5

    return p2

    :cond_5
    cmpg-float p2, p0, p1

    if-gez p2, :cond_a

    return p1

    :cond_a
    return p0
.end method

.method private a(IFFF)F
    .registers 8

    iget-object v0, p0, Landroid/support/v4/widget/a;->f:[F

    aget v0, v0, p1

    iget-object v1, p0, Landroid/support/v4/widget/a;->g:[F

    aget v1, v1, p1

    mul-float v0, v0, p3

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/support/v4/widget/a;->a(FFF)F

    move-result v0

    invoke-direct {p0, p2, v0}, Landroid/support/v4/widget/a;->a(FF)F

    move-result v1

    sub-float/2addr p3, p2

    invoke-direct {p0, p3, v0}, Landroid/support/v4/widget/a;->a(FF)F

    move-result p2

    sub-float/2addr p2, v1

    cmpg-float p3, p2, v2

    if-gez p3, :cond_26

    iget-object p3, p0, Landroid/support/v4/widget/a;->c:Landroid/view/animation/Interpolator;

    neg-float p2, p2

    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    neg-float p2, p2

    goto :goto_30

    :cond_26
    cmpl-float p3, p2, v2

    if-lez p3, :cond_39

    iget-object p3, p0, Landroid/support/v4/widget/a;->c:Landroid/view/animation/Interpolator;

    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    :goto_30
    const/high16 p3, -0x40800000  # -1.0f

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p2, p3, v0}, Landroid/support/v4/widget/a;->a(FFF)F

    move-result p2

    goto :goto_3a

    :cond_39
    const/4 p2, 0x0

    :goto_3a
    cmpl-float p3, p2, v2

    if-nez p3, :cond_3f

    return v2

    :cond_3f
    iget-object p3, p0, Landroid/support/v4/widget/a;->j:[F

    aget p3, p3, p1

    iget-object v0, p0, Landroid/support/v4/widget/a;->k:[F

    aget v0, v0, p1

    iget-object v1, p0, Landroid/support/v4/widget/a;->l:[F

    aget p1, v1, p1

    mul-float p3, p3, p4

    cmpl-float p4, p2, v2

    if-lez p4, :cond_58

    mul-float p2, p2, p3

    invoke-static {p2, v0, p1}, Landroid/support/v4/widget/a;->a(FFF)F

    move-result p1

    return p1

    :cond_58
    neg-float p2, p2

    mul-float p2, p2, p3

    invoke-static {p2, v0, p1}, Landroid/support/v4/widget/a;->a(FFF)F

    move-result p1

    neg-float p1, p1

    return p1
.end method

.method static a(III)I
    .registers 3

    if-le p0, p2, :cond_3

    return p2

    :cond_3
    if-ge p0, p1, :cond_6

    return p1

    :cond_6
    return p0
.end method


# virtual methods
.method public a(Z)Landroid/support/v4/widget/a;
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/widget/a;->q:Z

    if-eqz v0, :cond_13

    if-nez p1, :cond_13

    iget-boolean v0, p0, Landroid/support/v4/widget/a;->n:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/a;->p:Z

    goto :goto_13

    :cond_e
    iget-object v0, p0, Landroid/support/v4/widget/a;->b:Landroid/support/v4/widget/a$a;

    invoke-virtual {v0}, Landroid/support/v4/widget/a$a;->g()V

    :cond_13
    :goto_13
    iput-boolean p1, p0, Landroid/support/v4/widget/a;->q:Z

    return-object p0
.end method

.method a()V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v0, v2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/a;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public abstract a(II)V
.end method

.method public abstract a(I)Z
.end method

.method b()Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/a;->b:Landroid/support/v4/widget/a$a;

    invoke-virtual {v0}, Landroid/support/v4/widget/a$a;->e()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v4/widget/a$a;->d()I

    move-result v0

    if-eqz v1, :cond_15

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x1

    goto :goto_1b

    :cond_15
    :goto_15
    if-eqz v0, :cond_1a

    move-object v0, p0

    check-cast v0, Landroid/support/v4/widget/h;

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    iget-boolean v0, p0, Landroid/support/v4/widget/a;->q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    if-eq v0, v2, :cond_16

    const/4 v3, 0x2

    if-eq v0, v3, :cond_27

    const/4 p1, 0x3

    if-eq v0, p1, :cond_16

    goto :goto_85

    :cond_16
    iget-boolean p1, p0, Landroid/support/v4/widget/a;->n:Z

    if-eqz p1, :cond_1d

    iput-boolean v1, p0, Landroid/support/v4/widget/a;->p:Z

    goto :goto_85

    :cond_1d
    iget-object p1, p0, Landroid/support/v4/widget/a;->b:Landroid/support/v4/widget/a$a;

    invoke-virtual {p1}, Landroid/support/v4/widget/a$a;->g()V

    goto :goto_85

    :cond_23
    iput-boolean v2, p0, Landroid/support/v4/widget/a;->o:Z

    iput-boolean v1, p0, Landroid/support/v4/widget/a;->m:Z

    :cond_27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroid/support/v4/widget/a;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, v1, v0, v3, v4}, Landroid/support/v4/widget/a;->a(IFFF)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v3, p0, Landroid/support/v4/widget/a;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v2, p2, p1, v3}, Landroid/support/v4/widget/a;->a(IFFF)F

    move-result p1

    iget-object p2, p0, Landroid/support/v4/widget/a;->b:Landroid/support/v4/widget/a$a;

    invoke-virtual {p2, v0, p1}, Landroid/support/v4/widget/a$a;->a(FF)V

    iget-boolean p1, p0, Landroid/support/v4/widget/a;->p:Z

    if-nez p1, :cond_85

    invoke-virtual {p0}, Landroid/support/v4/widget/a;->b()Z

    move-result p1

    if-eqz p1, :cond_85

    iget-object p1, p0, Landroid/support/v4/widget/a;->e:Ljava/lang/Runnable;

    if-nez p1, :cond_69

    new-instance p1, Landroid/support/v4/widget/a$b;

    invoke-direct {p1, p0}, Landroid/support/v4/widget/a$b;-><init>(Landroid/support/v4/widget/a;)V

    iput-object p1, p0, Landroid/support/v4/widget/a;->e:Ljava/lang/Runnable;

    :cond_69
    iput-boolean v2, p0, Landroid/support/v4/widget/a;->p:Z

    iput-boolean v2, p0, Landroid/support/v4/widget/a;->n:Z

    iget-boolean p1, p0, Landroid/support/v4/widget/a;->m:Z

    if-nez p1, :cond_7e

    iget p1, p0, Landroid/support/v4/widget/a;->i:I

    if-lez p1, :cond_7e

    iget-object p2, p0, Landroid/support/v4/widget/a;->d:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v4/widget/a;->e:Ljava/lang/Runnable;

    int-to-long v3, p1

    invoke-static {p2, v0, v3, v4}, Landroid/support/v4/view/n;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_83

    :cond_7e
    iget-object p1, p0, Landroid/support/v4/widget/a;->e:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_83
    iput-boolean v2, p0, Landroid/support/v4/widget/a;->m:Z

    :cond_85
    :goto_85
    iget-boolean p1, p0, Landroid/support/v4/widget/a;->r:Z

    if-eqz p1, :cond_8e

    iget-boolean p1, p0, Landroid/support/v4/widget/a;->p:Z

    if-eqz p1, :cond_8e

    const/4 v1, 0x1

    :cond_8e
    return v1
.end method
