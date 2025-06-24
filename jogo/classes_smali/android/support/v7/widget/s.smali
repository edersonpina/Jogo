.class public Landroid/support/v7/widget/s;
.super Landroid/widget/RadioButton;
.source "AppCompatRadioButton.java"

# interfaces
.implements Landroid/support/v4/widget/k;


# instance fields
.field private final b:Landroid/support/v7/widget/i;

.field private final c:Landroid/support/v7/widget/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lb/b/d/a/a;->radioButtonStyle:I

    invoke-static {p1}, Landroid/support/v7/widget/v0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/support/v7/widget/i;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/i;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/i;

    iget-object p1, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/i;

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/i;->a(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/support/v7/widget/y;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/y;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/y;

    iget-object p1, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/y;

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/y;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getCompoundPaddingLeft()I
    .registers 3

    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/i;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/i;->a(I)I

    move-result v0

    :cond_c
    return v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/i;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/widget/i;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/i;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/widget/i;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public setButtonDrawable(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/RadioButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/b/d/b/a/b;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/s;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/i;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/support/v7/widget/i;->d()V

    :cond_a
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/i;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/i;->a(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/i;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/i;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_7
    return-void
.end method
