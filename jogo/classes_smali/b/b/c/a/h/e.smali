.class Lb/b/c/a/h/e;
.super Lb/b/c/a/h/d;
.source "DrawableWrapperApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/c/a/h/e$a;
    }
.end annotation


# static fields
.field private static i:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/c/a/h/d;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lb/b/c/a/h/e;->d()V

    return-void
.end method

.method constructor <init>(Lb/b/c/a/h/c$a;Landroid/content/res/Resources;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lb/b/c/a/h/d;-><init>(Lb/b/c/a/h/c$a;Landroid/content/res/Resources;)V

    invoke-direct {p0}, Lb/b/c/a/h/e;->d()V

    return-void
.end method

.method private d()V
    .registers 4

    sget-object v0, Lb/b/c/a/h/e;->i:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1a

    :try_start_4
    const-class v0, Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_12

    const-string v2, "isProjected"

    :try_start_b
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lb/b/c/a/h/e;->i:Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v0

    const-string v1, "DrawableWrapperApi21"

    const-string v2, "Failed to retrieve Drawable#isProjected() method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method protected b()Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ne v0, v2, :cond_1a

    iget-object v0, p0, Lb/b/c/a/h/c;->g:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v2, :cond_19

    instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer;

    if-nez v2, :cond_19

    instance-of v2, v0, Landroid/graphics/drawable/InsetDrawable;

    if-nez v2, :cond_19

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1a

    :cond_19
    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method c()Lb/b/c/a/h/c$a;
    .registers 4

    new-instance v0, Lb/b/c/a/h/e$a;

    iget-object v1, p0, Lb/b/c/a/h/c;->e:Lb/b/c/a/h/c$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/b/c/a/h/e$a;-><init>(Lb/b/c/a/h/c$a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lb/b/c/a/h/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 3

    iget-object v0, p0, Lb/b/c/a/h/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method public isProjected()Z
    .registers 5

    iget-object v0, p0, Lb/b/c/a/h/c;->g:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    sget-object v2, Lb/b/c/a/h/e;->i:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1e

    :try_start_9
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v2, "DrawableWrapperApi21"

    const-string v3, "Error calling Drawable#isProjected() method"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    return v1
.end method

.method public setHotspot(FF)V
    .registers 4

    iget-object v0, p0, Lb/b/c/a/h/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6

    iget-object v0, p0, Lb/b/c/a/h/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    return-void
.end method

.method public setState([I)Z
    .registers 2

    invoke-super {p0, p1}, Lb/b/c/a/h/c;->setState([I)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public setTint(I)V
    .registers 3

    invoke-virtual {p0}, Lb/b/c/a/h/e;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1}, Lb/b/c/a/h/c;->setTint(I)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lb/b/c/a/h/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_f
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    invoke-virtual {p0}, Lb/b/c/a/h/e;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1}, Lb/b/c/a/h/c;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lb/b/c/a/h/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_f
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    invoke-virtual {p0}, Lb/b/c/a/h/e;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1}, Lb/b/c/a/h/c;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lb/b/c/a/h/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :goto_f
    return-void
.end method
