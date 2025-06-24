.class public Landroid/support/v7/widget/y0;
.super Ljava/lang/Object;
.source "TintTypedArray.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/res/TypedArray;

.field private c:Landroid/util/TypedValue;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/y0;->a:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    return-void
.end method

.method public static a(Landroid/content/Context;I[I)Landroid/support/v7/widget/y0;
    .registers 4

    new-instance v0, Landroid/support/v7/widget/y0;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/y0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/y0;
    .registers 4

    new-instance v0, Landroid/support/v7/widget/y0;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/y0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/y0;
    .registers 6

    new-instance v0, Landroid/support/v7/widget/y0;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/y0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method


# virtual methods
.method public a(IF)F
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    return p1
.end method

.method public a(II)I
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    return p1
.end method

.method public a(I)Landroid/content/res/ColorStateList;
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/support/v7/widget/y0;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lb/b/d/b/a/b;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1a

    return-object v0

    :cond_1a
    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public a(IILandroid/support/v4/content/e/b;)Landroid/graphics/Typeface;
    .registers 16

    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_b

    return-object v0

    :cond_b
    iget-object v1, p0, Landroid/support/v7/widget/y0;->c:Landroid/util/TypedValue;

    if-nez v1, :cond_16

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/y0;->c:Landroid/util/TypedValue;

    :cond_16
    iget-object v2, p0, Landroid/support/v7/widget/y0;->a:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/widget/y0;->c:Landroid/util/TypedValue;

    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_22

    goto/16 :goto_df

    :cond_22
    const/4 v9, 0x1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v3, 0x1

    invoke-virtual {v4, p1, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    const-string v10, "ResourcesCompat"

    iget-object v3, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v3, :cond_e0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "res/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v11, -0x3

    if-nez v3, :cond_45

    if-eqz p3, :cond_be

    invoke-virtual {p3, v11, v0}, Landroid/support/v4/content/e/b;->a(ILandroid/os/Handler;)V

    goto/16 :goto_be

    :cond_45
    invoke-static {v4, p1, p2}, Lb/b/c/a/c;->b(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v3, :cond_53

    if-eqz p3, :cond_50

    invoke-virtual {p3, v3, v0}, Landroid/support/v4/content/e/b;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    :cond_50
    move-object v0, v3

    goto/16 :goto_be

    :cond_53
    :try_start_53
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, ".xml"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/support/v4/content/e/a;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/e/a$a;

    move-result-object v3

    if-nez v3, :cond_74

    const-string p2, "Failed to find font-family tag"

    invoke-static {v10, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_be

    invoke-virtual {p3, v11, v0}, Landroid/support/v4/content/e/b;->a(ILandroid/os/Handler;)V

    goto :goto_be

    :cond_74
    const/4 v8, 0x0

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v9}, Lb/b/c/a/c;->a(Landroid/content/Context;Landroid/support/v4/content/e/a$a;Landroid/content/res/Resources;IILandroid/support/v4/content/e/b;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    move-result-object p2

    goto :goto_8c

    :cond_7d
    invoke-static {v2, v4, p1, v1, p2}, Lb/b/c/a/c;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p3, :cond_8c

    if-eqz p2, :cond_89

    invoke-virtual {p3, p2, v0}, Landroid/support/v4/content/e/b;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_8c

    :cond_89
    invoke-virtual {p3, v11, v0}, Landroid/support/v4/content/e/b;->a(ILandroid/os/Handler;)V
    :try_end_8c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53 .. :try_end_8c} :catch_a4
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_8c} :catch_8e

    :cond_8c
    :goto_8c
    move-object v0, p2

    goto :goto_be

    :catch_8e
    move-exception p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read xml resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b9

    :catch_a4
    move-exception p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse xml resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b9
    if-eqz p3, :cond_be

    invoke-virtual {p3, v11, v0}, Landroid/support/v4/content/e/b;->a(ILandroid/os/Handler;)V

    :cond_be
    :goto_be
    if-nez v0, :cond_df

    if-eqz p3, :cond_c3

    goto :goto_df

    :cond_c3
    new-instance p2, Landroid/content/res/Resources$NotFoundException;

    const-string p3, "Font resource ID #0x"

    invoke-static {p3}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not be retrieved."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_df
    :goto_df
    return-object v0

    :cond_e0
    new-instance p2, Landroid/content/res/Resources$NotFoundException;

    const-string p3, "Resource \""

    invoke-static {p3}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not a Font: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public a(IZ)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    return p1
.end method

.method public b(II)I
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    return p1
.end method

.method public b(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_18

    iget-object p1, p0, Landroid/support/v7/widget/y0;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lb/b/d/b/a/b;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_18
    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public c(II)I
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    return p1
.end method

.method public c(I)Landroid/graphics/drawable/Drawable;
    .registers 5

    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_1d

    invoke-static {}, Landroid/support/v7/widget/j;->a()Landroid/support/v7/widget/j;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/y0;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/widget/j;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(II)I
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    return p1
.end method

.method public d(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(II)I
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    return p1
.end method

.method public e(I)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public f(II)I
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    return p1
.end method

.method public f(I)[Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public g(II)I
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    return p1
.end method

.method public g(I)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    return p1
.end method
