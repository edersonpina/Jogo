.class public Landroid/support/v7/widget/a0;
.super Landroid/widget/TextView;
.source "AppCompatTextView.java"

# interfaces
.implements Landroid/support/v4/view/m;
.implements Landroid/support/v4/widget/b;


# instance fields
.field private final b:Landroid/support/v7/widget/e;

.field private final c:Landroid/support/v7/widget/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/a0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/a0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-static {p1}, Landroid/support/v7/widget/v0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/support/v7/widget/e;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v7/widget/a0;->b:Landroid/support/v7/widget/e;

    iget-object p1, p0, Landroid/support/v7/widget/a0;->b:Landroid/support/v7/widget/e;

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/e;->a(Landroid/util/AttributeSet;I)V

    invoke-static {p0}, Landroid/support/v7/widget/y;->a(Landroid/widget/TextView;)Landroid/support/v7/widget/y;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/a0;->c:Landroid/support/v7/widget/y;

    iget-object p1, p0, Landroid/support/v7/widget/a0;->c:Landroid/support/v7/widget/y;

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/y;->a(Landroid/util/AttributeSet;I)V

    iget-object p1, p0, Landroid/support/v7/widget/a0;->c:Landroid/support/v7/widget/y;

    invoke-virtual {p1}, Landroid/support/v7/widget/y;->a()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/v7/widget/a0;->b:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->a()V

    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/a0;->c:Landroid/support/v7/widget/y;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/support/v7/widget/y;->a()V

    :cond_11
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .registers 2

    sget-boolean v0, Landroid/support/v4/widget/b;->a:Z

    if-eqz v0, :cond_9

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/a0;->c:Landroid/support/v7/widget/y;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v7/widget/y;->c()I

    move-result v0

    return v0

    :cond_12
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .registers 2

    sget-boolean v0, Landroid/support/v4/widget/b;->a:Z

    if-eqz v0, :cond_9

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/a0;->c:Landroid/support/v7/widget/y;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v7/widget/y;->d()I

    move-result v0

    return v0

    :cond_12
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .registers 2

    sget-boolean v0, Landroid/support/v4/widget/b;->a:Z

    if-eqz v0, :cond_9

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/a0;->c:Landroid/support/v7/widget/y;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v7/widget/y;->e()I

    move-result v0

    return v0

    :cond_12
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .registers 2

    sget-boolean v0, Landroid/support/v4/widget/b;->a:Z

    if-eqz v0, :cond_9

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/a0;->c:Landroid/support/v7/widget/y;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v7/widget/y;->f()[I

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .registers 4

    sget-boolean v0, Landroid/support/v4/widget/b;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1

    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/a0;->c:Landroid/support/v7/widget/y;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/support/v7/widget/y;->g()I

    move-result v0

    return v0

    :cond_17
    return v1
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/a0;->b:Landroid/support/v7/widget/e;

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

    iget-object v0, p0, Landroid/support/v7/widget/a0;->b:Landroid/support/v7/widget/e;

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

    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Landroid/support/v7/widget/l;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    iget-object p1, p0, Landroid/support/v7/widget/a0;->c:Landroid/support/v7/widget/y;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/support/v7/widget/y;->i()V

    :cond_a
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object p1, p0, Landroid/support/v7/widget/a0;->c:Landroid/support/v7/widget/y;

    if-eqz p1, :cond_16

    sget-boolean p2, Landroid/support/v4/widget/b;->a:Z

    if-nez p2, :cond_16

    invoke-virtual {p1}, Landroid/support/v7/widget/y;->h()Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Landroid/support/v7/widget/a0;->c:Landroid/support/v7/widget/y;

    invoke-virtual {p1}, Landroid/support/v7/widget/y;->b()V

    :cond_16
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .registers 6

    sget-boolean v0, Landroid/support/v4/widget/b;->a:Z

    if-eqz v0, :cond_8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_f

    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/a0;->c:Landroid/support/v7/widget/y;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/y;->a(IIII)V

    :cond_f
    :goto_f
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .registers 4

    sget-boolean v0, Landroid/support/v4/widget/b;->a:Z

    if-eqz v0, :cond_8

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_f

    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/a0;->c:Landroid/support/v7/widget/y;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/y;->a([II)V

    :cond_f
    :goto_f
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .registers 3

    sget-boolean v0, Landroid/support/v4/widget/b;->a:Z

    if-eqz v0, :cond_8

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_f

    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/a0;->c:Landroid/support/v7/widget/y;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/y;->a(I)V

    :cond_f
    :goto_f
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroid/support/v7/widget/a0;->b:Landroid/support/v7/widget/e;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/support/v7/widget/e;->d()V

    :cond_a
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Landroid/support/v7/widget/a0;->b:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->a(I)V

    :cond_a
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/a0;->b:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->b(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/a0;->b:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_7
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Landroid/support/v7/widget/a0;->c:Landroid/support/v7/widget/y;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/y;->a(Landroid/content/Context;I)V

    :cond_a
    return-void
.end method

.method public setTextSize(IF)V
    .registers 4

    sget-boolean v0, Landroid/support/v4/widget/b;->a:Z

    if-eqz v0, :cond_8

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_f

    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/a0;->c:Landroid/support/v7/widget/y;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/y;->a(IF)V

    :cond_f
    :goto_f
    return-void
.end method
