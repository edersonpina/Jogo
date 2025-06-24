.class Landroid/support/v7/widget/b0;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# static fields
.field private static final k:Landroid/graphics/RectF;

.field private static l:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Z

.field private c:F

.field private d:F

.field private e:F

.field private f:[I

.field private g:Z

.field private h:Landroid/text/TextPaint;

.field private final i:Landroid/widget/TextView;

.field private final j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroid/support/v7/widget/b0;->k:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid/support/v7/widget/b0;->l:Ljava/util/Hashtable;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/b0;->a:I

    iput-boolean v0, p0, Landroid/support/v7/widget/b0;->b:Z

    const/high16 v1, -0x40800000  # -1.0f

    iput v1, p0, Landroid/support/v7/widget/b0;->c:F

    iput v1, p0, Landroid/support/v7/widget/b0;->d:F

    iput v1, p0, Landroid/support/v7/widget/b0;->e:F

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v7/widget/b0;->f:[I

    iput-boolean v0, p0, Landroid/support/v7/widget/b0;->g:Z

    iput-object p1, p0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    iget-object p1, p0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/b0;->j:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/graphics/RectF;)I
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/support/v7/widget/b0;->f:[I

    array-length v2, v2

    if-eqz v2, :cond_12f

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v2

    const/4 v2, 0x1

    const/4 v6, 0x0

    :goto_f
    if-gt v2, v5, :cond_12a

    add-int v6, v2, v5

    div-int/lit8 v6, v6, 0x2

    iget-object v7, v0, Landroid/support/v7/widget/b0;->f:[I

    aget v7, v7, v6

    iget-object v8, v0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, v0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v9

    if-eqz v9, :cond_30

    iget-object v10, v0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-interface {v9, v8, v10}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_30

    move-object v8, v9

    :cond_30
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v9, v0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMaxLines()I

    move-result v9

    iget-object v10, v0, Landroid/support/v7/widget/b0;->h:Landroid/text/TextPaint;

    if-nez v10, :cond_44

    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    iput-object v10, v0, Landroid/support/v7/widget/b0;->h:Landroid/text/TextPaint;

    goto :goto_47

    :cond_44
    invoke-virtual {v10}, Landroid/text/TextPaint;->reset()V

    :goto_47
    iget-object v10, v0, Landroid/support/v7/widget/b0;->h:Landroid/text/TextPaint;

    iget-object v11, v0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v10, v0, Landroid/support/v7/widget/b0;->h:Landroid/text/TextPaint;

    int-to-float v7, v7

    invoke-virtual {v10, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v7, v0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const-string v11, "getLayoutAlignment"

    invoke-direct {v0, v7, v11, v10}, Landroid/support/v7/widget/b0;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Landroid/text/Layout$Alignment;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    const/4 v15, -0x1

    if-lt v7, v10, :cond_cf

    iget v7, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v10, v0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    sget-object v11, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const-string v12, "getTextDirectionHeuristic"

    invoke-direct {v0, v10, v12, v11}, Landroid/support/v7/widget/b0;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/text/TextDirectionHeuristic;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v11

    iget-object v12, v0, Landroid/support/v7/widget/b0;->h:Landroid/text/TextPaint;

    invoke-static {v8, v4, v11, v12, v7}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v7

    iget-object v11, v0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v11

    iget-object v12, v0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v12

    invoke-virtual {v7, v11, v12}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v7

    iget-object v11, v0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v11

    invoke-virtual {v7, v11}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v7

    iget-object v11, v0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v7

    iget-object v11, v0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v7

    if-ne v9, v15, :cond_c0

    const v11, 0x7fffffff

    goto :goto_c1

    :cond_c0
    move v11, v9

    :goto_c1
    invoke-virtual {v7, v11}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v7

    const/4 v4, -0x1

    goto :goto_f7

    :cond_cf
    iget v7, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v13

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v7, v0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v7

    iget-object v10, v0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v16

    iget-object v10, v0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v17

    new-instance v18, Landroid/text/StaticLayout;

    iget-object v12, v0, Landroid/support/v7/widget/b0;->h:Landroid/text/TextPaint;

    move-object/from16 v10, v18

    move-object v11, v8

    const/4 v4, -0x1

    move v15, v7

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v7, v18

    :goto_f7
    if-eq v9, v4, :cond_10f

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-gt v4, v9, :cond_11a

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v7, v4}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v4

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eq v4, v8, :cond_10f

    goto :goto_11a

    :cond_10f
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_11c

    :cond_11a
    :goto_11a
    const/4 v4, 0x0

    goto :goto_11d

    :cond_11c
    const/4 v4, 0x1

    :goto_11d
    if-eqz v4, :cond_124

    add-int/lit8 v4, v6, 0x1

    move v6, v2

    move v2, v4

    goto :goto_127

    :cond_124
    add-int/lit8 v6, v6, -0x1

    move v5, v6

    :goto_127
    const/4 v4, 0x0

    goto/16 :goto_f

    :cond_12a
    iget-object v1, v0, Landroid/support/v7/widget/b0;->f:[I

    aget v1, v1, v6

    return v1

    :cond_12f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No available text sizes to choose from."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_138

    :goto_137
    throw v1

    :goto_138
    goto :goto_137
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p2}, Landroid/support/v7/widget/b0;->a(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_e
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_2b

    :catchall_c
    move-exception p1

    goto :goto_2c

    :catch_e
    move-exception p1

    const/4 v0, 0x1

    :try_start_10
    const-string v1, "ACTVAutoSizeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke TextView#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "() method"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_c

    :goto_2b
    return-object p3

    :goto_2c
    throw p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 5

    :try_start_0
    sget-object v0, Landroid/support/v7/widget/b0;->l:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_1e

    const-class v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v1, Landroid/support/v7/widget/b0;->l:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    :cond_1e
    return-object v0

    :catch_1f
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to retrieve TextView#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() method"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ACTVAutoSizeHelper"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(FFF)V
    .registers 7

    const-string v0, "px) is less or equal to (0px)"

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-lez v2, :cond_5f

    cmpg-float v2, p2, p1

    if-lez v2, :cond_36

    cmpg-float v1, p3, v1

    if-lez v1, :cond_1c

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/b0;->a:I

    iput p1, p0, Landroid/support/v7/widget/b0;->d:F

    iput p2, p0, Landroid/support/v7/widget/b0;->e:F

    iput p3, p0, Landroid/support/v7/widget/b0;->c:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/b0;->g:Z

    return-void

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The auto-size step granularity ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maximum auto-size text size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "px) is less or equal to minimum auto-size "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "text size ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "px)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_5f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Minimum auto-size text size ("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private a([I)[I
    .registers 8

    array-length v0, p1

    if-nez v0, :cond_4

    return-object p1

    :cond_4
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v0, :cond_28

    aget v4, p1, v3

    if-lez v4, :cond_25

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_25

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_28
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_2f

    return-object p1

    :cond_2f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array v0, p1, [I

    :goto_35
    if-ge v2, p1, :cond_46

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_46
    return-object v0
.end method

.method private h()Z
    .registers 7

    invoke-direct {p0}, Landroid/support/v7/widget/b0;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    iget v0, p0, Landroid/support/v7/widget/b0;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4d

    iget-boolean v0, p0, Landroid/support/v7/widget/b0;->g:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/b0;->f:[I

    array-length v0, v0

    if-nez v0, :cond_4a

    :cond_15
    iget v0, p0, Landroid/support/v7/widget/b0;->d:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x1

    :goto_1d
    iget v4, p0, Landroid/support/v7/widget/b0;->c:F

    add-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/b0;->e:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-gt v4, v5, :cond_32

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Landroid/support/v7/widget/b0;->c:F

    add-float/2addr v0, v4

    goto :goto_1d

    :cond_32
    new-array v0, v3, [I

    iget v4, p0, Landroid/support/v7/widget/b0;->d:F

    :goto_36
    if-ge v1, v3, :cond_44

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v0, v1

    iget v5, p0, Landroid/support/v7/widget/b0;->c:F

    add-float/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_44
    invoke-direct {p0, v0}, Landroid/support/v7/widget/b0;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/b0;->f:[I

    :cond_4a
    iput-boolean v2, p0, Landroid/support/v7/widget/b0;->b:Z

    goto :goto_4f

    :cond_4d
    iput-boolean v1, p0, Landroid/support/v7/widget/b0;->b:Z

    :goto_4f
    iget-boolean v0, p0, Landroid/support/v7/widget/b0;->b:Z

    return v0
.end method

.method private i()Z
    .registers 5

    iget-object v0, p0, Landroid/support/v7/widget/b0;->f:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_9

    const/4 v3, 0x1

    goto :goto_a

    :cond_9
    const/4 v3, 0x0

    :goto_a
    iput-boolean v3, p0, Landroid/support/v7/widget/b0;->g:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/b0;->g:Z

    if-eqz v3, :cond_23

    iput v2, p0, Landroid/support/v7/widget/b0;->a:I

    iget-object v3, p0, Landroid/support/v7/widget/b0;->f:[I

    aget v1, v3, v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v7/widget/b0;->d:F

    sub-int/2addr v0, v2

    aget v0, v3, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/b0;->e:F

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Landroid/support/v7/widget/b0;->c:F

    :cond_23
    iget-boolean v0, p0, Landroid/support/v7/widget/b0;->g:Z

    return v0
.end method

.method private j()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/support/v7/widget/k;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method a()V
    .registers 6

    invoke-virtual {p0}, Landroid/support/v7/widget/b0;->g()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-boolean v0, p0, Landroid/support/v7/widget/b0;->b:Z

    if-eqz v0, :cond_8d

    iget-object v0, p0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_8c

    iget-object v0, p0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_1c

    goto :goto_8c

    :cond_1c
    iget-object v0, p0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "getHorizontallyScrolling"

    invoke-direct {p0, v0, v3, v2}, Landroid/support/v7/widget/b0;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_34

    const/high16 v0, 0x100000

    goto :goto_48

    :cond_34
    iget-object v0, p0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    :goto_48
    iget-object v2, p0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v0, :cond_8c

    if-gtz v2, :cond_61

    goto :goto_8c

    :cond_61
    sget-object v3, Landroid/support/v7/widget/b0;->k:Landroid/graphics/RectF;

    monitor-enter v3

    :try_start_64
    sget-object v4, Landroid/support/v7/widget/b0;->k:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    sget-object v4, Landroid/support/v7/widget/b0;->k:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, v4, Landroid/graphics/RectF;->right:F

    sget-object v0, Landroid/support/v7/widget/b0;->k:Landroid/graphics/RectF;

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    sget-object v0, Landroid/support/v7/widget/b0;->k:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/b0;->a(Landroid/graphics/RectF;)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_87

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/b0;->a(IF)V

    :cond_87
    monitor-exit v3

    goto :goto_8d

    :catchall_89
    move-exception v0

    monitor-exit v3
    :try_end_8b
    .catchall {:try_start_64 .. :try_end_8b} :catchall_89

    throw v0

    :cond_8c
    :goto_8c
    return-void

    :cond_8d
    :goto_8d
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/b0;->b:Z

    return-void
.end method

.method a(I)V
    .registers 5

    invoke-direct {p0}, Landroid/support/v7/widget/b0;->j()Z

    move-result v0

    if-eqz v0, :cond_4e

    if-eqz p1, :cond_3d

    const/4 v0, 0x1

    if-ne p1, v0, :cond_31

    iget-object p1, p0, Landroid/support/v7/widget/b0;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x41400000  # 12.0f

    const/4 v1, 0x2

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v2, 0x42e00000  # 112.0f

    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {p0, v0, p1, v1}, Landroid/support/v7/widget/b0;->a(FFF)V

    invoke-direct {p0}, Landroid/support/v7/widget/b0;->h()Z

    move-result p1

    if-eqz p1, :cond_4e

    invoke-virtual {p0}, Landroid/support/v7/widget/b0;->a()V

    goto :goto_4e

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown auto-size text type: "

    invoke-static {v1, p1}, Ld/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/b0;->a:I

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Landroid/support/v7/widget/b0;->d:F

    iput v0, p0, Landroid/support/v7/widget/b0;->e:F

    iput v0, p0, Landroid/support/v7/widget/b0;->c:F

    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v7/widget/b0;->f:[I

    iput-boolean p1, p0, Landroid/support/v7/widget/b0;->b:Z

    :cond_4e
    :goto_4e
    return-void
.end method

.method a(IF)V
    .registers 5

    iget-object v0, p0, Landroid/support/v7/widget/b0;->j:Landroid/content/Context;

    if-nez v0, :cond_9

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_d
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/TextPaint;->getTextSize()F

    move-result p2

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_6f

    iget-object p2, p0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x12

    const/4 v0, 0x0

    if-lt p1, p2, :cond_3a

    iget-object p1, p0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isInLayout()Z

    move-result p1

    goto :goto_3b

    :cond_3a
    const/4 p1, 0x0

    :goto_3b
    iget-object p2, p0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    if-eqz p2, :cond_6f

    iput-boolean v0, p0, Landroid/support/v7/widget/b0;->b:Z

    :try_start_45
    const-string p2, "nullLayouts"

    invoke-direct {p0, p2}, Landroid/support/v7/widget/b0;->a(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_5d

    iget-object v1, p0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_54} :catch_55

    goto :goto_5d

    :catch_55
    move-exception p2

    const-string v0, "ACTVAutoSizeHelper"

    const-string v1, "Failed to invoke TextView#nullLayouts() method"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5d
    :goto_5d
    if-nez p1, :cond_65

    iget-object p1, p0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_6a

    :cond_65
    iget-object p1, p0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->forceLayout()V

    :goto_6a
    iget-object p1, p0, Landroid/support/v7/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    :cond_6f
    return-void
.end method

.method a(IIII)V
    .registers 6

    invoke-direct {p0}, Landroid/support/v7/widget/b0;->j()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/support/v7/widget/b0;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {p4, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    int-to-float p2, p2

    invoke-static {p4, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    int-to-float p3, p3

    invoke-static {p4, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/b0;->a(FFF)V

    invoke-direct {p0}, Landroid/support/v7/widget/b0;->h()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Landroid/support/v7/widget/b0;->a()V

    :cond_2b
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .registers 12

    iget-object v0, p0, Landroid/support/v7/widget/b0;->j:Landroid/content/Context;

    sget-object v1, Lb/b/d/a/j;->AppCompatTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lb/b/d/a/j;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_19

    sget p2, Lb/b/d/a/j;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/b0;->a:I

    :cond_19
    sget p2, Lb/b/d/a/j;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/high16 v0, -0x40800000  # -1.0f

    if-eqz p2, :cond_2a

    sget p2, Lb/b/d/a/j;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    goto :goto_2c

    :cond_2a
    const/high16 p2, -0x40800000  # -1.0f

    :goto_2c
    sget v1, Lb/b/d/a/j;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    sget v1, Lb/b/d/a/j;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    goto :goto_3d

    :cond_3b
    const/high16 v1, -0x40800000  # -1.0f

    :goto_3d
    sget v3, Lb/b/d/a/j;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4c

    sget v3, Lb/b/d/a/j;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    goto :goto_4e

    :cond_4c
    const/high16 v3, -0x40800000  # -1.0f

    :goto_4e
    sget v4, Lb/b/d/a/j;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_87

    sget v4, Lb/b/d/a/j;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_87

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    new-array v6, v5, [I

    if-lez v5, :cond_84

    const/4 v7, 0x0

    :goto_6f
    if-ge v7, v5, :cond_7b

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6f

    :cond_7b
    invoke-direct {p0, v6}, Landroid/support/v7/widget/b0;->a([I)[I

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/b0;->f:[I

    invoke-direct {p0}, Landroid/support/v7/widget/b0;->i()Z

    :cond_84
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_87
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/support/v7/widget/b0;->j()Z

    move-result p1

    if-eqz p1, :cond_c5

    iget p1, p0, Landroid/support/v7/widget/b0;->a:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_c7

    iget-boolean p1, p0, Landroid/support/v7/widget/b0;->g:Z

    if-nez p1, :cond_c1

    iget-object p1, p0, Landroid/support/v7/widget/b0;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v2, 0x2

    cmpl-float v4, v1, v0

    if-nez v4, :cond_ae

    const/high16 v1, 0x41400000  # 12.0f

    invoke-static {v2, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    :cond_ae
    cmpl-float v4, v3, v0

    if-nez v4, :cond_b8

    const/high16 v3, 0x42e00000  # 112.0f

    invoke-static {v2, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    :cond_b8
    cmpl-float p1, p2, v0

    if-nez p1, :cond_be

    const/high16 p2, 0x3f800000  # 1.0f

    :cond_be
    invoke-direct {p0, v1, v3, p2}, Landroid/support/v7/widget/b0;->a(FFF)V

    :cond_c1
    invoke-direct {p0}, Landroid/support/v7/widget/b0;->h()Z

    goto :goto_c7

    :cond_c5
    iput v2, p0, Landroid/support/v7/widget/b0;->a:I

    :cond_c7
    :goto_c7
    return-void
.end method

.method a([II)V
    .registers 8

    invoke-direct {p0}, Landroid/support/v7/widget/b0;->j()Z

    move-result v0

    if-eqz v0, :cond_5e

    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_53

    new-array v2, v0, [I

    if-nez p2, :cond_13

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    goto :goto_2f

    :cond_13
    iget-object v3, p0, Landroid/support/v7/widget/b0;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    :goto_1d
    if-ge v1, v0, :cond_2f

    aget v4, p1, v1

    int-to-float v4, v4

    invoke-static {p2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2f
    :goto_2f
    invoke-direct {p0, v2}, Landroid/support/v7/widget/b0;->a([I)[I

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/b0;->f:[I

    invoke-direct {p0}, Landroid/support/v7/widget/b0;->i()Z

    move-result p2

    if-eqz p2, :cond_3c

    goto :goto_55

    :cond_3c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "None of the preset sizes is valid: "

    invoke-static {v0}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_53
    iput-boolean v1, p0, Landroid/support/v7/widget/b0;->g:Z

    :goto_55
    invoke-direct {p0}, Landroid/support/v7/widget/b0;->h()Z

    move-result p1

    if-eqz p1, :cond_5e

    invoke-virtual {p0}, Landroid/support/v7/widget/b0;->a()V

    :cond_5e
    return-void
.end method

.method b()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/b0;->e:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method c()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/b0;->d:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method d()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/b0;->c:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method e()[I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/b0;->f:[I

    return-object v0
.end method

.method f()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/b0;->a:I

    return v0
.end method

.method g()Z
    .registers 2

    invoke-direct {p0}, Landroid/support/v7/widget/b0;->j()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/support/v7/widget/b0;->a:I

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
