.class Landroid/support/v7/widget/y;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# instance fields
.field final a:Landroid/widget/TextView;

.field private b:Landroid/support/v7/widget/w0;

.field private c:Landroid/support/v7/widget/w0;

.field private d:Landroid/support/v7/widget/w0;

.field private e:Landroid/support/v7/widget/w0;

.field private final f:Landroid/support/v7/widget/b0;

.field private g:I

.field private h:Landroid/graphics/Typeface;

.field private i:Z


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/y;->g:I

    iput-object p1, p0, Landroid/support/v7/widget/y;->a:Landroid/widget/TextView;

    new-instance p1, Landroid/support/v7/widget/b0;

    iget-object v0, p0, Landroid/support/v7/widget/y;->a:Landroid/widget/TextView;

    invoke-direct {p1, v0}, Landroid/support/v7/widget/b0;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroid/support/v7/widget/y;->f:Landroid/support/v7/widget/b0;

    return-void
.end method

.method protected static a(Landroid/content/Context;Landroid/support/v7/widget/j;I)Landroid/support/v7/widget/w0;
    .registers 3

    invoke-virtual {p1, p0, p2}, Landroid/support/v7/widget/j;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_11

    new-instance p1, Landroid/support/v7/widget/w0;

    invoke-direct {p1}, Landroid/support/v7/widget/w0;-><init>()V

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/w0;->d:Z

    iput-object p0, p1, Landroid/support/v7/widget/w0;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Landroid/widget/TextView;)Landroid/support/v7/widget/y;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_c

    new-instance v0, Landroid/support/v7/widget/z;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/z;-><init>(Landroid/widget/TextView;)V

    return-object v0

    :cond_c
    new-instance v0, Landroid/support/v7/widget/y;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/y;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/support/v7/widget/y0;)V
    .registers 7

    sget v0, Lb/b/d/a/j;->TextAppearance_android_textStyle:I

    iget v1, p0, Landroid/support/v7/widget/y;->g:I

    invoke-virtual {p2, v0, v1}, Landroid/support/v7/widget/y0;->d(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/y;->g:I

    sget v0, Lb/b/d/a/j;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_45

    sget v0, Lb/b/d/a/j;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_45

    :cond_1d
    sget p1, Lb/b/d/a/j;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result p1

    if-eqz p1, :cond_44

    iput-boolean v1, p0, Landroid/support/v7/widget/y;->i:Z

    sget p1, Lb/b/d/a/j;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1, v2}, Landroid/support/v7/widget/y0;->d(II)I

    move-result p1

    if-eq p1, v2, :cond_40

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3b

    const/4 p2, 0x3

    if-eq p1, p2, :cond_36

    goto :goto_44

    :cond_36
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/v7/widget/y;->h:Landroid/graphics/Typeface;

    goto :goto_44

    :cond_3b
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/v7/widget/y;->h:Landroid/graphics/Typeface;

    goto :goto_44

    :cond_40
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/v7/widget/y;->h:Landroid/graphics/Typeface;

    :cond_44
    :goto_44
    return-void

    :cond_45
    :goto_45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/y;->h:Landroid/graphics/Typeface;

    sget v0, Lb/b/d/a/j;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result v0

    if-eqz v0, :cond_53

    sget v0, Lb/b/d/a/j;->TextAppearance_fontFamily:I

    goto :goto_55

    :cond_53
    sget v0, Lb/b/d/a/j;->TextAppearance_android_fontFamily:I

    :goto_55
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_78

    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Landroid/support/v7/widget/y;->a:Landroid/widget/TextView;

    invoke-direct {p1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Landroid/support/v7/widget/y$a;

    invoke-direct {v3, p0, p1}, Landroid/support/v7/widget/y$a;-><init>(Landroid/support/v7/widget/y;Ljava/lang/ref/WeakReference;)V

    :try_start_67
    iget p1, p0, Landroid/support/v7/widget/y;->g:I

    invoke-virtual {p2, v0, p1, v3}, Landroid/support/v7/widget/y0;->a(IILandroid/support/v4/content/e/b;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/y;->h:Landroid/graphics/Typeface;

    iget-object p1, p0, Landroid/support/v7/widget/y;->h:Landroid/graphics/Typeface;

    if-nez p1, :cond_74

    const/4 v1, 0x1

    :cond_74
    iput-boolean v1, p0, Landroid/support/v7/widget/y;->i:Z
    :try_end_76
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_67 .. :try_end_76} :catch_77
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_67 .. :try_end_76} :catch_77

    goto :goto_78

    :catch_77
    nop

    :cond_78
    :goto_78
    iget-object p1, p0, Landroid/support/v7/widget/y;->h:Landroid/graphics/Typeface;

    if-nez p1, :cond_8a

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/y0;->d(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8a

    iget p2, p0, Landroid/support/v7/widget/y;->g:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/y;->h:Landroid/graphics/Typeface;

    :cond_8a
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/y;Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v7/widget/y;->i:Z

    if-eqz v0, :cond_13

    iput-object p2, p0, Landroid/support/v7/widget/y;->h:Landroid/graphics/Typeface;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_13

    iget p0, p0, Landroid/support/v7/widget/y;->g:I

    invoke-virtual {p1, p2, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_13
    return-void
.end method


# virtual methods
.method a()V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/y;->b:Landroid/support/v7/widget/w0;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/y;->c:Landroid/support/v7/widget/w0;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/y;->d:Landroid/support/v7/widget/w0;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/y;->e:Landroid/support/v7/widget/w0;

    if-eqz v0, :cond_36

    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/y;->b:Landroid/support/v7/widget/w0;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/y;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/w0;)V

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/y;->c:Landroid/support/v7/widget/w0;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/y;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/w0;)V

    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/y;->d:Landroid/support/v7/widget/w0;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/y;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/w0;)V

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/y;->e:Landroid/support/v7/widget/w0;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/y;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/w0;)V

    :cond_36
    return-void
.end method

.method a(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/y;->f:Landroid/support/v7/widget/b0;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/b0;->a(I)V

    return-void
.end method

.method a(IF)V
    .registers 4

    sget-boolean v0, Landroid/support/v4/widget/b;->a:Z

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/support/v7/widget/y;->h()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/y;->f:Landroid/support/v7/widget/b0;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/b0;->a(IF)V

    :cond_f
    return-void
.end method

.method a(IIII)V
    .registers 6

    iget-object v0, p0, Landroid/support/v7/widget/y;->f:Landroid/support/v7/widget/b0;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/b0;->a(IIII)V

    return-void
.end method

.method a(Landroid/content/Context;I)V
    .registers 5

    sget-object v0, Lb/b/d/a/j;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/y0;->a(Landroid/content/Context;I[I)Landroid/support/v7/widget/y0;

    move-result-object p2

    sget v0, Lb/b/d/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget v0, Lb/b/d/a/j;->TextAppearance_textAllCaps:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/support/v7/widget/y0;->a(IZ)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_1a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_35

    sget v0, Lb/b/d/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result v0

    if-eqz v0, :cond_35

    sget v0, Lb/b/d/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/y0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v1, p0, Landroid/support/v7/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_35
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/y;->a(Landroid/content/Context;Landroid/support/v7/widget/y0;)V

    invoke-virtual {p2}, Landroid/support/v7/widget/y0;->a()V

    iget-object p1, p0, Landroid/support/v7/widget/y;->h:Landroid/graphics/Typeface;

    if-eqz p1, :cond_46

    iget-object p2, p0, Landroid/support/v7/widget/y;->a:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/v7/widget/y;->g:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_46
    return-void
.end method

.method final a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/w0;)V
    .registers 4

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/j;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/w0;[I)V

    :cond_d
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .registers 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/support/v7/widget/j;->a()Landroid/support/v7/widget/j;

    move-result-object v1

    sget-object v2, Lb/b/d/a/j;->AppCompatTextHelper:[I

    const/4 v3, 0x0

    invoke-static {v0, p1, v2, p2, v3}, Landroid/support/v7/widget/y0;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/y0;

    move-result-object v2

    sget v4, Lb/b/d/a/j;->AppCompatTextHelper_android_textAppearance:I

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/support/v7/widget/y0;->g(II)I

    move-result v4

    sget v6, Lb/b/d/a/j;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result v6

    if-eqz v6, :cond_2c

    sget v6, Lb/b/d/a/j;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v2, v6, v3}, Landroid/support/v7/widget/y0;->g(II)I

    move-result v6

    invoke-static {v0, v1, v6}, Landroid/support/v7/widget/y;->a(Landroid/content/Context;Landroid/support/v7/widget/j;I)Landroid/support/v7/widget/w0;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/y;->b:Landroid/support/v7/widget/w0;

    :cond_2c
    sget v6, Lb/b/d/a/j;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result v6

    if-eqz v6, :cond_40

    sget v6, Lb/b/d/a/j;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v2, v6, v3}, Landroid/support/v7/widget/y0;->g(II)I

    move-result v6

    invoke-static {v0, v1, v6}, Landroid/support/v7/widget/y;->a(Landroid/content/Context;Landroid/support/v7/widget/j;I)Landroid/support/v7/widget/w0;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/y;->c:Landroid/support/v7/widget/w0;

    :cond_40
    sget v6, Lb/b/d/a/j;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result v6

    if-eqz v6, :cond_54

    sget v6, Lb/b/d/a/j;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v2, v6, v3}, Landroid/support/v7/widget/y0;->g(II)I

    move-result v6

    invoke-static {v0, v1, v6}, Landroid/support/v7/widget/y;->a(Landroid/content/Context;Landroid/support/v7/widget/j;I)Landroid/support/v7/widget/w0;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/y;->d:Landroid/support/v7/widget/w0;

    :cond_54
    sget v6, Lb/b/d/a/j;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result v6

    if-eqz v6, :cond_68

    sget v6, Lb/b/d/a/j;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v2, v6, v3}, Landroid/support/v7/widget/y0;->g(II)I

    move-result v6

    invoke-static {v0, v1, v6}, Landroid/support/v7/widget/y;->a(Landroid/content/Context;Landroid/support/v7/widget/j;I)Landroid/support/v7/widget/w0;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/y;->e:Landroid/support/v7/widget/w0;

    :cond_68
    invoke-virtual {v2}, Landroid/support/v7/widget/y0;->a()V

    iget-object v1, p0, Landroid/support/v7/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    const/4 v2, 0x1

    const/16 v6, 0x17

    const/4 v7, 0x0

    if-eq v4, v5, :cond_d3

    sget-object v5, Lb/b/d/a/j;->TextAppearance:[I

    invoke-static {v0, v4, v5}, Landroid/support/v7/widget/y0;->a(Landroid/content/Context;I[I)Landroid/support/v7/widget/y0;

    move-result-object v4

    if-nez v1, :cond_92

    sget v5, Lb/b/d/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result v5

    if-eqz v5, :cond_92

    sget v5, Lb/b/d/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v4, v5, v3}, Landroid/support/v7/widget/y0;->a(IZ)Z

    move-result v5

    move v8, v5

    const/4 v5, 0x1

    goto :goto_94

    :cond_92
    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_94
    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/y;->a(Landroid/content/Context;Landroid/support/v7/widget/y0;)V

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v9, v6, :cond_cd

    sget v9, Lb/b/d/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {v4, v9}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result v9

    if-eqz v9, :cond_aa

    sget v9, Lb/b/d/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {v4, v9}, Landroid/support/v7/widget/y0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    goto :goto_ab

    :cond_aa
    move-object v9, v7

    :goto_ab
    sget v10, Lb/b/d/a/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v4, v10}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result v10

    if-eqz v10, :cond_ba

    sget v10, Lb/b/d/a/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v4, v10}, Landroid/support/v7/widget/y0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    goto :goto_bb

    :cond_ba
    move-object v10, v7

    :goto_bb
    sget v11, Lb/b/d/a/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v4, v11}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result v11

    if-eqz v11, :cond_c9

    sget v7, Lb/b/d/a/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v4, v7}, Landroid/support/v7/widget/y0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    :cond_c9
    move-object v12, v9

    move-object v9, v7

    move-object v7, v12

    goto :goto_cf

    :cond_cd
    move-object v9, v7

    move-object v10, v9

    :goto_cf
    invoke-virtual {v4}, Landroid/support/v7/widget/y0;->a()V

    goto :goto_d7

    :cond_d3
    move-object v9, v7

    move-object v10, v9

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_d7
    sget-object v4, Lb/b/d/a/j;->TextAppearance:[I

    invoke-static {v0, p1, v4, p2, v3}, Landroid/support/v7/widget/y0;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/y0;

    move-result-object v4

    if-nez v1, :cond_ee

    sget v11, Lb/b/d/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v4, v11}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result v11

    if-eqz v11, :cond_ee

    sget v5, Lb/b/d/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v4, v5, v3}, Landroid/support/v7/widget/y0;->a(IZ)Z

    move-result v8

    goto :goto_ef

    :cond_ee
    move v2, v5

    :goto_ef
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v5, v6, :cond_11d

    sget v5, Lb/b/d/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result v5

    if-eqz v5, :cond_101

    sget v5, Lb/b/d/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/y0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    :cond_101
    sget v5, Lb/b/d/a/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result v5

    if-eqz v5, :cond_10f

    sget v5, Lb/b/d/a/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/y0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    :cond_10f
    sget v5, Lb/b/d/a/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/y0;->g(I)Z

    move-result v5

    if-eqz v5, :cond_11d

    sget v5, Lb/b/d/a/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/y0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    :cond_11d
    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/y;->a(Landroid/content/Context;Landroid/support/v7/widget/y0;)V

    invoke-virtual {v4}, Landroid/support/v7/widget/y0;->a()V

    if-eqz v7, :cond_12a

    iget-object v0, p0, Landroid/support/v7/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_12a
    if-eqz v10, :cond_131

    iget-object v0, p0, Landroid/support/v7/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_131
    if-eqz v9, :cond_138

    iget-object v0, p0, Landroid/support/v7/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_138
    if-nez v1, :cond_141

    if-eqz v2, :cond_141

    iget-object v0, p0, Landroid/support/v7/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_141
    iget-object v0, p0, Landroid/support/v7/widget/y;->h:Landroid/graphics/Typeface;

    if-eqz v0, :cond_14c

    iget-object v1, p0, Landroid/support/v7/widget/y;->a:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/y;->g:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_14c
    iget-object v0, p0, Landroid/support/v7/widget/y;->f:Landroid/support/v7/widget/b0;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/b0;->a(Landroid/util/AttributeSet;I)V

    sget-boolean p1, Landroid/support/v4/widget/b;->a:Z

    if-eqz p1, :cond_190

    iget-object p1, p0, Landroid/support/v7/widget/y;->f:Landroid/support/v7/widget/b0;

    invoke-virtual {p1}, Landroid/support/v7/widget/b0;->f()I

    move-result p1

    if-eqz p1, :cond_190

    iget-object p1, p0, Landroid/support/v7/widget/y;->f:Landroid/support/v7/widget/b0;

    invoke-virtual {p1}, Landroid/support/v7/widget/b0;->e()[I

    move-result-object p1

    array-length p2, p1

    if-lez p2, :cond_190

    iget-object p2, p0, Landroid/support/v7/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, -0x40800000  # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_18b

    iget-object p1, p0, Landroid/support/v7/widget/y;->a:Landroid/widget/TextView;

    iget-object p2, p0, Landroid/support/v7/widget/y;->f:Landroid/support/v7/widget/b0;

    invoke-virtual {p2}, Landroid/support/v7/widget/b0;->c()I

    move-result p2

    iget-object v0, p0, Landroid/support/v7/widget/y;->f:Landroid/support/v7/widget/b0;

    invoke-virtual {v0}, Landroid/support/v7/widget/b0;->b()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/y;->f:Landroid/support/v7/widget/b0;

    invoke-virtual {v1}, Landroid/support/v7/widget/b0;->d()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1, v3}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_190

    :cond_18b
    iget-object p2, p0, Landroid/support/v7/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p1, v3}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    :cond_190
    :goto_190
    return-void
.end method

.method a([II)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/y;->f:Landroid/support/v7/widget/b0;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/b0;->a([II)V

    return-void
.end method

.method b()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/y;->f:Landroid/support/v7/widget/b0;

    invoke-virtual {v0}, Landroid/support/v7/widget/b0;->a()V

    return-void
.end method

.method c()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/y;->f:Landroid/support/v7/widget/b0;

    invoke-virtual {v0}, Landroid/support/v7/widget/b0;->b()I

    move-result v0

    return v0
.end method

.method d()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/y;->f:Landroid/support/v7/widget/b0;

    invoke-virtual {v0}, Landroid/support/v7/widget/b0;->c()I

    move-result v0

    return v0
.end method

.method e()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/y;->f:Landroid/support/v7/widget/b0;

    invoke-virtual {v0}, Landroid/support/v7/widget/b0;->d()I

    move-result v0

    return v0
.end method

.method f()[I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/y;->f:Landroid/support/v7/widget/b0;

    invoke-virtual {v0}, Landroid/support/v7/widget/b0;->e()[I

    move-result-object v0

    return-object v0
.end method

.method g()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/y;->f:Landroid/support/v7/widget/b0;

    invoke-virtual {v0}, Landroid/support/v7/widget/b0;->f()I

    move-result v0

    return v0
.end method

.method h()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/y;->f:Landroid/support/v7/widget/b0;

    invoke-virtual {v0}, Landroid/support/v7/widget/b0;->g()Z

    move-result v0

    return v0
.end method

.method i()V
    .registers 2

    sget-boolean v0, Landroid/support/v4/widget/b;->a:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/y;->f:Landroid/support/v7/widget/b0;

    invoke-virtual {v0}, Landroid/support/v7/widget/b0;->a()V

    :cond_9
    return-void
.end method
