.class public Lb/b/b/a/d;
.super Ljava/lang/Object;
.source "AnimationUtilsCompat.java"


# direct methods
.method public static a(Landroid/content/Context;I)Landroid/animation/Animator;
    .registers 12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p0

    goto :goto_2b

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const-string v8, "Can\'t load animation resource ID #0x"

    const/4 v0, 0x0

    :try_start_16
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_1a} :catch_54
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_37
    .catchall {:try_start_16 .. :try_end_1a} :catchall_35

    :try_start_1a
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000  # 1.0f

    move-object v0, p0

    move-object v3, v9

    invoke-static/range {v0 .. v7}, Lb/b/b/a/d;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object p0
    :try_end_28
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_28} :catch_32
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_28} :catch_2f
    .catchall {:try_start_1a .. :try_end_28} :catchall_2c

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :goto_2b
    return-object p0

    :catchall_2c
    move-exception p0

    move-object v0, v9

    goto :goto_71

    :catch_2f
    move-exception p0

    move-object v0, v9

    goto :goto_38

    :catch_32
    move-exception p0

    move-object v0, v9

    goto :goto_55

    :catchall_35
    move-exception p0

    goto :goto_71

    :catch_37
    move-exception p0

    :goto_38
    :try_start_38
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_54
    move-exception p0

    :goto_55
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
    :try_end_71
    .catchall {:try_start_38 .. :try_end_71} :catchall_35

    :goto_71
    if-eqz v0, :cond_76

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_76
    throw p0
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .registers 30

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v13, v1

    :goto_f
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    const/4 v14, 0x0

    if-ne v1, v2, :cond_1d

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v12, :cond_31c

    :cond_1d
    const/4 v3, 0x1

    if-eq v1, v3, :cond_31c

    const/4 v4, 0x2

    if-eq v1, v4, :cond_24

    goto :goto_f

    :cond_24
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "objectAnimator"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    new-instance v7, Landroid/animation/ObjectAnimator;

    invoke-direct {v7}, Landroid/animation/ObjectAnimator;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object v4, v7

    move/from16 v5, p7

    move-object/from16 v6, p3

    invoke-static/range {v0 .. v6}, Lb/b/b/a/d;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    goto :goto_5f

    :cond_46
    const-string v5, "animator"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v5, p7

    move-object/from16 v6, p3

    invoke-static/range {v0 .. v6}, Lb/b/b/a/d;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    move-result-object v7

    :goto_5f
    move-object v0, v7

    move/from16 v19, v12

    goto/16 :goto_2ef

    :cond_64
    const-string v5, "set"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9b

    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v0, Lb/b/b/a/a;->h:[I

    move-object/from16 v7, p4

    invoke-static {v8, v9, v7, v0}, La/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    const-string v0, "ordering"

    invoke-static {v6, v10, v0, v14, v14}, La/a/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v15

    move-object/from16 v17, v6

    move/from16 v6, v16

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lb/b/b/a/d;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v19, v12

    move-object v0, v15

    goto/16 :goto_2ef

    :cond_9b
    const-string v5, "propertyValuesHolder"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_305

    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    const/4 v6, 0x0

    :goto_a8
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v2, :cond_2c8

    if-eq v7, v3, :cond_2c8

    if-eq v7, v4, :cond_b6

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_a8

    :cond_b6
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b1

    sget-object v3, Lb/b/b/a/a;->i:[I

    invoke-static {v8, v9, v1, v3}, La/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const-string v7, "propertyName"

    invoke-static {v3, v10, v7, v2}, La/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x4

    const-string v15, "valueType"

    invoke-static {v3, v10, v15, v4, v14}, La/a/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    const/4 v14, 0x0

    move-object/from16 v16, v1

    move v15, v4

    :goto_d7
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v2, :cond_1b5

    move/from16 v17, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1b5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyframe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ab

    const-string v1, "value"

    const/4 v2, 0x4

    if-ne v15, v2, :cond_119

    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v15, Lb/b/b/a/a;->j:[I

    invoke-static {v8, v9, v2, v15}, La/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v15, 0x0

    invoke-static {v2, v10, v1, v15}, La/a/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v15

    if-eqz v15, :cond_107

    const/16 v17, 0x1

    goto :goto_109

    :cond_107
    const/16 v17, 0x0

    :goto_109
    if-eqz v17, :cond_115

    iget v15, v15, Landroid/util/TypedValue;->type:I

    invoke-static {v15}, Lb/b/b/a/d;->a(I)Z

    move-result v15

    if-eqz v15, :cond_115

    const/4 v15, 0x3

    goto :goto_116

    :cond_115
    const/4 v15, 0x0

    :goto_116
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_119
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    move-object/from16 v18, v5

    sget-object v5, Lb/b/b/a/a;->j:[I

    invoke-static {v8, v9, v2, v5}, La/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/high16 v5, -0x40800000  # -1.0f

    const-string v8, "fraction"

    const/4 v9, 0x3

    invoke-static {v2, v10, v8, v9, v5}, La/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    const/4 v8, 0x0

    invoke-static {v2, v10, v1, v8}, La/a/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v8

    if-eqz v8, :cond_137

    const/4 v9, 0x1

    goto :goto_138

    :cond_137
    const/4 v9, 0x0

    :goto_138
    move/from16 v19, v12

    const/4 v12, 0x4

    if-ne v15, v12, :cond_14b

    if-eqz v9, :cond_149

    iget v8, v8, Landroid/util/TypedValue;->type:I

    invoke-static {v8}, Lb/b/b/a/d;->a(I)Z

    move-result v8

    if-eqz v8, :cond_149

    const/4 v8, 0x3

    goto :goto_14c

    :cond_149
    const/4 v8, 0x0

    goto :goto_14c

    :cond_14b
    move v8, v15

    :goto_14c
    if-eqz v9, :cond_16e

    if-eqz v8, :cond_163

    const/4 v9, 0x1

    if-eq v8, v9, :cond_159

    const/4 v9, 0x3

    if-eq v8, v9, :cond_159

    const/4 v1, 0x0

    const/4 v5, 0x0

    goto :goto_17b

    :cond_159
    const/4 v8, 0x0

    invoke-static {v2, v10, v1, v8, v8}, La/a/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v5, v1}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v1

    goto :goto_17c

    :cond_163
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v10, v1, v8, v9}, La/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v1

    invoke-static {v5, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    goto :goto_17c

    :cond_16e
    const/4 v1, 0x0

    if-nez v8, :cond_176

    invoke-static {v5}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v5

    goto :goto_17a

    :cond_176
    invoke-static {v5}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v5

    :goto_17a
    move-object v1, v5

    :goto_17b
    const/4 v8, 0x0

    :goto_17c
    const-string v5, "interpolator"

    const/4 v9, 0x1

    invoke-static {v2, v10, v5, v9, v8}, La/a/g;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    move-object/from16 v8, p0

    if-lez v5, :cond_18e

    invoke-static {v8, v5}, Lb/b/b/a/d;->b(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_18e
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_19d

    if-nez v14, :cond_19a

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_19a
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19d
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const/4 v2, 0x3

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v5, v18

    move/from16 v12, v19

    goto/16 :goto_d7

    :cond_1ab
    move-object/from16 v8, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v2, v17

    goto/16 :goto_d7

    :cond_1b5
    move-object/from16 v8, p0

    move-object/from16 v18, v5

    move/from16 v19, v12

    if-eqz v14, :cond_295

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_295

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Keyframe;

    invoke-virtual {v5}, Landroid/animation/Keyframe;->getFraction()F

    move-result v9

    const/high16 v12, 0x3f800000  # 1.0f

    cmpg-float v17, v9, v12

    if-gez v17, :cond_1f3

    const/16 v17, 0x0

    cmpg-float v9, v9, v17

    if-gez v9, :cond_1e6

    invoke-virtual {v5, v12}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_1f3

    :cond_1e6
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v5, v12}, Lb/b/b/a/d;->a(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v5

    invoke-virtual {v14, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    :cond_1f3
    :goto_1f3
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    const/4 v9, 0x0

    cmpl-float v12, v5, v9

    if-eqz v12, :cond_20e

    cmpg-float v5, v5, v9

    if-gez v5, :cond_204

    invoke-virtual {v2, v9}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_20e

    :cond_204
    invoke-static {v2, v9}, Lb/b/b/a/d;->a(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v14, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    :cond_20e
    :goto_20e
    new-array v2, v1, [Landroid/animation/Keyframe;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_214
    if-ge v5, v1, :cond_286

    aget-object v9, v2, v5

    invoke-virtual {v9}, Landroid/animation/Keyframe;->getFraction()F

    move-result v12

    const/4 v14, 0x0

    cmpg-float v12, v12, v14

    if-gez v12, :cond_27d

    if-nez v5, :cond_227

    invoke-virtual {v9, v14}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_27d

    :cond_227
    add-int/lit8 v12, v1, -0x1

    if-ne v5, v12, :cond_231

    const/high16 v12, 0x3f800000  # 1.0f

    invoke-virtual {v9, v12}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_27d

    :cond_231
    add-int/lit8 v9, v5, 0x1

    move v14, v5

    :goto_234
    if-ge v9, v12, :cond_24b

    aget-object v17, v2, v9

    invoke-virtual/range {v17 .. v17}, Landroid/animation/Keyframe;->getFraction()F

    move-result v17

    const/16 v20, 0x0

    cmpl-float v17, v17, v20

    if-ltz v17, :cond_243

    goto :goto_24b

    :cond_243
    add-int/lit8 v14, v9, 0x1

    move/from16 v21, v14

    move v14, v9

    move/from16 v9, v21

    goto :goto_234

    :cond_24b
    :goto_24b
    add-int/lit8 v9, v14, 0x1

    aget-object v9, v2, v9

    invoke-virtual {v9}, Landroid/animation/Keyframe;->getFraction()F

    move-result v9

    add-int/lit8 v12, v5, -0x1

    aget-object v12, v2, v12

    invoke-virtual {v12}, Landroid/animation/Keyframe;->getFraction()F

    move-result v12

    sub-float/2addr v9, v12

    sub-int v12, v14, v5

    add-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    div-float/2addr v9, v12

    move v12, v5

    :goto_263
    if-gt v12, v14, :cond_27d

    move/from16 v17, v1

    aget-object v1, v2, v12

    add-int/lit8 v20, v12, -0x1

    aget-object v20, v2, v20

    invoke-virtual/range {v20 .. v20}, Landroid/animation/Keyframe;->getFraction()F

    move-result v20

    add-float v8, v20, v9

    invoke-virtual {v1, v8}, Landroid/animation/Keyframe;->setFraction(F)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, p0

    move/from16 v1, v17

    goto :goto_263

    :cond_27d
    :goto_27d
    move/from16 v17, v1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, p0

    move/from16 v1, v17

    goto :goto_214

    :cond_286
    invoke-static {v7, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x3

    if-ne v15, v2, :cond_297

    invoke-static {}, Lb/b/b/a/g;->a()Lb/b/b/a/g;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto :goto_297

    :cond_295
    const/4 v2, 0x3

    const/4 v1, 0x0

    :cond_297
    :goto_297
    const/4 v5, 0x1

    const/4 v8, 0x0

    if-nez v1, :cond_29f

    invoke-static {v3, v4, v8, v5, v7}, Lb/b/b/a/d;->a(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    :cond_29f
    if-eqz v1, :cond_2ac

    if-nez v6, :cond_2a9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v4

    :cond_2a9
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2ac
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v14, 0x0

    goto :goto_2b7

    :cond_2b1
    move-object/from16 v16, v1

    move-object/from16 v18, v5

    move/from16 v19, v12

    :goto_2b7
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const/4 v3, 0x1

    const/4 v4, 0x2

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v1, v16

    move-object/from16 v5, v18

    move/from16 v12, v19

    goto/16 :goto_a8

    :cond_2c8
    move/from16 v19, v12

    if-eqz v6, :cond_2df

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    :goto_2d2
    if-ge v14, v1, :cond_2e0

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/PropertyValuesHolder;

    aput-object v3, v2, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_2d2

    :cond_2df
    const/4 v2, 0x0

    :cond_2e0
    if-eqz v2, :cond_2ee

    if-eqz v0, :cond_2ee

    instance-of v1, v0, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2ee

    move-object v1, v0

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_2ee
    const/4 v14, 0x1

    :goto_2ef
    if-eqz v11, :cond_2fd

    if-nez v14, :cond_2fd

    if-nez v13, :cond_2fa

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_2fa
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2fd
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v12, v19

    goto/16 :goto_f

    :cond_305
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown animator name: "

    invoke-static {v1}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31c
    if-eqz v11, :cond_345

    if-eqz v13, :cond_345

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/animation/Animator;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    add-int/lit8 v4, v14, 0x1

    aput-object v3, v1, v14

    move v14, v4

    goto :goto_32a

    :cond_33c
    if-nez p6, :cond_342

    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_345

    :cond_342
    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :cond_345
    :goto_345
    return-object v0
.end method

.method private static a(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .registers 4

    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_d

    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object p0

    goto :goto_1e

    :cond_d
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1a

    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object p0

    goto :goto_1e

    :cond_1a
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object p0

    :goto_1e
    return-object p0
.end method

.method private static a(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .registers 16

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    const/4 v3, 0x1

    goto :goto_b

    :cond_a
    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_10

    iget v0, v0, Landroid/util/TypedValue;->type:I

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    if-eqz v4, :cond_19

    const/4 v5, 0x1

    goto :goto_1a

    :cond_19
    const/4 v5, 0x0

    :goto_1a
    if-eqz v5, :cond_1f

    iget v4, v4, Landroid/util/TypedValue;->type:I

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    :goto_20
    const/4 v6, 0x4

    const/4 v7, 0x3

    if-ne p1, v6, :cond_37

    if-eqz v3, :cond_2c

    invoke-static {v0}, Lb/b/b/a/d;->a(I)Z

    move-result p1

    if-nez p1, :cond_34

    :cond_2c
    if-eqz v5, :cond_36

    invoke-static {v4}, Lb/b/b/a/d;->a(I)Z

    move-result p1

    if-eqz p1, :cond_36

    :cond_34
    const/4 p1, 0x3

    goto :goto_37

    :cond_36
    const/4 p1, 0x0

    :cond_37
    :goto_37
    if-nez p1, :cond_3b

    const/4 v6, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v6, 0x0

    :goto_3c
    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ne p1, v8, :cond_a9

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lb/b/c/a/b;->a(Ljava/lang/String;)[Lb/b/c/a/b$a;

    move-result-object p2

    invoke-static {p0}, Lb/b/c/a/b;->a(Ljava/lang/String;)[Lb/b/c/a/b$a;

    move-result-object p3

    if-nez p2, :cond_54

    if-eqz p3, :cond_169

    :cond_54
    if-eqz p2, :cond_98

    new-instance v0, Lb/b/b/a/f;

    invoke-direct {v0, v9}, Lb/b/b/a/f;-><init>(Lb/b/b/a/e;)V

    if-eqz p3, :cond_8d

    invoke-static {p2, p3}, Lb/b/c/a/b;->a([Lb/b/c/a/b$a;[Lb/b/c/a/b$a;)Z

    move-result v3

    if-eqz v3, :cond_6e

    new-array p0, v8, [Ljava/lang/Object;

    aput-object p2, p0, v2

    aput-object p3, p0, v1

    invoke-static {p4, v0, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    goto :goto_95

    :cond_6e
    new-instance p2, Landroid/view/InflateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " Can\'t morph from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8d
    new-array p0, v1, [Ljava/lang/Object;

    aput-object p2, p0, v2

    invoke-static {p4, v0, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    :goto_95
    move-object v9, p0

    goto/16 :goto_169

    :cond_98
    if-eqz p3, :cond_169

    new-instance p0, Lb/b/b/a/f;

    invoke-direct {p0, v9}, Lb/b/b/a/f;-><init>(Lb/b/b/a/e;)V

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p3, p1, v2

    invoke-static {p4, p0, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    goto/16 :goto_169

    :cond_a9
    if-ne p1, v7, :cond_b0

    invoke-static {}, Lb/b/b/a/g;->a()Lb/b/b/a/g;

    move-result-object p1

    goto :goto_b1

    :cond_b0
    move-object p1, v9

    :goto_b1
    const/4 v7, 0x5

    const/4 v10, 0x0

    if-eqz v6, :cond_fa

    if-eqz v3, :cond_e5

    if-ne v0, v7, :cond_be

    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    goto :goto_c2

    :cond_be
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    :goto_c2
    if-eqz v5, :cond_db

    if-ne v4, v7, :cond_cb

    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    goto :goto_cf

    :cond_cb
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    :goto_cf
    new-array p3, v8, [F

    aput p2, p3, v2

    aput p0, p3, v1

    invoke-static {p4, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    goto/16 :goto_161

    :cond_db
    new-array p0, v1, [F

    aput p2, p0, v2

    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    goto/16 :goto_161

    :cond_e5
    if-ne v4, v7, :cond_ec

    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    goto :goto_f0

    :cond_ec
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    :goto_f0
    new-array p2, v1, [F

    aput p0, p2, v2

    invoke-static {p4, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    goto/16 :goto_161

    :cond_fa
    if-eqz v3, :cond_140

    if-ne v0, v7, :cond_104

    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    goto :goto_113

    :cond_104
    invoke-static {v0}, Lb/b/b/a/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_10f

    invoke-virtual {p0, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    goto :goto_113

    :cond_10f
    invoke-virtual {p0, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    :goto_113
    if-eqz v5, :cond_137

    if-ne v4, v7, :cond_11d

    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    float-to-int p0, p0

    goto :goto_12c

    :cond_11d
    invoke-static {v4}, Lb/b/b/a/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_128

    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    goto :goto_12c

    :cond_128
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    :goto_12c
    new-array p3, v8, [I

    aput p2, p3, v2

    aput p0, p3, v1

    invoke-static {p4, p3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    goto :goto_161

    :cond_137
    new-array p0, v1, [I

    aput p2, p0, v2

    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    goto :goto_161

    :cond_140
    if-eqz v5, :cond_162

    if-ne v4, v7, :cond_14a

    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    float-to-int p0, p0

    goto :goto_159

    :cond_14a
    invoke-static {v4}, Lb/b/b/a/d;->a(I)Z

    move-result p2

    if-eqz p2, :cond_155

    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    goto :goto_159

    :cond_155
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    :goto_159
    new-array p2, v1, [I

    aput p0, p2, v2

    invoke-static {p4, p2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    :goto_161
    move-object v9, p0

    :cond_162
    if-eqz v9, :cond_169

    if-eqz p1, :cond_169

    invoke-virtual {v9, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_169
    :goto_169
    return-object v9
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;
    .registers 26

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    sget-object v4, Lb/b/b/a/a;->g:[I

    invoke-static {v0, v1, v2, v4}, La/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    sget-object v5, Lb/b/b/a/a;->k:[I

    invoke-static {v0, v1, v2, v5}, La/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-nez p4, :cond_1c

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    goto :goto_1e

    :cond_1c
    move-object/from16 v1, p4

    :goto_1e
    const/16 v2, 0x12c

    const/4 v5, 0x1

    const-string v6, "duration"

    invoke-static {v4, v3, v6, v5, v2}, La/a/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    int-to-long v6, v2

    const/4 v2, 0x2

    const/4 v8, 0x0

    const-string v9, "startOffset"

    invoke-static {v4, v3, v9, v2, v8}, La/a/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v9

    int-to-long v9, v9

    const/4 v11, 0x4

    const/4 v12, 0x7

    const-string v13, "valueType"

    invoke-static {v4, v3, v13, v12, v11}, La/a/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v12

    const-string v13, "valueFrom"

    invoke-static {v3, v13}, La/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x3

    if-eqz v13, :cond_92

    const-string v13, "valueTo"

    invoke-static {v3, v13}, La/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_92

    const/4 v13, 0x6

    const/4 v15, 0x5

    if-ne v12, v11, :cond_83

    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    if-eqz v12, :cond_57

    const/16 v16, 0x1

    goto :goto_59

    :cond_57
    const/16 v16, 0x0

    :goto_59
    if-eqz v16, :cond_5e

    iget v12, v12, Landroid/util/TypedValue;->type:I

    goto :goto_5f

    :cond_5e
    const/4 v12, 0x0

    :goto_5f
    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_68

    const/16 v17, 0x1

    goto :goto_6a

    :cond_68
    const/16 v17, 0x0

    :goto_6a
    if-eqz v17, :cond_6f

    iget v2, v2, Landroid/util/TypedValue;->type:I

    goto :goto_70

    :cond_6f
    const/4 v2, 0x0

    :goto_70
    if-eqz v16, :cond_78

    invoke-static {v12}, Lb/b/b/a/d;->a(I)Z

    move-result v12

    if-nez v12, :cond_80

    :cond_78
    if-eqz v17, :cond_82

    invoke-static {v2}, Lb/b/b/a/d;->a(I)Z

    move-result v2

    if-eqz v2, :cond_82

    :cond_80
    const/4 v12, 0x3

    goto :goto_83

    :cond_82
    const/4 v12, 0x0

    :cond_83
    :goto_83
    const-string v2, ""

    invoke-static {v4, v12, v15, v13, v2}, Lb/b/b/a/d;->a(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    if-eqz v2, :cond_92

    new-array v12, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v12, v8

    invoke-virtual {v1, v12}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_92
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-string v2, "repeatCount"

    invoke-static {v4, v3, v2, v14, v8}, La/a/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const-string v2, "repeatMode"

    invoke-static {v4, v3, v2, v11, v5}, La/a/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    if-eqz v0, :cond_1b3

    move-object v2, v1

    check-cast v2, Landroid/animation/ObjectAnimator;

    const-string v6, "pathData"

    invoke-static {v0, v3, v6, v5}, La/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1a6

    const-string v7, "propertyXName"

    const/4 v9, 0x2

    invoke-static {v0, v3, v7, v9}, La/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "propertyYName"

    invoke-static {v0, v3, v9, v14}, La/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-nez v7, :cond_e4

    if-eqz v9, :cond_c9

    goto :goto_e4

    :cond_c9
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e4
    :goto_e4
    invoke-static {v6}, Lb/b/c/a/b;->b(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v6

    const/high16 v10, 0x3f000000  # 0.5f

    mul-float v10, v10, p5

    new-instance v11, Landroid/graphics/PathMeasure;

    invoke-direct {v11, v6, v8}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    :goto_ff
    invoke-virtual {v11}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v15

    add-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v15

    if-nez v15, :cond_1a3

    new-instance v11, Landroid/graphics/PathMeasure;

    invoke-direct {v11, v6, v8}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/16 v6, 0x64

    div-float v10, v14, v10

    float-to-int v10, v10

    add-int/2addr v10, v5

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v10, v6, [F

    new-array v15, v6, [F

    const/4 v13, 0x2

    new-array v5, v13, [F

    add-int/lit8 v13, v6, -0x1

    int-to-float v13, v13

    div-float/2addr v14, v13

    move-object/from16 v17, v1

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    :goto_131
    const/4 v1, 0x0

    if-ge v13, v6, :cond_172

    invoke-virtual {v11, v8, v5, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    invoke-virtual {v11, v8, v5, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    const/4 v1, 0x0

    aget v18, v5, v1

    aput v18, v10, v13

    const/4 v1, 0x1

    aget v18, v5, v1

    aput v18, v15, v13

    add-float/2addr v8, v14

    add-int/lit8 v1, v16, 0x1

    move-object/from16 v18, v5

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_16d

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v8, v5

    if-lez v5, :cond_16d

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v8, v5

    invoke-virtual {v11}, Landroid/graphics/PathMeasure;->nextContour()Z

    move/from16 v16, v1

    :cond_16d
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, v18

    goto :goto_131

    :cond_172
    if-eqz v7, :cond_179

    invoke-static {v7, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    goto :goto_17a

    :cond_179
    move-object v5, v1

    :goto_17a
    if-eqz v9, :cond_180

    invoke-static {v9, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    :cond_180
    if-nez v5, :cond_18c

    const/4 v8, 0x1

    new-array v5, v8, [Landroid/animation/PropertyValuesHolder;

    const/4 v13, 0x0

    aput-object v1, v5, v13

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1b6

    :cond_18c
    const/4 v8, 0x1

    const/4 v13, 0x0

    if-nez v1, :cond_198

    new-array v1, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v1, v13

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1b6

    :cond_198
    const/4 v15, 0x2

    new-array v6, v15, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v6, v13

    aput-object v1, v6, v8

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1b6

    :cond_1a3
    const/4 v13, 0x0

    goto/16 :goto_ff

    :cond_1a6
    move-object/from16 v17, v1

    const/4 v13, 0x0

    const-string v1, "propertyName"

    invoke-static {v0, v3, v1, v13}, La/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    goto :goto_1b6

    :cond_1b3
    move-object/from16 v17, v1

    const/4 v13, 0x0

    :goto_1b6
    const-string v1, "interpolator"

    invoke-static {v3, v1}, La/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1bf

    goto :goto_1c4

    :cond_1bf
    invoke-virtual {v4, v13, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    move v13, v8

    :goto_1c4
    if-lez v13, :cond_1d2

    move-object/from16 v1, p0

    invoke-static {v1, v13}, Lb/b/b/a/d;->b(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1d4

    :cond_1d2
    move-object/from16 v2, v17

    :goto_1d4
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_1dc

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1dc
    return-object v2
.end method

.method private static a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    .registers 6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_12

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_c6

    :cond_12
    const/4 v3, 0x1

    if-eq v2, v3, :cond_c6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_19

    goto :goto_5

    :cond_19
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "linearInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_5

    :cond_2f
    const-string v3, "accelerateInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2, p0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_3c
    move-object v1, v2

    goto :goto_5

    :cond_3e
    const-string v3, "decelerateInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, p0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3c

    :cond_4c
    const-string v3, "accelerateDecelerateInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_5

    :cond_5a
    const-string v3, "cycleInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    new-instance v2, Landroid/view/animation/CycleInterpolator;

    invoke-direct {v2, p0, v1}, Landroid/view/animation/CycleInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3c

    :cond_68
    const-string v3, "anticipateInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    new-instance v2, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v2, p0, v1}, Landroid/view/animation/AnticipateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3c

    :cond_76
    const-string v3, "overshootInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2, p0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3c

    :cond_84
    const-string v3, "anticipateOvershootInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    new-instance v2, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v2, p0, v1}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3c

    :cond_92
    const-string v3, "bounceInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    goto/16 :goto_5

    :cond_a1
    const-string v3, "pathInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    new-instance v2, Lb/b/b/a/h;

    invoke-direct {v2, p0, v1, p1}, Lb/b/b/a/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3c

    :cond_af
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unknown interpolator name: "

    invoke-static {v0}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c6
    return-object v1
.end method

.method private static a(I)Z
    .registers 2

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_a

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static b(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v0, 0x0

    const v1, 0x10c000f

    const-string v2, "Can\'t load animation resource ID #0x"

    if-ne p1, v1, :cond_1f

    :try_start_13
    new-instance p0, Landroid/support/v4/view/w/a;

    invoke-direct {p0}, Landroid/support/v4/view/w/a;-><init>()V

    return-object p0

    :catchall_19
    move-exception p0

    goto :goto_83

    :catch_1b
    move-exception p0

    goto :goto_4b

    :catch_1d
    move-exception p0

    goto :goto_67

    :cond_1f
    const v1, 0x10c000d

    if-ne p1, v1, :cond_2a

    new-instance p0, Landroid/support/v4/view/w/b;

    invoke-direct {p0}, Landroid/support/v4/view/w/b;-><init>()V

    return-object p0

    :cond_2a
    const v1, 0x10c000e

    if-ne p1, v1, :cond_35

    new-instance p0, Landroid/support/v4/view/w/c;

    invoke-direct {p0}, Landroid/support/v4/view/w/c;-><init>()V

    return-object p0

    :cond_35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    invoke-static {p0, v0}, Lb/b/b/a/d;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;

    move-result-object p0
    :try_end_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_47} :catch_1d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_47} :catch_1b
    .catchall {:try_start_13 .. :try_end_47} :catchall_19

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    return-object p0

    :goto_4b
    :try_start_4b
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :goto_67
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
    :try_end_83
    .catchall {:try_start_4b .. :try_end_83} :catchall_19

    :goto_83
    if-eqz v0, :cond_88

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_88
    throw p0
.end method
