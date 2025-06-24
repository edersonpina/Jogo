.class public Lb/b/b/a/j;
.super Lb/b/b/a/i;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/b/a/j$b;,
        Lb/b/b/a/j$a;,
        Lb/b/b/a/j$d;,
        Lb/b/b/a/j$c;,
        Lb/b/b/a/j$e;,
        Lb/b/b/a/j$f;,
        Lb/b/b/a/j$g;
    }
.end annotation


# static fields
.field static final k:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private c:Lb/b/b/a/j$f;

.field private d:Landroid/graphics/PorterDuffColorFilter;

.field private e:Landroid/graphics/ColorFilter;

.field private f:Z

.field private g:Z

.field private final h:[F

.field private final i:Landroid/graphics/Matrix;

.field private final j:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lb/b/b/a/j;->k:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lb/b/b/a/i;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/b/a/j;->g:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lb/b/b/a/j;->h:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb/b/b/a/j;->i:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lb/b/b/a/j;->j:Landroid/graphics/Rect;

    new-instance v0, Lb/b/b/a/j$f;

    invoke-direct {v0}, Lb/b/b/a/j$f;-><init>()V

    iput-object v0, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    return-void
.end method

.method constructor <init>(Lb/b/b/a/j$f;)V
    .registers 3

    invoke-direct {p0}, Lb/b/b/a/i;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/b/a/j;->g:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lb/b/b/a/j;->h:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb/b/b/a/j;->i:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lb/b/b/a/j;->j:Landroid/graphics/Rect;

    iput-object p1, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    iget-object v0, p1, Lb/b/b/a/j$f;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Lb/b/b/a/j$f;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1}, Lb/b/b/a/j;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lb/b/b/a/j;->d:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method static a(IF)I
    .registers 4

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr p0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lb/b/b/a/j;
    .registers 9

    const-string v0, "parser error"

    const-string v1, "VectorDrawableCompat"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_2c

    new-instance v0, Lb/b/b/a/j;

    invoke-direct {v0}, Lb/b/b/a/j;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1a

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1e

    :cond_1a
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_1e
    iput-object p0, v0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    new-instance p0, Lb/b/b/a/j$g;

    iget-object p1, v0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/b/b/a/j$g;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_2c
    :try_start_2c
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    :goto_34
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3f

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3f

    goto :goto_34

    :cond_3f
    if-ne v3, v4, :cond_46

    invoke-static {p0, p1, v2, p2}, Lb/b/b/a/j;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lb/b/b/a/j;

    move-result-object p0

    return-object p0

    :cond_46
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_4e} :catch_53
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_4e} :catch_4e

    :catch_4e
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_57

    :catch_53
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_57
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lb/b/b/a/j;
    .registers 5

    new-instance v0, Lb/b/b/a/j;

    invoke-direct {v0}, Lb/b/b/a/j;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lb/b/b/a/j;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 5

    if-eqz p1, :cond_14

    if-nez p2, :cond_5

    goto :goto_14

    :cond_5
    invoke-super {p0}, Lb/b/b/a/i;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0

    :cond_14
    :goto_14
    const/4 p1, 0x0

    return-object p1
.end method

.method a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    iget-object v0, v0, Lb/b/b/a/j$f;->b:Lb/b/b/a/j$e;

    iget-object v0, v0, Lb/b/b/a/j$e;->o:Lb/b/c/d/a;

    invoke-virtual {v0, p1}, Lb/b/c/d/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method a(Z)V
    .registers 2

    iput-boolean p1, p0, Lb/b/b/a/j;->g:Z

    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 3

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-static {v0, p1}, Lb/b/c/a/h/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    :cond_7
    return-void
.end method

.method public canApplyTheme()Z
    .registers 4

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_d

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 12

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_8
    iget-object v0, p0, Lb/b/b/a/j;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lb/b/b/a/j;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_eb

    iget-object v0, p0, Lb/b/b/a/j;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1f

    goto/16 :goto_eb

    :cond_1f
    iget-object v0, p0, Lb/b/b/a/j;->e:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_25

    iget-object v0, p0, Lb/b/b/a/j;->d:Landroid/graphics/PorterDuffColorFilter;

    :cond_25
    iget-object v1, p0, Lb/b/b/a/j;->i:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lb/b/b/a/j;->i:Landroid/graphics/Matrix;

    iget-object v2, p0, Lb/b/b/a/j;->h:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Lb/b/b/a/j;->h:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lb/b/b/a/j;->h:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lb/b/b/a/j;->h:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v6, p0, Lb/b/b/a/j;->h:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    cmpl-float v4, v4, v8

    if-nez v4, :cond_60

    cmpl-float v4, v6, v8

    if-eqz v4, :cond_64

    :cond_60
    const/high16 v1, 0x3f800000  # 1.0f

    const/high16 v3, 0x3f800000  # 1.0f

    :cond_64
    iget-object v4, p0, Lb/b/b/a/j;->j:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v1, v4

    iget-object v4, p0, Lb/b/b/a/j;->j:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    const/16 v4, 0x800

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v1, :cond_eb

    if-gtz v3, :cond_87

    goto :goto_eb

    :cond_87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-object v6, p0, Lb/b/b/a/j;->j:Landroid/graphics/Rect;

    iget v9, v6, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p1, v9, v6}, Landroid/graphics/Canvas;->translate(FF)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v6, v9, :cond_a9

    invoke-virtual {p0}, Lb/b/b/a/j;->isAutoMirrored()Z

    move-result v6

    if-eqz v6, :cond_a9

    invoke-static {p0}, Lb/b/c/a/h/a;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v6

    if-ne v6, v5, :cond_a9

    goto :goto_aa

    :cond_a9
    const/4 v5, 0x0

    :goto_aa
    if-eqz v5, :cond_bb

    iget-object v5, p0, Lb/b/b/a/j;->j:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, -0x40800000  # -1.0f

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_bb
    iget-object v5, p0, Lb/b/b/a/j;->j:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v2, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    invoke-virtual {v2, v1, v3}, Lb/b/b/a/j$f;->b(II)V

    iget-boolean v2, p0, Lb/b/b/a/j;->g:Z

    if-nez v2, :cond_cf

    iget-object v2, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    invoke-virtual {v2, v1, v3}, Lb/b/b/a/j$f;->c(II)V

    goto :goto_e1

    :cond_cf
    iget-object v2, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    invoke-virtual {v2}, Lb/b/b/a/j$f;->a()Z

    move-result v2

    if-nez v2, :cond_e1

    iget-object v2, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    invoke-virtual {v2, v1, v3}, Lb/b/b/a/j$f;->c(II)V

    iget-object v1, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    invoke-virtual {v1}, Lb/b/b/a/j$f;->c()V

    :cond_e1
    :goto_e1
    iget-object v1, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    iget-object v2, p0, Lb/b/b/a/j;->j:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v0, v2}, Lb/b/b/a/j$f;->a(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_eb
    :goto_eb
    return-void
.end method

.method public getAlpha()I
    .registers 4

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_f

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    iget-object v0, v0, Lb/b/b/a/j$f;->b:Lb/b/b/a/j$e;

    invoke-virtual {v0}, Lb/b/b/a/j$e;->getRootAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    invoke-virtual {v1}, Lb/b/b/a/j$f;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 4

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_14

    new-instance v1, Lb/b/b/a/j$g;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/b/b/a/j$g;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v1

    :cond_14
    iget-object v0, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    invoke-virtual {p0}, Lb/b/b/a/j;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lb/b/b/a/j$f;->a:I

    iget-object v0, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    iget-object v0, v0, Lb/b/b/a/j$f;->b:Lb/b/b/a/j$e;

    iget v0, v0, Lb/b/b/a/j$e;->j:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    iget-object v0, v0, Lb/b/b/a/j$f;->b:Lb/b/b/a/j$e;

    iget v0, v0, Lb/b/b/a/j$e;->i:F

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 5

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lb/b/b/a/j;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1c

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_18

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_1b

    :cond_18
    invoke-virtual {v5, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    :goto_1b
    return-void

    :cond_1c
    iget-object v5, v0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    new-instance v6, Lb/b/b/a/j$e;

    invoke-direct {v6}, Lb/b/b/a/j$e;-><init>()V

    iput-object v6, v5, Lb/b/b/a/j$f;->b:Lb/b/b/a/j$e;

    sget-object v6, Lb/b/b/a/a;->a:[I

    invoke-static {v1, v4, v3, v6}, La/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    iget-object v7, v0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    iget-object v8, v7, Lb/b/b/a/j$f;->b:Lb/b/b/a/j$e;

    const/4 v9, 0x6

    const/4 v10, -0x1

    const-string v11, "tintMode"

    invoke-static {v6, v2, v11, v9, v10}, La/a/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v11, 0x5

    const/4 v12, 0x3

    if-eq v9, v12, :cond_55

    if-eq v9, v11, :cond_57

    const/16 v13, 0x9

    if-eq v9, v13, :cond_52

    packed-switch v9, :pswitch_data_254

    goto :goto_57

    :pswitch_47  #0x10
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_57

    :pswitch_4c  #0xf
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_57

    :pswitch_4f  #0xe
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_57

    :cond_52
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_57

    :cond_55
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    :cond_57
    :goto_57
    iput-object v10, v7, Lb/b/b/a/j$f;->d:Landroid/graphics/PorterDuff$Mode;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    if-eqz v10, :cond_62

    iput-object v10, v7, Lb/b/b/a/j$f;->c:Landroid/content/res/ColorStateList;

    :cond_62
    iget-boolean v10, v7, Lb/b/b/a/j$f;->e:Z

    const-string v13, "autoMirrored"

    invoke-static {v2, v13}, La/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6d

    goto :goto_71

    :cond_6d
    invoke-virtual {v6, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    :goto_71
    iput-boolean v10, v7, Lb/b/b/a/j$f;->e:Z

    const/4 v7, 0x7

    iget v10, v8, Lb/b/b/a/j$e;->k:F

    const-string v11, "viewportWidth"

    invoke-static {v6, v2, v11, v7, v10}, La/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v8, Lb/b/b/a/j$e;->k:F

    const/16 v7, 0x8

    iget v10, v8, Lb/b/b/a/j$e;->l:F

    const-string v11, "viewportHeight"

    invoke-static {v6, v2, v11, v7, v10}, La/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v8, Lb/b/b/a/j$e;->l:F

    iget v7, v8, Lb/b/b/a/j$e;->k:F

    const/4 v10, 0x0

    cmpg-float v7, v7, v10

    if-lez v7, :cond_237

    iget v7, v8, Lb/b/b/a/j$e;->l:F

    cmpg-float v7, v7, v10

    if-lez v7, :cond_21c

    iget v7, v8, Lb/b/b/a/j$e;->i:F

    invoke-virtual {v6, v12, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v8, Lb/b/b/a/j$e;->i:F

    iget v7, v8, Lb/b/b/a/j$e;->j:F

    const/4 v11, 0x2

    invoke-virtual {v6, v11, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v8, Lb/b/b/a/j$e;->j:F

    iget v7, v8, Lb/b/b/a/j$e;->i:F

    cmpg-float v7, v7, v10

    if-lez v7, :cond_201

    iget v7, v8, Lb/b/b/a/j$e;->j:F

    cmpg-float v7, v7, v10

    if-lez v7, :cond_1e6

    const/4 v7, 0x4

    invoke-virtual {v8}, Lb/b/b/a/j$e;->getAlpha()F

    move-result v10

    const-string v13, "alpha"

    invoke-static {v6, v2, v13, v7, v10}, La/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    invoke-virtual {v8, v7}, Lb/b/b/a/j$e;->setAlpha(F)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d0

    iput-object v10, v8, Lb/b/b/a/j$e;->n:Ljava/lang/String;

    iget-object v13, v8, Lb/b/b/a/j$e;->o:Lb/b/c/d/a;

    invoke-virtual {v13, v10, v8}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d0
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p0 .. p0}, Lb/b/b/a/j;->getChangingConfigurations()I

    move-result v6

    iput v6, v5, Lb/b/b/a/j$f;->a:I

    iput-boolean v9, v5, Lb/b/b/a/j$f;->k:Z

    iget-object v6, v0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    iget-object v8, v6, Lb/b/b/a/j$f;->b:Lb/b/b/a/j$e;

    new-instance v10, Ljava/util/Stack;

    invoke-direct {v10}, Ljava/util/Stack;-><init>()V

    iget-object v13, v8, Lb/b/b/a/j$e;->h:Lb/b/b/a/j$c;

    invoke-virtual {v10, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    add-int/2addr v14, v9

    const/4 v15, 0x1

    :goto_f3
    const-string v7, "path"

    if-eq v13, v9, :cond_1aa

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-ge v9, v14, :cond_ff

    if-eq v13, v12, :cond_1aa

    :cond_ff
    const-string v9, "group"

    if-ne v13, v11, :cond_193

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Lb/b/b/a/j$c;

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13a

    new-instance v7, Lb/b/b/a/j$b;

    invoke-direct {v7}, Lb/b/b/a/j$b;-><init>()V

    invoke-virtual {v7, v1, v3, v4, v2}, Lb/b/b/a/j$b;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v9, v11, Lb/b/b/a/j$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lb/b/b/a/j$d;->getPathName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_131

    iget-object v9, v8, Lb/b/b/a/j$e;->o:Lb/b/c/d/a;

    invoke-virtual {v7}, Lb/b/b/a/j$d;->getPathName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11, v7}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_131
    iget v9, v6, Lb/b/b/a/j$f;->a:I

    iget v7, v7, Lb/b/b/a/j$d;->c:I

    or-int/2addr v7, v9

    iput v7, v6, Lb/b/b/a/j$f;->a:I

    const/4 v15, 0x0

    goto :goto_1a2

    :cond_13a
    const-string v7, "clip-path"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_166

    new-instance v7, Lb/b/b/a/j$a;

    invoke-direct {v7}, Lb/b/b/a/j$a;-><init>()V

    invoke-virtual {v7, v1, v3, v4, v2}, Lb/b/b/a/j$a;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v9, v11, Lb/b/b/a/j$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lb/b/b/a/j$d;->getPathName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_15e

    iget-object v9, v8, Lb/b/b/a/j$e;->o:Lb/b/c/d/a;

    invoke-virtual {v7}, Lb/b/b/a/j$d;->getPathName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11, v7}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15e
    iget v9, v6, Lb/b/b/a/j$f;->a:I

    iget v7, v7, Lb/b/b/a/j$d;->c:I

    or-int/2addr v7, v9

    iput v7, v6, Lb/b/b/a/j$f;->a:I

    goto :goto_1a2

    :cond_166
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a2

    new-instance v7, Lb/b/b/a/j$c;

    invoke-direct {v7}, Lb/b/b/a/j$c;-><init>()V

    invoke-virtual {v7, v1, v3, v4, v2}, Lb/b/b/a/j$c;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v9, v11, Lb/b/b/a/j$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lb/b/b/a/j$c;->getGroupName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_18b

    iget-object v9, v8, Lb/b/b/a/j$e;->o:Lb/b/c/d/a;

    invoke-virtual {v7}, Lb/b/b/a/j$c;->getGroupName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11, v7}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18b
    iget v9, v6, Lb/b/b/a/j$f;->a:I

    iget v7, v7, Lb/b/b/a/j$c;->k:I

    or-int/2addr v7, v9

    iput v7, v6, Lb/b/b/a/j$f;->a:I

    goto :goto_1a2

    :cond_193
    if-ne v13, v12, :cond_1a2

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a2

    invoke-virtual {v10}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_1a2
    :goto_1a2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    const/4 v9, 0x1

    const/4 v11, 0x2

    goto/16 :goto_f3

    :cond_1aa
    if-eqz v15, :cond_1db

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_1bc

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1bc
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " defined"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1db
    iget-object v1, v5, Lb/b/b/a/j$f;->c:Landroid/content/res/ColorStateList;

    iget-object v2, v5, Lb/b/b/a/j$f;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Lb/b/b/a/j;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, v0, Lb/b/b/a/j;->d:Landroid/graphics/PorterDuffColorFilter;

    return-void

    :cond_1e6
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires height > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_201
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires width > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21c
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_237
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_253

    :goto_252
    throw v1

    :goto_253
    goto :goto_252

    :pswitch_data_254
    .packed-switch 0xe
        :pswitch_4f  #0000000e
        :pswitch_4c  #0000000f
        :pswitch_47  #00000010
    .end packed-switch
.end method

.method public invalidateSelf()V
    .registers 2

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_8
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .registers 2

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lb/b/c/a/h/a;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    iget-boolean v0, v0, Lb/b/b/a/j$f;->e:Z

    return v0
.end method

.method public isStateful()Z
    .registers 2

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    if-eqz v0, :cond_1e

    iget-object v0, v0, Lb/b/b/a/j$f;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v0, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v0, 0x1

    :goto_21
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_8
    iget-boolean v0, p0, Lb/b/b/a/j;->f:Z

    if-nez v0, :cond_1e

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1e

    new-instance v0, Lb/b/b/a/j$f;

    iget-object v1, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    invoke-direct {v0, v1}, Lb/b/b/a/j$f;-><init>(Lb/b/b/a/j$f;)V

    iput-object v0, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/b/a/j;->f:Z

    :cond_1e
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_7
    return-void
.end method

.method protected onStateChange([I)Z
    .registers 3

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_9
    iget-object p1, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    iget-object v0, p1, Lb/b/b/a/j$f;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1e

    iget-object p1, p1, Lb/b/b/a/j$f;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_1e

    invoke-virtual {p0, v0, p1}, Lb/b/b/a/j;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lb/b/b/a/j;->d:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lb/b/b/a/j;->invalidateSelf()V

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 5

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_8
    iget-object v0, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    iget-object v0, v0, Lb/b/b/a/j$f;->b:Lb/b/b/a/j$e;

    invoke-virtual {v0}, Lb/b/b/a/j$e;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1c

    iget-object v0, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    iget-object v0, v0, Lb/b/b/a/j$f;->b:Lb/b/b/a/j$e;

    invoke-virtual {v0, p1}, Lb/b/b/a/j$e;->setRootAlpha(I)V

    invoke-virtual {p0}, Lb/b/b/a/j;->invalidateSelf()V

    :cond_1c
    return-void
.end method

.method public setAutoMirrored(Z)V
    .registers 3

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-static {v0, p1}, Lb/b/c/a/h/a;->a(Landroid/graphics/drawable/Drawable;Z)V

    return-void

    :cond_8
    iget-object v0, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    iput-boolean p1, v0, Lb/b/b/a/j$f;->e:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_8
    iput-object p1, p0, Lb/b/b/a/j;->e:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lb/b/b/a/j;->invalidateSelf()V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    :cond_7
    return-void
.end method

.method public setHotspot(FF)V
    .registers 4

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-static {v0, p1, p2}, Lb/b/c/a/h/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_7
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-static {v0, p1, p2, p3, p4}, Lb/b/c/a/h/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_7
    return-void
.end method

.method public setTint(I)V
    .registers 3

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-static {v0, p1}, Lb/b/c/a/h/a;->b(Landroid/graphics/drawable/Drawable;I)V

    return-void

    :cond_8
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/b/a/j;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-static {v0, p1}, Lb/b/c/a/h/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    :cond_8
    iget-object v0, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    iget-object v1, v0, Lb/b/b/a/j$f;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1b

    iput-object p1, v0, Lb/b/b/a/j$f;->c:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Lb/b/b/a/j$f;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Lb/b/b/a/j;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lb/b/b/a/j;->d:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lb/b/b/a/j;->invalidateSelf()V

    :cond_1b
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-static {v0, p1}, Lb/b/c/a/h/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_8
    iget-object v0, p0, Lb/b/b/a/j;->c:Lb/b/b/a/j$f;

    iget-object v1, v0, Lb/b/b/a/j$f;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1b

    iput-object p1, v0, Lb/b/b/a/j$f;->d:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, v0, Lb/b/b/a/j$f;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, p1}, Lb/b/b/a/j;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lb/b/b/a/j;->d:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lb/b/b/a/j;->invalidateSelf()V

    :cond_1b
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lb/b/b/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
