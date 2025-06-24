.class final Lb/b/d/b/a/a;
.super Ljava/lang/Object;
.source "AppCompatColorStateListInflater.java"


# direct methods
.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 20

    move-object/from16 v0, p2

    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    :goto_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_11

    if-eq v2, v4, :cond_11

    goto :goto_6

    :cond_11
    if-ne v2, v3, :cond_134

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "selector"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_116

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    add-int/2addr v2, v4

    const/16 v5, 0x14

    new-array v5, v5, [[I

    array-length v6, v5

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v4, :cond_106

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-ge v10, v2, :cond_3c

    const/4 v11, 0x3

    if-eq v9, v11, :cond_106

    :cond_3c
    if-ne v9, v3, :cond_100

    if-gt v10, v2, :cond_100

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "item"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4e

    goto/16 :goto_100

    :cond_4e
    sget-object v9, Lb/b/d/a/j;->ColorStateListItem:[I

    if-nez v0, :cond_59

    move-object/from16 v10, p0

    invoke-virtual {v10, v1, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    goto :goto_5f

    :cond_59
    move-object/from16 v10, p0

    invoke-virtual {v0, v1, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    :goto_5f
    sget v11, Lb/b/d/a/j;->ColorStateListItem_android_color:I

    const v12, -0xff01

    invoke-virtual {v9, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    const/high16 v12, 0x3f800000  # 1.0f

    sget v13, Lb/b/d/a/j;->ColorStateListItem_android_alpha:I

    invoke-virtual {v9, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_79

    sget v13, Lb/b/d/a/j;->ColorStateListItem_android_alpha:I

    invoke-virtual {v9, v13, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    goto :goto_87

    :cond_79
    sget v13, Lb/b/d/a/j;->ColorStateListItem_alpha:I

    invoke-virtual {v9, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_87

    sget v13, Lb/b/d/a/j;->ColorStateListItem_alpha:I

    invoke-virtual {v9, v13, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    :cond_87
    :goto_87
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface {v1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v9

    new-array v13, v9, [I

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_92
    if-ge v14, v9, :cond_b8

    invoke-interface {v1, v14}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v3

    const v4, 0x10101a5

    if-eq v3, v4, :cond_b3

    const v4, 0x101031f

    if-eq v3, v4, :cond_b3

    sget v4, Lb/b/d/a/a;->alpha:I

    if-eq v3, v4, :cond_b3

    add-int/lit8 v4, v15, 0x1

    invoke-interface {v1, v14, v7}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v16

    if-eqz v16, :cond_af

    goto :goto_b0

    :cond_af
    neg-int v3, v3

    :goto_b0
    aput v3, v13, v15

    move v15, v4

    :cond_b3
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    goto :goto_92

    :cond_b8
    invoke-static {v13, v15}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v3

    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v12

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v11, v4}, Lb/b/c/a/a;->b(II)I

    move-result v4

    if-eqz v8, :cond_ce

    array-length v9, v3

    :cond_ce
    add-int/lit8 v9, v8, 0x1

    array-length v11, v6

    if-le v9, v11, :cond_dd

    invoke-static {v8}, Lb/b/d/b/a/c;->a(I)I

    move-result v11

    new-array v11, v11, [I

    invoke-static {v6, v7, v11, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v11

    :cond_dd
    aput v4, v6, v8

    array-length v4, v5

    if-le v9, v4, :cond_f8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v8}, Lb/b/d/b/a/c;->a(I)I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v5, v7, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_f9

    :cond_f8
    move-object v4, v5

    :goto_f9
    aput-object v3, v4, v8

    check-cast v4, [[I

    move-object v5, v4

    move v8, v9

    goto :goto_102

    :cond_100
    :goto_100
    move-object/from16 v10, p0

    :goto_102
    const/4 v3, 0x2

    const/4 v4, 0x1

    goto/16 :goto_2d

    :cond_106
    new-array v0, v8, [I

    new-array v1, v8, [[I

    invoke-static {v6, v7, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v7, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    :cond_116
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": invalid color state list tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_134
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_13d

    :goto_13c
    throw v0

    :goto_13d
    goto :goto_13c
.end method
