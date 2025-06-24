.class Landroid/support/v4/widget/c$c;
.super Ljava/lang/Object;
.source "CompoundButtonCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .registers 6

    sget-boolean v0, Landroid/support/v4/widget/c$c;->b:Z

    const-string v1, "CompoundButtonCompat"

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :try_start_7
    const-class v2, Landroid/widget/CompoundButton;

    const-string v3, "mButtonDrawable"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v4/widget/c$c;->a:Ljava/lang/reflect/Field;

    sget-object v2, Landroid/support/v4/widget/c$c;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception v2

    const-string v3, "Failed to retrieve mButtonDrawable field"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    sput-boolean v0, Landroid/support/v4/widget/c$c;->b:Z

    :cond_1f
    sget-object v0, Landroid/support/v4/widget/c$c;->a:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    :try_start_24
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;
    :try_end_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_2a} :catch_2b

    return-object p1

    :catch_2b
    move-exception p1

    const-string v0, "Failed to get button drawable via reflection"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v2, Landroid/support/v4/widget/c$c;->a:Ljava/lang/reflect/Field;

    :cond_33
    return-object v2
.end method

.method public a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .registers 4

    instance-of v0, p1, Landroid/support/v4/widget/k;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/support/v4/widget/k;

    invoke-interface {p1, p2}, Landroid/support/v4/widget/k;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_9
    return-void
.end method

.method public a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    instance-of v0, p1, Landroid/support/v4/widget/k;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/support/v4/widget/k;

    invoke-interface {p1, p2}, Landroid/support/v4/widget/k;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_9
    return-void
.end method
