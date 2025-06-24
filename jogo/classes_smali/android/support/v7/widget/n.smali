.class public Landroid/support/v7/widget/n;
.super Ljava/lang/Object;
.source "AppCompatImageHelper.java"


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private b:Landroid/support/v7/widget/w0;

.field private c:Landroid/support/v7/widget/w0;

.field private d:Landroid/support/v7/widget/w0;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method a()V
    .registers 6

    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Landroid/support/v7/widget/e0;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    if-eqz v0, :cond_7c

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_1d

    iget-object v1, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/w0;

    if-eqz v1, :cond_1b

    :goto_19
    const/4 v1, 0x1

    goto :goto_20

    :cond_1b
    const/4 v1, 0x0

    goto :goto_20

    :cond_1d
    if-ne v1, v2, :cond_1b

    goto :goto_19

    :goto_20
    if-eqz v1, :cond_61

    iget-object v1, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/w0;

    if-nez v1, :cond_2d

    new-instance v1, Landroid/support/v7/widget/w0;

    invoke-direct {v1}, Landroid/support/v7/widget/w0;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/w0;

    :cond_2d
    iget-object v1, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/w0;

    invoke-virtual {v1}, Landroid/support/v7/widget/w0;->a()V

    iget-object v2, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/support/v4/widget/g;->a(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_3e

    iput-boolean v3, v1, Landroid/support/v7/widget/w0;->d:Z

    iput-object v2, v1, Landroid/support/v7/widget/w0;->a:Landroid/content/res/ColorStateList;

    :cond_3e
    iget-object v2, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/support/v4/widget/g;->b(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    if-eqz v2, :cond_4a

    iput-boolean v3, v1, Landroid/support/v7/widget/w0;->c:Z

    iput-object v2, v1, Landroid/support/v7/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_4a
    iget-boolean v2, v1, Landroid/support/v7/widget/w0;->d:Z

    if-nez v2, :cond_55

    iget-boolean v2, v1, Landroid/support/v7/widget/w0;->c:Z

    if-eqz v2, :cond_53

    goto :goto_55

    :cond_53
    const/4 v3, 0x0

    goto :goto_5e

    :cond_55
    :goto_55
    iget-object v2, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/j;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/w0;[I)V

    :goto_5e
    if-eqz v3, :cond_61

    return-void

    :cond_61
    iget-object v1, p0, Landroid/support/v7/widget/n;->c:Landroid/support/v7/widget/w0;

    if-eqz v1, :cond_6f

    iget-object v2, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/j;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/w0;[I)V

    goto :goto_7c

    :cond_6f
    iget-object v1, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/w0;

    if-eqz v1, :cond_7c

    iget-object v2, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/j;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/w0;[I)V

    :cond_7c
    :goto_7c
    return-void
.end method

.method public a(I)V
    .registers 3

    if-eqz p1, :cond_17

    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/b/d/b/a/b;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-static {p1}, Landroid/support/v7/widget/e0;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    :cond_17
    iget-object p1, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1d
    invoke-virtual {p0}, Landroid/support/v7/widget/n;->a()V

    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Landroid/support/v7/widget/w0;

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v7/widget/w0;

    invoke-direct {v0}, Landroid/support/v7/widget/w0;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/n;->c:Landroid/support/v7/widget/w0;

    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Landroid/support/v7/widget/w0;

    iput-object p1, v0, Landroid/support/v7/widget/w0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v7/widget/w0;->d:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/n;->a()V

    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Landroid/support/v7/widget/w0;

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v7/widget/w0;

    invoke-direct {v0}, Landroid/support/v7/widget/w0;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/n;->c:Landroid/support/v7/widget/w0;

    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Landroid/support/v7/widget/w0;

    iput-object p1, v0, Landroid/support/v7/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v7/widget/w0;->c:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/n;->a()V

    return-void
.end method

.method public a(Landroid/util/AttributeSet;I)V
    .registers 6

    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lb/b/d/a/j;->AppCompatImageView:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroid/support/v7/widget/y0;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/y0;

    move-result-object p1

    :try_start_d
    iget-object p2, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, -0x1

    if-nez p2, :cond_2f

    sget v1, Lb/b/d/a/j;->AppCompatImageView_srcCompat:I

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/y0;->g(II)I

    move-result v1

    if-eq v1, v0, :cond_2f

    iget-object p2, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lb/b/d/b/a/b;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2f

    iget-object v1, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2f
    if-eqz p2, :cond_34

    invoke-static {p2}, Landroid/support/v7/widget/e0;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_34
    sget p2, Lb/b/d/a/j;->AppCompatImageView_tint:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result p2

    if-eqz p2, :cond_47

    iget-object p2, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/ImageView;

    sget v1, Lb/b/d/a/j;->AppCompatImageView_tint:I

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/y0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/support/v4/widget/g;->a(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    :cond_47
    sget p2, Lb/b/d/a/j;->AppCompatImageView_tintMode:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result p2

    if-eqz p2, :cond_5f

    iget-object p2, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/ImageView;

    sget v1, Lb/b/d/a/j;->AppCompatImageView_tintMode:I

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/y0;->d(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/e0;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/support/v4/widget/g;->a(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_5f
    .catchall {:try_start_d .. :try_end_5f} :catchall_63

    :cond_5f
    invoke-virtual {p1}, Landroid/support/v7/widget/y0;->a()V

    return-void

    :catchall_63
    move-exception p2

    invoke-virtual {p1}, Landroid/support/v7/widget/y0;->a()V

    throw p2
.end method

.method b()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Landroid/support/v7/widget/w0;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/support/v7/widget/w0;->a:Landroid/content/res/ColorStateList;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method c()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Landroid/support/v7/widget/w0;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/support/v7/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method d()Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_12

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    return v0

    :cond_12
    const/4 v0, 0x1

    return v0
.end method
