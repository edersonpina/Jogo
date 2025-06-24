.class Lb/b/b/a/j$c;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private final j:Landroid/graphics/Matrix;

.field k:I

.field private l:[I

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb/b/b/a/j$c;->a:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/b/a/j$c;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lb/b/b/a/j$c;->c:F

    iput v0, p0, Lb/b/b/a/j$c;->d:F

    iput v0, p0, Lb/b/b/a/j$c;->e:F

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lb/b/b/a/j$c;->f:F

    iput v1, p0, Lb/b/b/a/j$c;->g:F

    iput v0, p0, Lb/b/b/a/j$c;->h:F

    iput v0, p0, Lb/b/b/a/j$c;->i:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb/b/b/a/j$c;->j:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/b/a/j$c;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lb/b/b/a/j$c;Lb/b/c/d/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/b/a/j$c;",
            "Lb/b/c/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb/b/b/a/j$c;->a:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/b/a/j$c;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lb/b/b/a/j$c;->c:F

    iput v0, p0, Lb/b/b/a/j$c;->d:F

    iput v0, p0, Lb/b/b/a/j$c;->e:F

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lb/b/b/a/j$c;->f:F

    iput v1, p0, Lb/b/b/a/j$c;->g:F

    iput v0, p0, Lb/b/b/a/j$c;->h:F

    iput v0, p0, Lb/b/b/a/j$c;->i:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb/b/b/a/j$c;->j:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/b/a/j$c;->m:Ljava/lang/String;

    iget v0, p1, Lb/b/b/a/j$c;->c:F

    iput v0, p0, Lb/b/b/a/j$c;->c:F

    iget v0, p1, Lb/b/b/a/j$c;->d:F

    iput v0, p0, Lb/b/b/a/j$c;->d:F

    iget v0, p1, Lb/b/b/a/j$c;->e:F

    iput v0, p0, Lb/b/b/a/j$c;->e:F

    iget v0, p1, Lb/b/b/a/j$c;->f:F

    iput v0, p0, Lb/b/b/a/j$c;->f:F

    iget v0, p1, Lb/b/b/a/j$c;->g:F

    iput v0, p0, Lb/b/b/a/j$c;->g:F

    iget v0, p1, Lb/b/b/a/j$c;->h:F

    iput v0, p0, Lb/b/b/a/j$c;->h:F

    iget v0, p1, Lb/b/b/a/j$c;->i:F

    iput v0, p0, Lb/b/b/a/j$c;->i:F

    iget-object v0, p1, Lb/b/b/a/j$c;->l:[I

    iput-object v0, p0, Lb/b/b/a/j$c;->l:[I

    iget-object v0, p1, Lb/b/b/a/j$c;->m:Ljava/lang/String;

    iput-object v0, p0, Lb/b/b/a/j$c;->m:Ljava/lang/String;

    iget v0, p1, Lb/b/b/a/j$c;->k:I

    iput v0, p0, Lb/b/b/a/j$c;->k:I

    iget-object v0, p0, Lb/b/b/a/j$c;->m:Ljava/lang/String;

    if-eqz v0, :cond_5b

    invoke-virtual {p2, v0, p0}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    iget-object v0, p0, Lb/b/b/a/j$c;->j:Landroid/graphics/Matrix;

    iget-object v1, p1, Lb/b/b/a/j$c;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p1, p1, Lb/b/b/a/j$c;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_65
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_ae

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lb/b/b/a/j$c;

    if-eqz v2, :cond_80

    check-cast v1, Lb/b/b/a/j$c;

    iget-object v2, p0, Lb/b/b/a/j$c;->b:Ljava/util/ArrayList;

    new-instance v3, Lb/b/b/a/j$c;

    invoke-direct {v3, v1, p2}, Lb/b/b/a/j$c;-><init>(Lb/b/b/a/j$c;Lb/b/c/d/a;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    :cond_80
    instance-of v2, v1, Lb/b/b/a/j$b;

    if-eqz v2, :cond_8c

    new-instance v2, Lb/b/b/a/j$b;

    check-cast v1, Lb/b/b/a/j$b;

    invoke-direct {v2, v1}, Lb/b/b/a/j$b;-><init>(Lb/b/b/a/j$b;)V

    goto :goto_97

    :cond_8c
    instance-of v2, v1, Lb/b/b/a/j$a;

    if-eqz v2, :cond_a6

    new-instance v2, Lb/b/b/a/j$a;

    check-cast v1, Lb/b/b/a/j$a;

    invoke-direct {v2, v1}, Lb/b/b/a/j$a;-><init>(Lb/b/b/a/j$a;)V

    :goto_97
    iget-object v1, p0, Lb/b/b/a/j$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v2, Lb/b/b/a/j$d;->b:Ljava/lang/String;

    if-eqz v1, :cond_a3

    invoke-virtual {p2, v1, v2}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a3
    :goto_a3
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    :cond_a6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown object in the tree!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ae
    return-void
.end method

.method static synthetic a(Lb/b/b/a/j$c;)Landroid/graphics/Matrix;
    .registers 1

    iget-object p0, p0, Lb/b/b/a/j$c;->a:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private a()V
    .registers 5

    iget-object v0, p0, Lb/b/b/a/j$c;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lb/b/b/a/j$c;->j:Landroid/graphics/Matrix;

    iget v1, p0, Lb/b/b/a/j$c;->d:F

    neg-float v1, v1

    iget v2, p0, Lb/b/b/a/j$c;->e:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lb/b/b/a/j$c;->j:Landroid/graphics/Matrix;

    iget v1, p0, Lb/b/b/a/j$c;->f:F

    iget v2, p0, Lb/b/b/a/j$c;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lb/b/b/a/j$c;->j:Landroid/graphics/Matrix;

    iget v1, p0, Lb/b/b/a/j$c;->c:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Lb/b/b/a/j$c;->j:Landroid/graphics/Matrix;

    iget v1, p0, Lb/b/b/a/j$c;->h:F

    iget v2, p0, Lb/b/b/a/j$c;->d:F

    add-float/2addr v1, v2

    iget v2, p0, Lb/b/b/a/j$c;->i:F

    iget v3, p0, Lb/b/b/a/j$c;->e:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method static synthetic b(Lb/b/b/a/j$c;)Landroid/graphics/Matrix;
    .registers 1

    iget-object p0, p0, Lb/b/b/a/j$c;->j:Landroid/graphics/Matrix;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    sget-object v0, Lb/b/b/a/a;->b:[I

    invoke-static {p1, p3, p2, v0}, La/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, p0, Lb/b/b/a/j$c;->l:[I

    iget p2, p0, Lb/b/b/a/j$c;->c:F

    const/4 p3, 0x5

    const-string v0, "rotation"

    invoke-static {p1, p4, v0, p3, p2}, La/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    iput p2, p0, Lb/b/b/a/j$c;->c:F

    iget p2, p0, Lb/b/b/a/j$c;->d:F

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lb/b/b/a/j$c;->d:F

    iget p2, p0, Lb/b/b/a/j$c;->e:F

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lb/b/b/a/j$c;->e:F

    iget p2, p0, Lb/b/b/a/j$c;->f:F

    const/4 p3, 0x3

    const-string v0, "scaleX"

    invoke-static {p1, p4, v0, p3, p2}, La/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    iput p2, p0, Lb/b/b/a/j$c;->f:F

    iget p2, p0, Lb/b/b/a/j$c;->g:F

    const/4 p3, 0x4

    const-string v0, "scaleY"

    invoke-static {p1, p4, v0, p3, p2}, La/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    iput p2, p0, Lb/b/b/a/j$c;->g:F

    iget p2, p0, Lb/b/b/a/j$c;->h:F

    const/4 p3, 0x6

    const-string v0, "translateX"

    invoke-static {p1, p4, v0, p3, p2}, La/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    iput p2, p0, Lb/b/b/a/j$c;->h:F

    iget p2, p0, Lb/b/b/a/j$c;->i:F

    const/4 p3, 0x7

    const-string v0, "translateY"

    invoke-static {p1, p4, v0, p3, p2}, La/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    iput p2, p0, Lb/b/b/a/j$c;->i:F

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5b

    iput-object p2, p0, Lb/b/b/a/j$c;->m:Ljava/lang/String;

    :cond_5b
    invoke-direct {p0}, Lb/b/b/a/j$c;->a()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public getGroupName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/b/a/j$c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .registers 2

    iget-object v0, p0, Lb/b/b/a/j$c;->j:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPivotX()F
    .registers 2

    iget v0, p0, Lb/b/b/a/j$c;->d:F

    return v0
.end method

.method public getPivotY()F
    .registers 2

    iget v0, p0, Lb/b/b/a/j$c;->e:F

    return v0
.end method

.method public getRotation()F
    .registers 2

    iget v0, p0, Lb/b/b/a/j$c;->c:F

    return v0
.end method

.method public getScaleX()F
    .registers 2

    iget v0, p0, Lb/b/b/a/j$c;->f:F

    return v0
.end method

.method public getScaleY()F
    .registers 2

    iget v0, p0, Lb/b/b/a/j$c;->g:F

    return v0
.end method

.method public getTranslateX()F
    .registers 2

    iget v0, p0, Lb/b/b/a/j$c;->h:F

    return v0
.end method

.method public getTranslateY()F
    .registers 2

    iget v0, p0, Lb/b/b/a/j$c;->i:F

    return v0
.end method

.method public setPivotX(F)V
    .registers 3

    iget v0, p0, Lb/b/b/a/j$c;->d:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    iput p1, p0, Lb/b/b/a/j$c;->d:F

    invoke-direct {p0}, Lb/b/b/a/j$c;->a()V

    :cond_b
    return-void
.end method

.method public setPivotY(F)V
    .registers 3

    iget v0, p0, Lb/b/b/a/j$c;->e:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    iput p1, p0, Lb/b/b/a/j$c;->e:F

    invoke-direct {p0}, Lb/b/b/a/j$c;->a()V

    :cond_b
    return-void
.end method

.method public setRotation(F)V
    .registers 3

    iget v0, p0, Lb/b/b/a/j$c;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    iput p1, p0, Lb/b/b/a/j$c;->c:F

    invoke-direct {p0}, Lb/b/b/a/j$c;->a()V

    :cond_b
    return-void
.end method

.method public setScaleX(F)V
    .registers 3

    iget v0, p0, Lb/b/b/a/j$c;->f:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    iput p1, p0, Lb/b/b/a/j$c;->f:F

    invoke-direct {p0}, Lb/b/b/a/j$c;->a()V

    :cond_b
    return-void
.end method

.method public setScaleY(F)V
    .registers 3

    iget v0, p0, Lb/b/b/a/j$c;->g:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    iput p1, p0, Lb/b/b/a/j$c;->g:F

    invoke-direct {p0}, Lb/b/b/a/j$c;->a()V

    :cond_b
    return-void
.end method

.method public setTranslateX(F)V
    .registers 3

    iget v0, p0, Lb/b/b/a/j$c;->h:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    iput p1, p0, Lb/b/b/a/j$c;->h:F

    invoke-direct {p0}, Lb/b/b/a/j$c;->a()V

    :cond_b
    return-void
.end method

.method public setTranslateY(F)V
    .registers 3

    iget v0, p0, Lb/b/b/a/j$c;->i:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    iput p1, p0, Lb/b/b/a/j$c;->i:F

    invoke-direct {p0}, Lb/b/b/a/j$c;->a()V

    :cond_b
    return-void
.end method
