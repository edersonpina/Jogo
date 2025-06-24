.class Landroid/support/v7/widget/d1;
.super Ljava/lang/Object;
.source "TooltipPopup.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/view/WindowManager$LayoutParams;

.field private final e:Landroid/graphics/Rect;

.field private final f:[I

.field private final g:[I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/d1;->d:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/d1;->e:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v7/widget/d1;->f:[I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/d1;->g:[I

    iput-object p1, p0, Landroid/support/v7/widget/d1;->a:Landroid/content/Context;

    iget-object p1, p0, Landroid/support/v7/widget/d1;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lb/b/d/a/g;->tooltip:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/d1;->b:Landroid/view/View;

    iget-object p1, p0, Landroid/support/v7/widget/d1;->b:Landroid/view/View;

    sget v0, Lb/b/d/a/f;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/v7/widget/d1;->c:Landroid/widget/TextView;

    iget-object p1, p0, Landroid/support/v7/widget/d1;->d:Landroid/view/WindowManager$LayoutParams;

    const-class v0, Landroid/support/v7/widget/d1;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/support/v7/widget/d1;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Landroid/support/v7/widget/d1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object p1, p0, Landroid/support/v7/widget/d1;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x3ea

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, -0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    sget v0, Lb/b/d/a/i;->Animation_AppCompat_Tooltip:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/d1;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/d1;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/support/v7/widget/d1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method a(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .registers 15

    iget-object v0, p0, Landroid/support/v7/widget/d1;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/support/v7/widget/d1;->a()V

    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/d1;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p5, p0, Landroid/support/v7/widget/d1;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Landroid/support/v7/widget/d1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lb/b/d/a/d;->tooltip_precise_anchor_threshold:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lt v3, v0, :cond_2c

    goto :goto_32

    :cond_2c
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    :goto_32
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lt v3, v0, :cond_48

    iget-object v0, p0, Landroid/support/v7/widget/d1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lb/b/d/a/d;->tooltip_precise_anchor_extra_offset:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int v3, p3, v0

    sub-int/2addr p3, v0

    goto :goto_4d

    :cond_48
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 p3, 0x0

    :goto_4d
    const/16 v0, 0x31

    iput v0, p5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Landroid/support/v7/widget/d1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p4, :cond_5c

    sget v4, Lb/b/d/a/d;->tooltip_y_offset_touch:I

    goto :goto_5e

    :cond_5c
    sget v4, Lb/b/d/a/d;->tooltip_y_offset_non_touch:I

    :goto_5e
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    :goto_66
    instance-of v5, v4, Landroid/content/ContextWrapper;

    if-eqz v5, :cond_80

    instance-of v5, v4, Landroid/app/Activity;

    if-eqz v5, :cond_79

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    goto :goto_84

    :cond_79
    check-cast v4, Landroid/content/ContextWrapper;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    goto :goto_66

    :cond_80
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    :goto_84
    if-nez v4, :cond_8f

    const-string p1, "TooltipPopup"

    const-string p2, "Cannot find app view"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11f

    :cond_8f
    iget-object v5, p0, Landroid/support/v7/widget/d1;->e:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/support/v7/widget/d1;->e:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-gez v6, :cond_c3

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_c3

    iget-object v5, p0, Landroid/support/v7/widget/d1;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "status_bar_height"

    const-string v7, "dimen"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_b5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_b6

    :cond_b5
    const/4 v6, 0x0

    :goto_b6
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget-object v7, p0, Landroid/support/v7/widget/d1;->e:Landroid/graphics/Rect;

    iget v8, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v7, v2, v6, v8, v5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_c3
    iget-object v5, p0, Landroid/support/v7/widget/d1;->g:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v4, p0, Landroid/support/v7/widget/d1;->f:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Landroid/support/v7/widget/d1;->f:[I

    aget v4, p1, v2

    iget-object v5, p0, Landroid/support/v7/widget/d1;->g:[I

    aget v6, v5, v2

    sub-int/2addr v4, v6

    aput v4, p1, v2

    aget v4, p1, v1

    aget v5, v5, v1

    sub-int/2addr v4, v5

    aput v4, p1, v1

    aget p1, p1, v2

    add-int/2addr p1, p2

    iget-object p2, p0, Landroid/support/v7/widget/d1;->e:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/d1;->b:Landroid/view/View;

    invoke-virtual {p2, p1, p1}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Landroid/support/v7/widget/d1;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/d1;->f:[I

    aget v2, p2, v1

    add-int/2addr v2, p3

    sub-int/2addr v2, v0

    sub-int/2addr v2, p1

    aget p2, p2, v1

    add-int/2addr p2, v3

    add-int/2addr p2, v0

    if-eqz p4, :cond_111

    if-ltz v2, :cond_10e

    iput v2, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_11f

    :cond_10e
    iput p2, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_11f

    :cond_111
    add-int/2addr p1, p2

    iget-object p3, p0, Landroid/support/v7/widget/d1;->e:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-gt p1, p3, :cond_11d

    iput p2, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_11f

    :cond_11d
    iput v2, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_11f
    iget-object p1, p0, Landroid/support/v7/widget/d1;->a:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iget-object p2, p0, Landroid/support/v7/widget/d1;->b:Landroid/view/View;

    iget-object p3, p0, Landroid/support/v7/widget/d1;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
