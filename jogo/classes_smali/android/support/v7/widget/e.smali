.class Landroid/support/v7/widget/e;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/support/v7/widget/j;

.field private c:I

.field private d:Landroid/support/v7/widget/w0;

.field private e:Landroid/support/v7/widget/w0;

.field private f:Landroid/support/v7/widget/w0;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/e;->c:I

    iput-object p1, p0, Landroid/support/v7/widget/e;->a:Landroid/view/View;

    invoke-static {}, Landroid/support/v7/widget/j;->a()Landroid/support/v7/widget/j;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/j;

    return-void
.end method


# virtual methods
.method a()V
    .registers 6

    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_77

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_18

    iget-object v1, p0, Landroid/support/v7/widget/e;->d:Landroid/support/v7/widget/w0;

    if-eqz v1, :cond_16

    :goto_14
    const/4 v1, 0x1

    goto :goto_1b

    :cond_16
    const/4 v1, 0x0

    goto :goto_1b

    :cond_18
    if-ne v1, v2, :cond_16

    goto :goto_14

    :goto_1b
    if-eqz v1, :cond_5c

    iget-object v1, p0, Landroid/support/v7/widget/e;->f:Landroid/support/v7/widget/w0;

    if-nez v1, :cond_28

    new-instance v1, Landroid/support/v7/widget/w0;

    invoke-direct {v1}, Landroid/support/v7/widget/w0;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/e;->f:Landroid/support/v7/widget/w0;

    :cond_28
    iget-object v1, p0, Landroid/support/v7/widget/e;->f:Landroid/support/v7/widget/w0;

    invoke-virtual {v1}, Landroid/support/v7/widget/w0;->a()V

    iget-object v2, p0, Landroid/support/v7/widget/e;->a:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/n;->b(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_39

    iput-boolean v3, v1, Landroid/support/v7/widget/w0;->d:Z

    iput-object v2, v1, Landroid/support/v7/widget/w0;->a:Landroid/content/res/ColorStateList;

    :cond_39
    iget-object v2, p0, Landroid/support/v7/widget/e;->a:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/n;->c(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    if-eqz v2, :cond_45

    iput-boolean v3, v1, Landroid/support/v7/widget/w0;->c:Z

    iput-object v2, v1, Landroid/support/v7/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_45
    iget-boolean v2, v1, Landroid/support/v7/widget/w0;->d:Z

    if-nez v2, :cond_50

    iget-boolean v2, v1, Landroid/support/v7/widget/w0;->c:Z

    if-eqz v2, :cond_4e

    goto :goto_50

    :cond_4e
    const/4 v3, 0x0

    goto :goto_59

    :cond_50
    :goto_50
    iget-object v2, p0, Landroid/support/v7/widget/e;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/j;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/w0;[I)V

    :goto_59
    if-eqz v3, :cond_5c

    return-void

    :cond_5c
    iget-object v1, p0, Landroid/support/v7/widget/e;->e:Landroid/support/v7/widget/w0;

    if-eqz v1, :cond_6a

    iget-object v2, p0, Landroid/support/v7/widget/e;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/j;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/w0;[I)V

    goto :goto_77

    :cond_6a
    iget-object v1, p0, Landroid/support/v7/widget/e;->d:Landroid/support/v7/widget/w0;

    if-eqz v1, :cond_77

    iget-object v2, p0, Landroid/support/v7/widget/e;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/j;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/w0;[I)V

    :cond_77
    :goto_77
    return-void
.end method

.method a(I)V
    .registers 4

    iput p1, p0, Landroid/support/v7/widget/e;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/j;

    if-eqz v0, :cond_11

    iget-object v1, p0, Landroid/support/v7/widget/e;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/j;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/e;->a(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/e;->a()V

    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .registers 3

    if-eqz p1, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/e;->d:Landroid/support/v7/widget/w0;

    if-nez v0, :cond_d

    new-instance v0, Landroid/support/v7/widget/w0;

    invoke-direct {v0}, Landroid/support/v7/widget/w0;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/e;->d:Landroid/support/v7/widget/w0;

    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/e;->d:Landroid/support/v7/widget/w0;

    iput-object p1, v0, Landroid/support/v7/widget/w0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v7/widget/w0;->d:Z

    goto :goto_18

    :cond_15
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/e;->d:Landroid/support/v7/widget/w0;

    :goto_18
    invoke-virtual {p0}, Landroid/support/v7/widget/e;->a()V

    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/e;->e:Landroid/support/v7/widget/w0;

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v7/widget/w0;

    invoke-direct {v0}, Landroid/support/v7/widget/w0;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/e;->e:Landroid/support/v7/widget/w0;

    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/e;->e:Landroid/support/v7/widget/w0;

    iput-object p1, v0, Landroid/support/v7/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v7/widget/w0;->c:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/e;->a()V

    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .registers 6

    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lb/b/d/a/j;->ViewBackgroundHelper:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroid/support/v7/widget/y0;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/y0;

    move-result-object p1

    :try_start_d
    sget p2, Lb/b/d/a/j;->ViewBackgroundHelper_android_background:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_31

    sget p2, Lb/b/d/a/j;->ViewBackgroundHelper_android_background:I

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/y0;->g(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/e;->c:I

    iget-object p2, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/j;

    iget-object v1, p0, Landroid/support/v7/widget/e;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/e;->c:I

    invoke-virtual {p2, v1, v2}, Landroid/support/v7/widget/j;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_31

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/e;->a(Landroid/content/res/ColorStateList;)V

    :cond_31
    sget p2, Lb/b/d/a/j;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result p2

    if-eqz p2, :cond_44

    iget-object p2, p0, Landroid/support/v7/widget/e;->a:Landroid/view/View;

    sget v1, Lb/b/d/a/j;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/y0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/support/v4/view/n;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_44
    sget p2, Lb/b/d/a/j;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result p2

    if-eqz p2, :cond_5c

    iget-object p2, p0, Landroid/support/v7/widget/e;->a:Landroid/view/View;

    sget v1, Lb/b/d/a/j;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/y0;->d(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/e0;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/support/v4/view/n;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_5c
    .catchall {:try_start_d .. :try_end_5c} :catchall_60

    :cond_5c
    invoke-virtual {p1}, Landroid/support/v7/widget/y0;->a()V

    return-void

    :catchall_60
    move-exception p2

    invoke-virtual {p1}, Landroid/support/v7/widget/y0;->a()V

    throw p2
.end method

.method b()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/e;->e:Landroid/support/v7/widget/w0;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/support/v7/widget/w0;->a:Landroid/content/res/ColorStateList;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/e;->e:Landroid/support/v7/widget/w0;

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v7/widget/w0;

    invoke-direct {v0}, Landroid/support/v7/widget/w0;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/e;->e:Landroid/support/v7/widget/w0;

    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/e;->e:Landroid/support/v7/widget/w0;

    iput-object p1, v0, Landroid/support/v7/widget/w0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v7/widget/w0;->d:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/e;->a()V

    return-void
.end method

.method c()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/e;->e:Landroid/support/v7/widget/w0;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/support/v7/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method d()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/e;->c:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/e;->a(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/e;->a()V

    return-void
.end method
