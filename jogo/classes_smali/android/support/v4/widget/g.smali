.class public Landroid/support/v4/widget/g;
.super Ljava/lang/Object;
.source "ImageViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/g$c;,
        Landroid/support/v4/widget/g$a;,
        Landroid/support/v4/widget/g$b;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/widget/g$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/widget/g$c;

    invoke-direct {v0}, Landroid/support/v4/widget/g$c;-><init>()V

    sput-object v0, Landroid/support/v4/widget/g;->a:Landroid/support/v4/widget/g$b;

    goto :goto_15

    :cond_e
    new-instance v0, Landroid/support/v4/widget/g$a;

    invoke-direct {v0}, Landroid/support/v4/widget/g$a;-><init>()V

    sput-object v0, Landroid/support/v4/widget/g;->a:Landroid/support/v4/widget/g$b;

    :goto_15
    return-void
.end method

.method public static a(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    .registers 2

    sget-object v0, Landroid/support/v4/widget/g;->a:Landroid/support/v4/widget/g$b;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/g$b;->b(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .registers 3

    sget-object v0, Landroid/support/v4/widget/g;->a:Landroid/support/v4/widget/g$b;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/g$b;->a(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static a(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    sget-object v0, Landroid/support/v4/widget/g;->a:Landroid/support/v4/widget/g$b;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/g$b;->a(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static b(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    sget-object v0, Landroid/support/v4/widget/g;->a:Landroid/support/v4/widget/g$b;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/g$b;->a(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method
