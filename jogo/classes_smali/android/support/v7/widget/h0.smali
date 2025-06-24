.class public abstract Landroid/support/v7/widget/h0;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/h0$b;,
        Landroid/support/v7/widget/h0$a;
    }
.end annotation


# instance fields
.field private final b:F

.field private final c:I

.field private final d:I

.field final e:Landroid/view/View;

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Runnable;

.field private h:Z

.field private i:I

.field private final j:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v7/widget/h0;->j:[I

    iput-object p1, p0, Landroid/support/v7/widget/h0;->e:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/h0;->b:F

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/h0;->c:I

    iget p1, p0, Landroid/support/v7/widget/h0;->c:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v1, p1

    div-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/h0;->d:I

    return-void
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/h0;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    iget-object v1, p0, Landroid/support/v7/widget/h0;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/h0;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    iget-object v1, p0, Landroid/support/v7/widget/h0;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method


# virtual methods
.method public abstract a()Landroid/support/v7/view/menu/t;
.end method

.method protected abstract b()Z
.end method

.method protected c()Z
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/widget/h0;->a()Landroid/support/v7/view/menu/t;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/support/v7/view/menu/t;->d()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Landroid/support/v7/view/menu/t;->dismiss()V

    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method d()V
    .registers 12

    invoke-direct {p0}, Landroid/support/v7/widget/h0;->e()V

    iget-object v0, p0, Landroid/support/v7/widget/h0;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_36

    :cond_12
    invoke-virtual {p0}, Landroid/support/v7/widget/h0;->b()Z

    move-result v1

    if-nez v1, :cond_19

    return-void

    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v3, v5

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v2, p0, Landroid/support/v7/widget/h0;->h:Z

    :cond_36
    :goto_36
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14

    iget-boolean p1, p0, Landroid/support/v7/widget/h0;->h:Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_71

    iget-object v3, p0, Landroid/support/v7/widget/h0;->e:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v7/widget/h0;->a()Landroid/support/v7/view/menu/t;

    move-result-object v4

    if-eqz v4, :cond_61

    invoke-interface {v4}, Landroid/support/v7/view/menu/t;->d()Z

    move-result v5

    if-nez v5, :cond_16

    goto :goto_61

    :cond_16
    invoke-interface {v4}, Landroid/support/v7/view/menu/t;->c()Landroid/widget/ListView;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/f0;

    if-eqz v4, :cond_61

    invoke-virtual {v4}, Landroid/widget/ListView;->isShown()Z

    move-result v5

    if-nez v5, :cond_25

    goto :goto_61

    :cond_25
    invoke-static {p2}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/widget/h0;->j:[I

    invoke-virtual {v3, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v6, v1

    int-to-float v3, v3

    aget v6, v6, v2

    int-to-float v6, v6

    invoke-virtual {v5, v3, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v3, p0, Landroid/support/v7/widget/h0;->j:[I

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v6, v3, v1

    neg-int v6, v6

    int-to-float v6, v6

    aget v3, v3, v2

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v5, v6, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v3, p0, Landroid/support/v7/widget/h0;->i:I

    invoke-virtual {v4, v5, v3}, Landroid/support/v7/widget/f0;->a(Landroid/view/MotionEvent;I)Z

    move-result v3

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-eq p2, v2, :cond_5a

    if-eq p2, v0, :cond_5a

    const/4 p2, 0x1

    goto :goto_5b

    :cond_5a
    const/4 p2, 0x0

    :goto_5b
    if-eqz v3, :cond_61

    if-eqz p2, :cond_61

    const/4 p2, 0x1

    goto :goto_62

    :cond_61
    :goto_61
    const/4 p2, 0x0

    :goto_62
    if-nez p2, :cond_6e

    invoke-virtual {p0}, Landroid/support/v7/widget/h0;->c()Z

    move-result p2

    if-nez p2, :cond_6b

    goto :goto_6e

    :cond_6b
    const/4 p2, 0x0

    goto/16 :goto_128

    :cond_6e
    :goto_6e
    const/4 p2, 0x1

    goto/16 :goto_128

    :cond_71
    iget-object v3, p0, Landroid/support/v7/widget/h0;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_7c

    :cond_79
    :goto_79
    const/4 p2, 0x0

    goto/16 :goto_106

    :cond_7c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eqz v4, :cond_d8

    if-eq v4, v2, :cond_d4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_8a

    if-eq v4, v0, :cond_d4

    goto :goto_79

    :cond_8a
    iget v0, p0, Landroid/support/v7/widget/h0;->i:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_79

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    iget v0, p0, Landroid/support/v7/widget/h0;->b:F

    neg-float v5, v0

    cmpl-float v6, v4, v5

    if-ltz v6, :cond_c5

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_c5

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_c5

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v0

    cmpg-float p2, p2, v4

    if-gez p2, :cond_c5

    const/4 p2, 0x1

    goto :goto_c6

    :cond_c5
    const/4 p2, 0x0

    :goto_c6
    if-nez p2, :cond_79

    invoke-direct {p0}, Landroid/support/v7/widget/h0;->e()V

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    invoke-interface {p2, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p2, 0x1

    goto :goto_106

    :cond_d4
    invoke-direct {p0}, Landroid/support/v7/widget/h0;->e()V

    goto :goto_79

    :cond_d8
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/h0;->i:I

    iget-object p2, p0, Landroid/support/v7/widget/h0;->f:Ljava/lang/Runnable;

    if-nez p2, :cond_e9

    new-instance p2, Landroid/support/v7/widget/h0$a;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/h0$a;-><init>(Landroid/support/v7/widget/h0;)V

    iput-object p2, p0, Landroid/support/v7/widget/h0;->f:Ljava/lang/Runnable;

    :cond_e9
    iget-object p2, p0, Landroid/support/v7/widget/h0;->f:Ljava/lang/Runnable;

    iget v0, p0, Landroid/support/v7/widget/h0;->c:I

    int-to-long v4, v0

    invoke-virtual {v3, p2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p2, p0, Landroid/support/v7/widget/h0;->g:Ljava/lang/Runnable;

    if-nez p2, :cond_fc

    new-instance p2, Landroid/support/v7/widget/h0$b;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/h0$b;-><init>(Landroid/support/v7/widget/h0;)V

    iput-object p2, p0, Landroid/support/v7/widget/h0;->g:Ljava/lang/Runnable;

    :cond_fc
    iget-object p2, p0, Landroid/support/v7/widget/h0;->g:Ljava/lang/Runnable;

    iget v0, p0, Landroid/support/v7/widget/h0;->d:I

    int-to-long v4, v0

    invoke-virtual {v3, p2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_79

    :goto_106
    if-eqz p2, :cond_110

    invoke-virtual {p0}, Landroid/support/v7/widget/h0;->b()Z

    move-result p2

    if-eqz p2, :cond_110

    const/4 p2, 0x1

    goto :goto_111

    :cond_110
    const/4 p2, 0x0

    :goto_111
    if-eqz p2, :cond_128

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v3, v5

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/widget/h0;->e:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_128
    :goto_128
    iput-boolean p2, p0, Landroid/support/v7/widget/h0;->h:Z

    if-nez p2, :cond_12e

    if-eqz p1, :cond_12f

    :cond_12e
    const/4 v1, 0x1

    :cond_12f
    return v1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/h0;->h:Z

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/h0;->i:I

    iget-object p1, p0, Landroid/support/v7/widget/h0;->f:Ljava/lang/Runnable;

    if-eqz p1, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/h0;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_f
    return-void
.end method
