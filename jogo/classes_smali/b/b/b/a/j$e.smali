.class Lb/b/b/a/j$e;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# static fields
.field private static final p:Landroid/graphics/Matrix;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/Matrix;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/PathMeasure;

.field private g:I

.field final h:Lb/b/b/a/j$c;

.field i:F

.field j:F

.field k:F

.field l:F

.field m:I

.field n:Ljava/lang/String;

.field final o:Lb/b/c/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/c/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lb/b/b/a/j$e;->p:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb/b/b/a/j$e;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lb/b/b/a/j$e;->i:F

    iput v0, p0, Lb/b/b/a/j$e;->j:F

    iput v0, p0, Lb/b/b/a/j$e;->k:F

    iput v0, p0, Lb/b/b/a/j$e;->l:F

    const/16 v0, 0xff

    iput v0, p0, Lb/b/b/a/j$e;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/b/a/j$e;->n:Ljava/lang/String;

    new-instance v0, Lb/b/c/d/a;

    invoke-direct {v0}, Lb/b/c/d/a;-><init>()V

    iput-object v0, p0, Lb/b/b/a/j$e;->o:Lb/b/c/d/a;

    new-instance v0, Lb/b/b/a/j$c;

    invoke-direct {v0}, Lb/b/b/a/j$c;-><init>()V

    iput-object v0, p0, Lb/b/b/a/j$e;->h:Lb/b/b/a/j$c;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lb/b/b/a/j$e;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lb/b/b/a/j$e;->b:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Lb/b/b/a/j$e;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb/b/b/a/j$e;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lb/b/b/a/j$e;->i:F

    iput v0, p0, Lb/b/b/a/j$e;->j:F

    iput v0, p0, Lb/b/b/a/j$e;->k:F

    iput v0, p0, Lb/b/b/a/j$e;->l:F

    const/16 v0, 0xff

    iput v0, p0, Lb/b/b/a/j$e;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/b/a/j$e;->n:Ljava/lang/String;

    new-instance v0, Lb/b/c/d/a;

    invoke-direct {v0}, Lb/b/c/d/a;-><init>()V

    iput-object v0, p0, Lb/b/b/a/j$e;->o:Lb/b/c/d/a;

    new-instance v0, Lb/b/b/a/j$c;

    iget-object v1, p1, Lb/b/b/a/j$e;->h:Lb/b/b/a/j$c;

    iget-object v2, p0, Lb/b/b/a/j$e;->o:Lb/b/c/d/a;

    invoke-direct {v0, v1, v2}, Lb/b/b/a/j$c;-><init>(Lb/b/b/a/j$c;Lb/b/c/d/a;)V

    iput-object v0, p0, Lb/b/b/a/j$e;->h:Lb/b/b/a/j$c;

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Lb/b/b/a/j$e;->a:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lb/b/b/a/j$e;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Lb/b/b/a/j$e;->b:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lb/b/b/a/j$e;->b:Landroid/graphics/Path;

    iget v0, p1, Lb/b/b/a/j$e;->i:F

    iput v0, p0, Lb/b/b/a/j$e;->i:F

    iget v0, p1, Lb/b/b/a/j$e;->j:F

    iput v0, p0, Lb/b/b/a/j$e;->j:F

    iget v0, p1, Lb/b/b/a/j$e;->k:F

    iput v0, p0, Lb/b/b/a/j$e;->k:F

    iget v0, p1, Lb/b/b/a/j$e;->l:F

    iput v0, p0, Lb/b/b/a/j$e;->l:F

    iget v0, p1, Lb/b/b/a/j$e;->g:I

    iput v0, p0, Lb/b/b/a/j$e;->g:I

    iget v0, p1, Lb/b/b/a/j$e;->m:I

    iput v0, p0, Lb/b/b/a/j$e;->m:I

    iget-object v0, p1, Lb/b/b/a/j$e;->n:Ljava/lang/String;

    iput-object v0, p0, Lb/b/b/a/j$e;->n:Ljava/lang/String;

    iget-object p1, p1, Lb/b/b/a/j$e;->n:Ljava/lang/String;

    if-eqz p1, :cond_63

    iget-object v0, p0, Lb/b/b/a/j$e;->o:Lb/b/c/d/a;

    invoke-virtual {v0, p1, p0}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    return-void
.end method

.method static synthetic a(Lb/b/b/a/j$e;)Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lb/b/b/a/j$e;->e:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic a(Lb/b/b/a/j$e;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .registers 2

    iput-object p1, p0, Lb/b/b/a/j$e;->e:Landroid/graphics/Paint;

    return-object p1
.end method

.method private a(Lb/b/b/a/j$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .registers 23

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p6

    invoke-static/range {p1 .. p1}, Lb/b/b/a/j$c;->a(Lb/b/b/a/j$c;)Landroid/graphics/Matrix;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-static/range {p1 .. p1}, Lb/b/b/a/j$c;->a(Lb/b/b/a/j$c;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lb/b/b/a/j$c;->b(Lb/b/b/a/j$c;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_21
    iget-object v0, v8, Lb/b/b/a/j$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_1cc

    iget-object v0, v8, Lb/b/b/a/j$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lb/b/b/a/j$c;

    if-eqz v1, :cond_49

    move-object v1, v0

    check-cast v1, Lb/b/b/a/j$c;

    invoke-static/range {p1 .. p1}, Lb/b/b/a/j$c;->a(Lb/b/b/a/j$c;)Landroid/graphics/Matrix;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lb/b/b/a/j$e;->a(Lb/b/b/a/j$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    goto/16 :goto_1c1

    :cond_49
    instance-of v1, v0, Lb/b/b/a/j$d;

    if-eqz v1, :cond_1c1

    check-cast v0, Lb/b/b/a/j$d;

    move/from16 v1, p4

    int-to-float v2, v1

    iget v3, v7, Lb/b/b/a/j$e;->k:F

    div-float/2addr v2, v3

    move/from16 v3, p5

    int-to-float v4, v3

    iget v5, v7, Lb/b/b/a/j$e;->l:F

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static/range {p1 .. p1}, Lb/b/b/a/j$c;->a(Lb/b/b/a/j$c;)Landroid/graphics/Matrix;

    move-result-object v6

    iget-object v13, v7, Lb/b/b/a/j$e;->c:Landroid/graphics/Matrix;

    invoke-virtual {v13, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v13, v7, Lb/b/b/a/j$e;->c:Landroid/graphics/Matrix;

    invoke-virtual {v13, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_1d2

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->mapVectors([F)V

    aget v4, v2, v11

    float-to-double v13, v4

    const/4 v4, 0x1

    aget v6, v2, v4

    move/from16 p2, v5

    float-to-double v4, v6

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x2

    aget v6, v2, v5

    float-to-double v13, v6

    const/4 v6, 0x3

    aget v15, v2, v6

    float-to-double v6, v15

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    aget v7, v2, v11

    const/4 v13, 0x1

    aget v14, v2, v13

    aget v5, v2, v5

    const/4 v13, 0x3

    aget v2, v2, v13

    mul-float v7, v7, v2

    mul-float v14, v14, v5

    sub-float/2addr v7, v14

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-lez v5, :cond_b0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v2, v5, v2

    goto :goto_b1

    :cond_b0
    const/4 v2, 0x0

    :goto_b1
    cmpl-float v5, v2, v4

    if-nez v5, :cond_b9

    move-object/from16 v5, p0

    goto/16 :goto_1c6

    :cond_b9
    move-object/from16 v5, p0

    iget-object v6, v5, Lb/b/b/a/j$e;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v6}, Lb/b/b/a/j$d;->a(Landroid/graphics/Path;)V

    iget-object v6, v5, Lb/b/b/a/j$e;->a:Landroid/graphics/Path;

    iget-object v7, v5, Lb/b/b/a/j$e;->b:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v0}, Lb/b/b/a/j$d;->a()Z

    move-result v7

    if-eqz v7, :cond_db

    iget-object v0, v5, Lb/b/b/a/j$e;->b:Landroid/graphics/Path;

    iget-object v2, v5, Lb/b/b/a/j$e;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    iget-object v0, v5, Lb/b/b/a/j$e;->b:Landroid/graphics/Path;

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto/16 :goto_1c6

    :cond_db
    check-cast v0, Lb/b/b/a/j$b;

    iget v7, v0, Lb/b/b/a/j$b;->k:F

    const/high16 v13, 0x3f800000  # 1.0f

    cmpl-float v7, v7, v4

    if-nez v7, :cond_eb

    iget v7, v0, Lb/b/b/a/j$b;->l:F

    cmpl-float v7, v7, v13

    if-eqz v7, :cond_12d

    :cond_eb
    iget v7, v0, Lb/b/b/a/j$b;->k:F

    iget v14, v0, Lb/b/b/a/j$b;->m:F

    add-float/2addr v7, v14

    rem-float/2addr v7, v13

    iget v15, v0, Lb/b/b/a/j$b;->l:F

    add-float/2addr v15, v14

    rem-float/2addr v15, v13

    iget-object v13, v5, Lb/b/b/a/j$e;->f:Landroid/graphics/PathMeasure;

    if-nez v13, :cond_100

    new-instance v13, Landroid/graphics/PathMeasure;

    invoke-direct {v13}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v13, v5, Lb/b/b/a/j$e;->f:Landroid/graphics/PathMeasure;

    :cond_100
    iget-object v13, v5, Lb/b/b/a/j$e;->f:Landroid/graphics/PathMeasure;

    iget-object v14, v5, Lb/b/b/a/j$e;->a:Landroid/graphics/Path;

    invoke-virtual {v13, v14, v11}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v13, v5, Lb/b/b/a/j$e;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v13}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v13

    mul-float v7, v7, v13

    mul-float v15, v15, v13

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    cmpl-float v14, v7, v15

    if-lez v14, :cond_124

    iget-object v14, v5, Lb/b/b/a/j$e;->f:Landroid/graphics/PathMeasure;

    const/4 v11, 0x1

    invoke-virtual {v14, v7, v13, v6, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object v7, v5, Lb/b/b/a/j$e;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v7, v4, v15, v6, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_12a

    :cond_124
    const/4 v11, 0x1

    iget-object v13, v5, Lb/b/b/a/j$e;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v13, v7, v15, v6, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :goto_12a
    invoke-virtual {v6, v4, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    :cond_12d
    iget-object v4, v5, Lb/b/b/a/j$e;->b:Landroid/graphics/Path;

    iget-object v7, v5, Lb/b/b/a/j$e;->c:Landroid/graphics/Matrix;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    iget v4, v0, Lb/b/b/a/j$b;->g:I

    if-eqz v4, :cond_173

    iget-object v4, v5, Lb/b/b/a/j$e;->e:Landroid/graphics/Paint;

    if-nez v4, :cond_150

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v5, Lb/b/b/a/j$e;->e:Landroid/graphics/Paint;

    iget-object v4, v5, Lb/b/b/a/j$e;->e:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v5, Lb/b/b/a/j$e;->e:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_150
    iget-object v4, v5, Lb/b/b/a/j$e;->e:Landroid/graphics/Paint;

    iget v6, v0, Lb/b/b/a/j$b;->g:I

    iget v7, v0, Lb/b/b/a/j$b;->j:F

    invoke-static {v6, v7}, Lb/b/b/a/j;->a(IF)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v6, v5, Lb/b/b/a/j$e;->b:Landroid/graphics/Path;

    iget v7, v0, Lb/b/b/a/j$b;->i:I

    if-nez v7, :cond_169

    sget-object v7, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_16b

    :cond_169
    sget-object v7, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_16b
    invoke-virtual {v6, v7}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v6, v5, Lb/b/b/a/j$e;->b:Landroid/graphics/Path;

    invoke-virtual {v9, v6, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_173
    iget v4, v0, Lb/b/b/a/j$b;->e:I

    if-eqz v4, :cond_1c6

    iget-object v4, v5, Lb/b/b/a/j$e;->d:Landroid/graphics/Paint;

    if-nez v4, :cond_18f

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v5, Lb/b/b/a/j$e;->d:Landroid/graphics/Paint;

    iget-object v4, v5, Lb/b/b/a/j$e;->d:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v5, Lb/b/b/a/j$e;->d:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_18f
    iget-object v4, v5, Lb/b/b/a/j$e;->d:Landroid/graphics/Paint;

    iget-object v6, v0, Lb/b/b/a/j$b;->o:Landroid/graphics/Paint$Join;

    if-eqz v6, :cond_198

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    :cond_198
    iget-object v6, v0, Lb/b/b/a/j$b;->n:Landroid/graphics/Paint$Cap;

    if-eqz v6, :cond_19f

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_19f
    iget v6, v0, Lb/b/b/a/j$b;->p:F

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    iget v6, v0, Lb/b/b/a/j$b;->e:I

    iget v7, v0, Lb/b/b/a/j$b;->h:F

    invoke-static {v6, v7}, Lb/b/b/a/j;->a(IF)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    mul-float v2, v2, p2

    iget v0, v0, Lb/b/b/a/j$b;->f:F

    mul-float v0, v0, v2

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v5, Lb/b/b/a/j$e;->b:Landroid/graphics/Path;

    invoke-virtual {v9, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1c6

    :cond_1c1
    :goto_1c1
    move/from16 v1, p4

    move/from16 v3, p5

    move-object v5, v7

    :cond_1c6
    :goto_1c6
    add-int/lit8 v12, v12, 0x1

    move-object v7, v5

    const/4 v11, 0x0

    goto/16 :goto_21

    :cond_1cc
    move-object v5, v7

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    return-void

    nop

    :array_1d2
    .array-data 4
        0x0
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic b(Lb/b/b/a/j$e;)Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lb/b/b/a/j$e;->d:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic b(Lb/b/b/a/j$e;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .registers 2

    iput-object p1, p0, Lb/b/b/a/j$e;->d:Landroid/graphics/Paint;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .registers 12

    iget-object v1, p0, Lb/b/b/a/j$e;->h:Lb/b/b/a/j$c;

    sget-object v2, Lb/b/b/a/j$e;->p:Landroid/graphics/Matrix;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lb/b/b/a/j$e;->a(Lb/b/b/a/j$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public getAlpha()F
    .registers 3

    invoke-virtual {p0}, Lb/b/b/a/j$e;->getRootAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000  # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRootAlpha()I
    .registers 2

    iget v0, p0, Lb/b/b/a/j$e;->m:I

    return v0
.end method

.method public setAlpha(F)V
    .registers 3

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lb/b/b/a/j$e;->setRootAlpha(I)V

    return-void
.end method

.method public setRootAlpha(I)V
    .registers 2

    iput p1, p0, Lb/b/b/a/j$e;->m:I

    return-void
.end method
