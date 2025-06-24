.class Landroid/support/v7/widget/c1;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field private static j:Landroid/support/v7/widget/c1;

.field private static k:Landroid/support/v7/widget/c1;


# instance fields
.field private final b:Landroid/view/View;

.field private final c:Ljava/lang/CharSequence;

.field private final d:Ljava/lang/Runnable;

.field private final e:Ljava/lang/Runnable;

.field private f:I

.field private g:I

.field private h:Landroid/support/v7/widget/d1;

.field private i:Z


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v7/widget/c1$a;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/c1$a;-><init>(Landroid/support/v7/widget/c1;)V

    iput-object v0, p0, Landroid/support/v7/widget/c1;->d:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v7/widget/c1$b;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/c1$b;-><init>(Landroid/support/v7/widget/c1;)V

    iput-object v0, p0, Landroid/support/v7/widget/c1;->e:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/support/v7/widget/c1;->b:Landroid/view/View;

    iput-object p2, p0, Landroid/support/v7/widget/c1;->c:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroid/support/v7/widget/c1;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Landroid/support/v7/widget/c1;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private a()V
    .registers 4

    sget-object v0, Landroid/support/v7/widget/c1;->k:Landroid/support/v7/widget/c1;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_1d

    sput-object v1, Landroid/support/v7/widget/c1;->k:Landroid/support/v7/widget/c1;

    iget-object v0, p0, Landroid/support/v7/widget/c1;->h:Landroid/support/v7/widget/d1;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/support/v7/widget/d1;->a()V

    iput-object v1, p0, Landroid/support/v7/widget/c1;->h:Landroid/support/v7/widget/d1;

    iget-object v0, p0, Landroid/support/v7/widget/c1;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_1d

    :cond_16
    const-string v0, "TooltipCompatHandler"

    const-string v2, "sActiveHandler.mPopup == null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_1d
    sget-object v0, Landroid/support/v7/widget/c1;->j:Landroid/support/v7/widget/c1;

    if-ne v0, p0, :cond_24

    invoke-static {v1}, Landroid/support/v7/widget/c1;->b(Landroid/support/v7/widget/c1;)V

    :cond_24
    iget-object v0, p0, Landroid/support/v7/widget/c1;->b:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/c1;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/c1;)V
    .registers 1

    invoke-direct {p0}, Landroid/support/v7/widget/c1;->a()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/c1;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/c1;->a(Z)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4

    sget-object v0, Landroid/support/v7/widget/c1;->j:Landroid/support/v7/widget/c1;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, v0, Landroid/support/v7/widget/c1;->b:Landroid/view/View;

    if-ne v0, p0, :cond_c

    invoke-static {v1}, Landroid/support/v7/widget/c1;->b(Landroid/support/v7/widget/c1;)V

    :cond_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object p1, Landroid/support/v7/widget/c1;->k:Landroid/support/v7/widget/c1;

    if-eqz p1, :cond_1d

    iget-object v0, p1, Landroid/support/v7/widget/c1;->b:Landroid/view/View;

    if-ne v0, p0, :cond_1d

    invoke-direct {p1}, Landroid/support/v7/widget/c1;->a()V

    :cond_1d
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_2d

    :cond_28
    new-instance v0, Landroid/support/v7/widget/c1;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/c1;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_2d
    return-void
.end method

.method private a(Z)V
    .registers 9

    iget-object v0, p0, Landroid/support/v7/widget/c1;->b:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/n;->j(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/support/v7/widget/c1;->b(Landroid/support/v7/widget/c1;)V

    sget-object v0, Landroid/support/v7/widget/c1;->k:Landroid/support/v7/widget/c1;

    if-eqz v0, :cond_14

    invoke-direct {v0}, Landroid/support/v7/widget/c1;->a()V

    :cond_14
    sput-object p0, Landroid/support/v7/widget/c1;->k:Landroid/support/v7/widget/c1;

    iput-boolean p1, p0, Landroid/support/v7/widget/c1;->i:Z

    new-instance p1, Landroid/support/v7/widget/d1;

    iget-object v0, p0, Landroid/support/v7/widget/c1;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/widget/d1;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/support/v7/widget/c1;->h:Landroid/support/v7/widget/d1;

    iget-object v1, p0, Landroid/support/v7/widget/c1;->h:Landroid/support/v7/widget/d1;

    iget-object v2, p0, Landroid/support/v7/widget/c1;->b:Landroid/view/View;

    iget v3, p0, Landroid/support/v7/widget/c1;->f:I

    iget v4, p0, Landroid/support/v7/widget/c1;->g:I

    iget-boolean v5, p0, Landroid/support/v7/widget/c1;->i:Z

    iget-object v6, p0, Landroid/support/v7/widget/c1;->c:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/widget/d1;->a(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/support/v7/widget/c1;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-boolean p1, p0, Landroid/support/v7/widget/c1;->i:Z

    if-eqz p1, :cond_40

    const-wide/16 v0, 0x9c4

    goto :goto_59

    :cond_40
    iget-object p1, p0, Landroid/support/v7/widget/c1;->b:Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/n;->g(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_51

    const-wide/16 v0, 0xbb8

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    goto :goto_57

    :cond_51
    const-wide/16 v0, 0x3a98

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    :goto_57
    int-to-long v2, p1

    sub-long/2addr v0, v2

    :goto_59
    iget-object p1, p0, Landroid/support/v7/widget/c1;->b:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/c1;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroid/support/v7/widget/c1;->b:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/c1;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static b(Landroid/support/v7/widget/c1;)V
    .registers 4

    sget-object v0, Landroid/support/v7/widget/c1;->j:Landroid/support/v7/widget/c1;

    if-eqz v0, :cond_b

    iget-object v1, v0, Landroid/support/v7/widget/c1;->b:Landroid/view/View;

    iget-object v0, v0, Landroid/support/v7/widget/c1;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_b
    sput-object p0, Landroid/support/v7/widget/c1;->j:Landroid/support/v7/widget/c1;

    sget-object p0, Landroid/support/v7/widget/c1;->j:Landroid/support/v7/widget/c1;

    if-eqz p0, :cond_1d

    iget-object v0, p0, Landroid/support/v7/widget/c1;->b:Landroid/view/View;

    iget-object p0, p0, Landroid/support/v7/widget/c1;->d:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d
    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object p1, p0, Landroid/support/v7/widget/c1;->h:Landroid/support/v7/widget/d1;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Landroid/support/v7/widget/c1;->i:Z

    if-eqz p1, :cond_a

    return v0

    :cond_a
    iget-object p1, p0, Landroid/support/v7/widget/c1;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_25

    return v0

    :cond_25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_35

    const/16 p2, 0xa

    if-eq p1, p2, :cond_31

    goto :goto_52

    :cond_31
    invoke-direct {p0}, Landroid/support/v7/widget/c1;->a()V

    goto :goto_52

    :cond_35
    iget-object p1, p0, Landroid/support/v7/widget/c1;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_52

    iget-object p1, p0, Landroid/support/v7/widget/c1;->h:Landroid/support/v7/widget/d1;

    if-nez p1, :cond_52

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/c1;->f:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/c1;->g:I

    invoke-static {p0}, Landroid/support/v7/widget/c1;->b(Landroid/support/v7/widget/c1;)V

    :cond_52
    :goto_52
    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/c1;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/support/v7/widget/c1;->g:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/c1;->a(Z)V

    return p1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Landroid/support/v7/widget/c1;->a()V

    return-void
.end method
