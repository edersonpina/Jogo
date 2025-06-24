.class public Landroid/support/v7/widget/a1;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/support/v7/widget/d0;


# instance fields
.field a:Landroid/support/v7/widget/Toolbar;

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Z

.field i:Ljava/lang/CharSequence;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field l:Landroid/view/Window$Callback;

.field m:Z

.field private n:Landroid/support/v7/widget/ActionMenuPresenter;

.field private o:I

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .registers 9

    sget v0, Lb/b/d/a/h;->abc_action_bar_up_description:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/widget/a1;->o:I

    iput v1, p0, Landroid/support/v7/widget/a1;->p:I

    iput-object p1, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/a1;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/a1;->j:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/v7/widget/a1;->i:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    iput-boolean v2, p0, Landroid/support/v7/widget/a1;->h:Z

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/a1;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lb/b/d/a/j;->ActionBar:[I

    sget v4, Lb/b/d/a/a;->actionBarStyle:I

    const/4 v5, 0x0

    invoke-static {p1, v5, v2, v4, v1}, Landroid/support/v7/widget/y0;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/y0;

    move-result-object p1

    sget v2, Lb/b/d/a/j;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/y0;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/a1;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_139

    sget p2, Lb/b/d/a/j;->ActionBar_title:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/y0;->e(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_50

    iput-boolean v3, p0, Landroid/support/v7/widget/a1;->h:Z

    invoke-direct {p0, p2}, Landroid/support/v7/widget/a1;->b(Ljava/lang/CharSequence;)V

    :cond_50
    sget p2, Lb/b/d/a/j;->ActionBar_subtitle:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/y0;->e(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_69

    iput-object p2, p0, Landroid/support/v7/widget/a1;->j:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/support/v7/widget/a1;->b:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_69

    iget-object v2, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, p2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_69
    sget p2, Lb/b/d/a/j;->ActionBar_logo:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/y0;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_74

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/a1;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_74
    sget p2, Lb/b/d/a/j;->ActionBar_icon:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/y0;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_81

    iput-object p2, p0, Landroid/support/v7/widget/a1;->e:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v7/widget/a1;->k()V

    :cond_81
    iget-object p2, p0, Landroid/support/v7/widget/a1;->g:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_8e

    iget-object p2, p0, Landroid/support/v7/widget/a1;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_8e

    iput-object p2, p0, Landroid/support/v7/widget/a1;->g:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v7/widget/a1;->j()V

    :cond_8e
    sget p2, Lb/b/d/a/j;->ActionBar_displayOptions:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/y0;->d(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/a1;->a(I)V

    sget p2, Lb/b/d/a/j;->ActionBar_customNavigationLayout:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/y0;->g(II)I

    move-result p2

    if-eqz p2, :cond_d6

    iget-object v2, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, p2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v2, p0, Landroid/support/v7/widget/a1;->d:Landroid/view/View;

    if-eqz v2, :cond_be

    iget v3, p0, Landroid/support/v7/widget/a1;->b:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_be

    iget-object v3, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_be
    iput-object p2, p0, Landroid/support/v7/widget/a1;->d:Landroid/view/View;

    if-eqz p2, :cond_cf

    iget p2, p0, Landroid/support/v7/widget/a1;->b:I

    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_cf

    iget-object p2, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/widget/a1;->d:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_cf
    iget p2, p0, Landroid/support/v7/widget/a1;->b:I

    or-int/lit8 p2, p2, 0x10

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/a1;->a(I)V

    :cond_d6
    sget p2, Lb/b/d/a/j;->ActionBar_height:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/y0;->f(II)I

    move-result p2

    if-lez p2, :cond_eb

    iget-object v2, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_eb
    sget p2, Lb/b/d/a/j;->ActionBar_contentInsetStart:I

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v2}, Landroid/support/v7/widget/y0;->b(II)I

    move-result p2

    sget v3, Lb/b/d/a/j;->ActionBar_contentInsetEnd:I

    invoke-virtual {p1, v3, v2}, Landroid/support/v7/widget/y0;->b(II)I

    move-result v2

    if-gez p2, :cond_fc

    if-ltz v2, :cond_109

    :cond_fc
    iget-object v3, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v3, p2, v2}, Landroid/support/v7/widget/Toolbar;->a(II)V

    :cond_109
    sget p2, Lb/b/d/a/j;->ActionBar_titleTextStyle:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/y0;->g(II)I

    move-result p2

    if-eqz p2, :cond_11a

    iget-object v2, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/content/Context;I)V

    :cond_11a
    sget p2, Lb/b/d/a/j;->ActionBar_subtitleTextStyle:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/y0;->g(II)I

    move-result p2

    if-eqz p2, :cond_12b

    iget-object v2, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/content/Context;I)V

    :cond_12b
    sget p2, Lb/b/d/a/j;->ActionBar_popupTheme:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/y0;->g(II)I

    move-result p2

    if-eqz p2, :cond_150

    iget-object v1, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    goto :goto_150

    :cond_139
    iget-object p2, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_14c

    const/16 p2, 0xf

    iget-object v1, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/a1;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_14e

    :cond_14c
    const/16 p2, 0xb

    :goto_14e
    iput p2, p0, Landroid/support/v7/widget/a1;->b:I

    :cond_150
    :goto_150
    invoke-virtual {p1}, Landroid/support/v7/widget/y0;->a()V

    iget p1, p0, Landroid/support/v7/widget/a1;->p:I

    if-ne v0, p1, :cond_158

    goto :goto_178

    :cond_158
    iput v0, p0, Landroid/support/v7/widget/a1;->p:I

    iget-object p1, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_178

    iget p1, p0, Landroid/support/v7/widget/a1;->p:I

    if-nez p1, :cond_16b

    goto :goto_173

    :cond_16b
    invoke-virtual {p0}, Landroid/support/v7/widget/a1;->b()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_173
    iput-object v5, p0, Landroid/support/v7/widget/a1;->k:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/support/v7/widget/a1;->i()V

    :cond_178
    :goto_178
    iget-object p1, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/a1;->k:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    new-instance p2, Landroid/support/v7/widget/z0;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/z0;-><init>(Landroid/support/v7/widget/a1;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/widget/a1;->i:Ljava/lang/CharSequence;

    iget v0, p0, Landroid/support/v7/widget/a1;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method private i()V
    .registers 3

    iget v0, p0, Landroid/support/v7/widget/a1;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/support/v7/widget/a1;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/widget/a1;->p:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_1d

    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/a1;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method private j()V
    .registers 3

    iget v0, p0, Landroid/support/v7/widget/a1;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/a1;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    goto :goto_f

    :cond_d
    iget-object v1, p0, Landroid/support/v7/widget/a1;->q:Landroid/graphics/drawable/Drawable;

    :goto_f
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_19

    :cond_13
    iget-object v0, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_19
    return-void
.end method

.method private k()V
    .registers 3

    iget v0, p0, Landroid/support/v7/widget/a1;->b:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_15

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/a1;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    goto :goto_16

    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/a1;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_16

    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/a1;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iget-object v1, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a(IJ)Landroid/support/v4/view/q;
    .registers 6

    iget-object v0, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/n;->a(Landroid/view/View;)Landroid/support/v4/view/q;

    move-result-object v0

    if-nez p1, :cond_b

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Landroid/support/v4/view/q;->a(F)Landroid/support/v4/view/q;

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/view/q;->a(J)Landroid/support/v4/view/q;

    new-instance p2, Landroid/support/v7/widget/a1$a;

    invoke-direct {p2, p0, p1}, Landroid/support/v7/widget/a1$a;-><init>(Landroid/support/v7/widget/a1;I)V

    invoke-virtual {v0, p2}, Landroid/support/v4/view/q;->a(Landroid/support/v4/view/r;)Landroid/support/v4/view/q;

    return-object v0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->c()V

    return-void
.end method

.method public a(I)V
    .registers 5

    iget v0, p0, Landroid/support/v7/widget/a1;->b:I

    xor-int/2addr v0, p1

    iput p1, p0, Landroid/support/v7/widget/a1;->b:I

    if-eqz v0, :cond_55

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_15

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_12

    invoke-direct {p0}, Landroid/support/v7/widget/a1;->i()V

    :cond_12
    invoke-direct {p0}, Landroid/support/v7/widget/a1;->j()V

    :cond_15
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1c

    invoke-direct {p0}, Landroid/support/v7/widget/a1;->k()V

    :cond_1c
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3e

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/widget/a1;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/widget/a1;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_3e

    :cond_33
    iget-object v1, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_3e
    :goto_3e
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_55

    iget-object v0, p0, Landroid/support/v7/widget/a1;->d:Landroid/view/View;

    if-eqz v0, :cond_55

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_50

    iget-object p1, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_55

    :cond_50
    iget-object p1, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_55
    :goto_55
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/a1;->e:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v7/widget/a1;->k()V

    return-void
.end method

.method public a(Landroid/support/v7/widget/r0;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v7/widget/a1;->c:Landroid/view/View;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/a1;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_11
    iput-object p1, p0, Landroid/support/v7/widget/a1;->c:Landroid/view/View;

    if-eqz p1, :cond_38

    iget v0, p0, Landroid/support/v7/widget/a1;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_38

    iget-object v0, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/a1;->c:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/support/v7/widget/a1;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$e;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v1, 0x800053

    iput v1, v0, Landroid/support/v7/app/a$a;->a:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/r0;->setAllowCollapse(Z)V

    :cond_38
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/support/v7/view/menu/p$a;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v7/widget/a1;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    if-nez v0, :cond_18

    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/a1;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v0, p0, Landroid/support/v7/widget/a1;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    sget v1, Lb/b/d/a/f;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/b;->a(I)V

    :cond_18
    iget-object v0, p0, Landroid/support/v7/widget/a1;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Landroid/support/v7/view/menu/b;->a(Landroid/support/v7/view/menu/p$a;)V

    iget-object p2, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    check-cast p1, Landroid/support/v7/view/menu/h;

    iget-object v0, p0, Landroid/support/v7/widget/a1;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p2, p1, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/view/menu/h;Landroid/support/v7/widget/ActionMenuPresenter;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v7/widget/a1;->h:Z

    if-nez v0, :cond_11

    iput-object p1, p0, Landroid/support/v7/widget/a1;->i:Ljava/lang/CharSequence;

    iget v0, p0, Landroid/support/v7/widget/a1;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_11
    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setCollapsible(Z)V

    return-void
.end method

.method public b()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .registers 3

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/support/v7/widget/a1;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/b/d/b/a/b;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    iput-object p1, p0, Landroid/support/v7/widget/a1;->e:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v7/widget/a1;->k()V

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/a1;->f:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v7/widget/a1;->k()V

    return-void
.end method

.method public b(Z)V
    .registers 2

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/a1;->b:I

    return v0
.end method

.method public c(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/a1;->o:I

    return v0
.end method

.method public e()Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->f()Z

    move-result v0

    return v0
.end method

.method public g()V
    .registers 3

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public h()V
    .registers 3

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
