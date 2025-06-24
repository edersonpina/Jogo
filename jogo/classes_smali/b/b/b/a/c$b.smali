.class Lb/b/b/a/c$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AnimatedVectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:Lb/b/b/a/j;

.field c:Landroid/animation/AnimatorSet;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field e:Lb/b/c/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/c/d/a<",
            "Landroid/animation/Animator;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/b/b/a/c$b;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V
    .registers 7

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_88

    iget v0, p1, Lb/b/b/a/c$b;->a:I

    iput v0, p0, Lb/b/b/a/c$b;->a:I

    iget-object v0, p1, Lb/b/b/a/c$b;->b:Lb/b/b/a/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lb/b/b/a/j;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz p3, :cond_1d

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Lb/b/b/a/j;

    iput-object p3, p0, Lb/b/b/a/c$b;->b:Lb/b/b/a/j;

    goto :goto_25

    :cond_1d
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Lb/b/b/a/j;

    iput-object p3, p0, Lb/b/b/a/c$b;->b:Lb/b/b/a/j;

    :goto_25
    iget-object p3, p0, Lb/b/b/a/c$b;->b:Lb/b/b/a/j;

    invoke-virtual {p3}, Lb/b/b/a/j;->mutate()Landroid/graphics/drawable/Drawable;

    check-cast p3, Lb/b/b/a/j;

    iput-object p3, p0, Lb/b/b/a/c$b;->b:Lb/b/b/a/j;

    iget-object p3, p0, Lb/b/b/a/c$b;->b:Lb/b/b/a/j;

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p2, p0, Lb/b/b/a/c$b;->b:Lb/b/b/a/j;

    iget-object p3, p1, Lb/b/b/a/c$b;->b:Lb/b/b/a/j;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lb/b/b/a/c$b;->b:Lb/b/b/a/j;

    invoke-virtual {p2, v1}, Lb/b/b/a/j;->a(Z)V

    :cond_43
    iget-object p2, p1, Lb/b/b/a/c$b;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_88

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lb/b/b/a/c$b;->d:Ljava/util/ArrayList;

    new-instance p3, Lb/b/c/d/a;

    invoke-direct {p3, p2}, Lb/b/c/d/a;-><init>(I)V

    iput-object p3, p0, Lb/b/b/a/c$b;->e:Lb/b/c/d/a;

    :goto_59
    if-ge v1, p2, :cond_85

    iget-object p3, p1, Lb/b/b/a/c$b;->d:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/animation/Animator;

    invoke-virtual {p3}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    iget-object v2, p1, Lb/b/b/a/c$b;->e:Lb/b/c/d/a;

    invoke-virtual {v2, p3}, Lb/b/c/d/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v2, p0, Lb/b/b/a/c$b;->b:Lb/b/b/a/j;

    invoke-virtual {v2, p3}, Lb/b/b/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v2, p0, Lb/b/b/a/c$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lb/b/b/a/c$b;->e:Lb/b/c/d/a;

    invoke-virtual {v2, v0, p3}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    :cond_85
    invoke-virtual {p0}, Lb/b/b/a/c$b;->a()V

    :cond_88
    return-void
.end method

.method static synthetic a(Lb/b/b/a/c$b;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lb/b/b/a/c$b;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic a(Lb/b/b/a/c$b;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Lb/b/b/a/c$b;->d:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lb/b/b/a/c$b;->c:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_b

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lb/b/b/a/c$b;->c:Landroid/animation/AnimatorSet;

    :cond_b
    iget-object v0, p0, Lb/b/b/a/c$b;->c:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lb/b/b/a/c$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void
.end method

.method public getChangingConfigurations()I
    .registers 2

    iget v0, p0, Lb/b/b/a/c$b;->a:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No constant state support for SDK < 24."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No constant state support for SDK < 24."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
