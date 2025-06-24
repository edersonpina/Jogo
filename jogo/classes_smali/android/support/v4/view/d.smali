.class public final Landroid/support/v4/view/d;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/d$a;,
        Landroid/support/v4/view/d$b;,
        Landroid/support/v4/view/d$c;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/d$c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/view/d$a;

    invoke-direct {v0}, Landroid/support/v4/view/d$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/d;->a:Landroid/support/v4/view/d$c;

    goto :goto_15

    :cond_e
    new-instance v0, Landroid/support/v4/view/d$b;

    invoke-direct {v0}, Landroid/support/v4/view/d$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/d;->a:Landroid/support/v4/view/d$c;

    :goto_15
    return-void
.end method

.method public static a(Landroid/view/MenuItem;Landroid/support/v4/view/b;)Landroid/view/MenuItem;
    .registers 3

    instance-of v0, p0, Lb/b/c/b/a/b;

    if-eqz v0, :cond_b

    check-cast p0, Lb/b/c/b/a/b;

    invoke-interface {p0, p1}, Lb/b/c/b/a/b;->a(Landroid/support/v4/view/b;)Lb/b/c/b/a/b;

    move-result-object p0

    return-object p0

    :cond_b
    const-string p1, "MenuItemCompat"

    const-string v0, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static a(Landroid/view/MenuItem;CI)V
    .registers 4

    instance-of v0, p0, Lb/b/c/b/a/b;

    if-eqz v0, :cond_a

    check-cast p0, Lb/b/c/b/a/b;

    invoke-interface {p0, p1, p2}, Lb/b/c/b/a/b;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    goto :goto_f

    :cond_a
    sget-object v0, Landroid/support/v4/view/d;->a:Landroid/support/v4/view/d$c;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/d$c;->a(Landroid/view/MenuItem;CI)V

    :goto_f
    return-void
.end method

.method public static a(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .registers 3

    instance-of v0, p0, Lb/b/c/b/a/b;

    if-eqz v0, :cond_a

    check-cast p0, Lb/b/c/b/a/b;

    invoke-interface {p0, p1}, Lb/b/c/b/a/b;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    goto :goto_f

    :cond_a
    sget-object v0, Landroid/support/v4/view/d;->a:Landroid/support/v4/view/d$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/d$c;->a(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    :goto_f
    return-void
.end method

.method public static a(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    instance-of v0, p0, Lb/b/c/b/a/b;

    if-eqz v0, :cond_a

    check-cast p0, Lb/b/c/b/a/b;

    invoke-interface {p0, p1}, Lb/b/c/b/a/b;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    goto :goto_f

    :cond_a
    sget-object v0, Landroid/support/v4/view/d;->a:Landroid/support/v4/view/d$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/d$c;->a(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    :goto_f
    return-void
.end method

.method public static a(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .registers 3

    instance-of v0, p0, Lb/b/c/b/a/b;

    if-eqz v0, :cond_a

    check-cast p0, Lb/b/c/b/a/b;

    invoke-interface {p0, p1}, Lb/b/c/b/a/b;->setContentDescription(Ljava/lang/CharSequence;)Lb/b/c/b/a/b;

    goto :goto_f

    :cond_a
    sget-object v0, Landroid/support/v4/view/d;->a:Landroid/support/v4/view/d$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/d$c;->a(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    :goto_f
    return-void
.end method

.method public static b(Landroid/view/MenuItem;CI)V
    .registers 4

    instance-of v0, p0, Lb/b/c/b/a/b;

    if-eqz v0, :cond_a

    check-cast p0, Lb/b/c/b/a/b;

    invoke-interface {p0, p1, p2}, Lb/b/c/b/a/b;->setNumericShortcut(CI)Landroid/view/MenuItem;

    goto :goto_f

    :cond_a
    sget-object v0, Landroid/support/v4/view/d;->a:Landroid/support/v4/view/d$c;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/d$c;->b(Landroid/view/MenuItem;CI)V

    :goto_f
    return-void
.end method

.method public static b(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .registers 3

    instance-of v0, p0, Lb/b/c/b/a/b;

    if-eqz v0, :cond_a

    check-cast p0, Lb/b/c/b/a/b;

    invoke-interface {p0, p1}, Lb/b/c/b/a/b;->setTooltipText(Ljava/lang/CharSequence;)Lb/b/c/b/a/b;

    goto :goto_f

    :cond_a
    sget-object v0, Landroid/support/v4/view/d;->a:Landroid/support/v4/view/d$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/d$c;->b(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    :goto_f
    return-void
.end method
