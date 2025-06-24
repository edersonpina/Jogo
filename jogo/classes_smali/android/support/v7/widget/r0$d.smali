.class Landroid/support/v7/widget/r0$d;
.super Landroid/support/v7/widget/i0;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final q:[I

.field private r:Landroid/support/v7/app/a$c;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/view/View;

.field final synthetic v:Landroid/support/v7/widget/r0;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/r0;Landroid/content/Context;Landroid/support/v7/app/a$c;Z)V
    .registers 8

    iput-object p1, p0, Landroid/support/v7/widget/r0$d;->v:Landroid/support/v7/widget/r0;

    sget p1, Lb/b/d/a/a;->actionBarTabStyle:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Landroid/support/v7/widget/i0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v1, 0x0

    const v2, 0x10100d4

    aput v2, p1, v1

    iput-object p1, p0, Landroid/support/v7/widget/r0$d;->q:[I

    iput-object p3, p0, Landroid/support/v7/widget/r0$d;->r:Landroid/support/v7/app/a$c;

    iget-object p1, p0, Landroid/support/v7/widget/r0$d;->q:[I

    sget p3, Lb/b/d/a/a;->actionBarTabStyle:I

    invoke-static {p2, v0, p1, p3, v1}, Landroid/support/v7/widget/y0;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/y0;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result p2

    if-eqz p2, :cond_2a

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/y0;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2a
    invoke-virtual {p1}, Landroid/support/v7/widget/y0;->a()V

    if-eqz p4, :cond_35

    const p1, 0x800013

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/i0;->setGravity(I)V

    :cond_35
    invoke-virtual {p0}, Landroid/support/v7/widget/r0$d;->h()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/app/a$c;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/r0$d;->r:Landroid/support/v7/app/a$c;

    invoke-virtual {p0}, Landroid/support/v7/widget/r0$d;->h()V

    return-void
.end method

.method public g()Landroid/support/v7/app/a$c;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/r0$d;->r:Landroid/support/v7/app/a$c;

    return-object v0
.end method

.method public h()V
    .registers 11

    iget-object v0, p0, Landroid/support/v7/widget/r0$d;->r:Landroid/support/v7/app/a$c;

    invoke-virtual {v0}, Landroid/support/v7/app/a$c;->b()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1b

    if-eqz v0, :cond_18

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_18
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1b
    iput-object v1, p0, Landroid/support/v7/widget/r0$d;->u:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/widget/r0$d;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_24
    iget-object v0, p0, Landroid/support/v7/widget/r0$d;->t:Landroid/widget/ImageView;

    if-eqz v0, :cond_d3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/r0$d;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d3

    :cond_32
    iget-object v1, p0, Landroid/support/v7/widget/r0$d;->u:Landroid/view/View;

    if-eqz v1, :cond_3b

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Landroid/support/v7/widget/r0$d;->u:Landroid/view/View;

    :cond_3b
    invoke-virtual {v0}, Landroid/support/v7/app/a$c;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v7/app/a$c;->d()Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, -0x2

    if-eqz v1, :cond_70

    iget-object v8, p0, Landroid/support/v7/widget/r0$d;->t:Landroid/widget/ImageView;

    if-nez v8, :cond_65

    new-instance v8, Landroid/support/v7/widget/o;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/support/v7/widget/o;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/support/v7/widget/i0$a;

    invoke-direct {v9, v7, v7}, Landroid/support/v7/widget/i0$a;-><init>(II)V

    iput v5, v9, Landroid/support/v7/widget/i0$a;->b:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iput-object v8, p0, Landroid/support/v7/widget/r0$d;->t:Landroid/widget/ImageView;

    :cond_65
    iget-object v8, p0, Landroid/support/v7/widget/r0$d;->t:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroid/support/v7/widget/r0$d;->t:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7c

    :cond_70
    iget-object v1, p0, Landroid/support/v7/widget/r0$d;->t:Landroid/widget/ImageView;

    if-eqz v1, :cond_7c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v7/widget/r0$d;->t:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7c
    :goto_7c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b2

    iget-object v2, p0, Landroid/support/v7/widget/r0$d;->s:Landroid/widget/TextView;

    if-nez v2, :cond_a7

    new-instance v2, Landroid/support/v7/widget/a0;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lb/b/d/a/a;->actionBarTabTextStyle:I

    invoke-direct {v2, v8, v3, v9}, Landroid/support/v7/widget/a0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v8, Landroid/support/v7/widget/i0$a;

    invoke-direct {v8, v7, v7}, Landroid/support/v7/widget/i0$a;-><init>(II)V

    iput v5, v8, Landroid/support/v7/widget/i0$a;->b:I

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v2, p0, Landroid/support/v7/widget/r0$d;->s:Landroid/widget/TextView;

    :cond_a7
    iget-object v2, p0, Landroid/support/v7/widget/r0$d;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/support/v7/widget/r0$d;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_be

    :cond_b2
    iget-object v4, p0, Landroid/support/v7/widget/r0$d;->s:Landroid/widget/TextView;

    if-eqz v4, :cond_be

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Landroid/support/v7/widget/r0$d;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_be
    :goto_be
    iget-object v2, p0, Landroid/support/v7/widget/r0$d;->t:Landroid/widget/ImageView;

    if-eqz v2, :cond_c9

    invoke-virtual {v0}, Landroid/support/v7/app/a$c;->a()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c9
    if-eqz v1, :cond_cc

    goto :goto_d0

    :cond_cc
    invoke-virtual {v0}, Landroid/support/v7/app/a$c;->a()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_d0
    invoke-static {p0, v3}, Landroid/support/v7/widget/b1;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_d3
    :goto_d3
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v7/widget/i0;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v7/app/a$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v7/widget/i0;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/support/v7/app/a$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/i0;->onMeasure(II)V

    iget-object p1, p0, Landroid/support/v7/widget/r0$d;->v:Landroid/support/v7/widget/r0;

    iget p1, p1, Landroid/support/v7/widget/r0;->g:I

    if-lez p1, :cond_1c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Landroid/support/v7/widget/r0$d;->v:Landroid/support/v7/widget/r0;

    iget v0, v0, Landroid/support/v7/widget/r0;->g:I

    if-le p1, v0, :cond_1c

    const/high16 p1, 0x40000000  # 2.0f

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/i0;->onMeasure(II)V

    :cond_1c
    return-void
.end method

.method public setSelected(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setSelected(Z)V

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_14
    return-void
.end method
