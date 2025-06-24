.class public Landroid/support/v7/widget/k;
.super Landroid/widget/EditText;
.source "AppCompatEditText.java"

# interfaces
.implements Landroid/support/v4/view/m;


# instance fields
.field private final b:Landroid/support/v7/widget/e;

.field private final c:Landroid/support/v7/widget/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lb/b/d/a/a;->editTextStyle:I

    invoke-static {p1}, Landroid/support/v7/widget/v0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/support/v7/widget/e;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/e;

    iget-object p1, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/e;

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/e;->a(Landroid/util/AttributeSet;I)V

    invoke-static {p0}, Landroid/support/v7/widget/y;->a(Landroid/widget/TextView;)Landroid/support/v7/widget/y;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/widget/y;

    iget-object p1, p0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/widget/y;

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/y;->a(Landroid/util/AttributeSet;I)V

    iget-object p1, p0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/widget/y;

    invoke-virtual {p1}, Landroid/support/v7/widget/y;->a()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->a()V

    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/widget/y;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/support/v7/widget/y;->a()V

    :cond_11
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/e;

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

    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Landroid/support/v7/widget/l;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/e;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/support/v7/widget/e;->d()V

    :cond_a
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->a(I)V

    :cond_a
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->b(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_7
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/widget/y;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/y;->a(Landroid/content/Context;I)V

    :cond_a
    return-void
.end method
