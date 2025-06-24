.class public Landroid/support/v7/widget/m;
.super Landroid/widget/ImageButton;
.source "AppCompatImageButton.java"

# interfaces
.implements Landroid/support/v4/view/m;
.implements Landroid/support/v4/widget/l;


# instance fields
.field private final b:Landroid/support/v7/widget/e;

.field private final c:Landroid/support/v7/widget/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-static {p1}, Landroid/support/v7/widget/v0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/support/v7/widget/e;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/e;

    iget-object p1, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/e;

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/e;->a(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/support/v7/widget/n;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/n;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/n;

    iget-object p1, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/n;

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/n;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->a()V

    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/n;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/support/v7/widget/n;->a()V

    :cond_11
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/n;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/widget/n;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/n;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/widget/n;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/n;

    invoke-virtual {v0}, Landroid/support/v7/widget/n;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-super {p0}, Landroid/widget/ImageButton;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/e;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/support/v7/widget/e;->d()V

    :cond_a
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->a(I)V

    :cond_a
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/n;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/support/v7/widget/n;->a()V

    :cond_a
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/n;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/support/v7/widget/n;->a()V

    :cond_a
    return-void
.end method

.method public setImageResource(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/n;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/n;->a(I)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageURI(Landroid/net/Uri;)V

    iget-object p1, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/n;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/support/v7/widget/n;->a()V

    :cond_a
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->b(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/m;->b:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_7
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/n;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/n;->a(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/m;->c:Landroid/support/v7/widget/n;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/n;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_7
    return-void
.end method
