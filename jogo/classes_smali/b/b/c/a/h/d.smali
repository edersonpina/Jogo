.class Lb/b/c/a/h/d;
.super Lb/b/c/a/h/c;
.source "DrawableWrapperApi19.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/c/a/h/d$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/c/a/h/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method constructor <init>(Lb/b/c/a/h/c$a;Landroid/content/res/Resources;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lb/b/c/a/h/c;-><init>(Lb/b/c/a/h/c$a;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method c()Lb/b/c/a/h/c$a;
    .registers 4

    new-instance v0, Lb/b/c/a/h/d$a;

    iget-object v1, p0, Lb/b/c/a/h/c;->e:Lb/b/c/a/h/c$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/b/c/a/h/d$a;-><init>(Lb/b/c/a/h/c$a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public isAutoMirrored()Z
    .registers 2

    iget-object v0, p0, Lb/b/c/a/h/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public setAutoMirrored(Z)V
    .registers 3

    iget-object v0, p0, Lb/b/c/a/h/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void
.end method
