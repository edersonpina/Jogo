.class public final Lb/b/c/a/h/a;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Z

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Z


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;)I
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result p0

    return p0

    :cond_b
    const/16 v1, 0x11

    const/4 v2, 0x0

    if-lt v0, v1, :cond_4b

    sget-boolean v0, Lb/b/c/a/h/a;->d:Z

    const-string v1, "DrawableCompat"

    if-nez v0, :cond_31

    const/4 v0, 0x1

    :try_start_17
    const-class v3, Landroid/graphics/drawable/Drawable;

    new-array v4, v2, [Ljava/lang/Class;
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_1b} :catch_29

    const-string v5, "getLayoutDirection"

    :try_start_1d
    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lb/b/c/a/h/a;->c:Ljava/lang/reflect/Method;

    sget-object v3, Lb/b/c/a/h/a;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1d .. :try_end_28} :catch_29

    goto :goto_2f

    :catch_29
    move-exception v3

    const-string v4, "Failed to retrieve getLayoutDirection() method"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    sput-boolean v0, Lb/b/c/a/h/a;->d:Z

    :cond_31
    sget-object v0, Lb/b/c/a/h/a;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4b

    :try_start_35
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_41} :catch_42

    return p0

    :catch_42
    move-exception p0

    const-string v0, "Failed to invoke getLayoutDirection() via reflection"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    sput-object p0, Lb/b/c/a/h/a;->c:Ljava/lang/reflect/Method;

    :cond_4b
    return v2
.end method

.method public static a(Landroid/graphics/drawable/Drawable;FF)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_9
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;IIII)V
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_9
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_13

    :cond_a
    instance-of v0, p0, Lb/b/c/a/h/f;

    if-eqz v0, :cond_13

    check-cast p0, Lb/b/c/a/h/f;

    invoke-interface {p0, p1}, Lb/b/c/a/h/f;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    :cond_9
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_13

    :cond_a
    instance-of v0, p0, Lb/b/c/a/h/f;

    if-eqz v0, :cond_13

    check-cast p0, Lb/b/c/a/h/f;

    invoke-interface {p0, p1}, Lb/b/c/a/h/f;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_9

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_9
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;I)Z
    .registers 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result p0

    return p0

    :cond_b
    const/16 v1, 0x11

    const/4 v2, 0x0

    if-lt v0, v1, :cond_4e

    sget-boolean v0, Lb/b/c/a/h/a;->b:Z

    const-string v1, "DrawableCompat"

    const/4 v3, 0x1

    if-nez v0, :cond_35

    :try_start_17
    const-class v0, Landroid/graphics/drawable/Drawable;

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_1f} :catch_2d

    const-string v5, "setLayoutDirection"

    :try_start_21
    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lb/b/c/a/h/a;->a:Ljava/lang/reflect/Method;

    sget-object v0, Lb/b/c/a/h/a;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_33

    :catch_2d
    move-exception v0

    const-string v4, "Failed to retrieve setLayoutDirection(int) method"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_33
    sput-boolean v3, Lb/b/c/a/h/a;->b:Z

    :cond_35
    sget-object v0, Lb/b/c/a/h/a;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4e

    :try_start_39
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_45

    return v3

    :catch_45
    move-exception p0

    const-string p1, "Failed to invoke setLayoutDirection(int) via reflection"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    sput-object p0, Lb/b/c/a/h/a;->a:Ljava/lang/reflect/Method;

    :cond_4e
    return v2
.end method

.method public static b(Landroid/graphics/drawable/Drawable;I)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_13

    :cond_a
    instance-of v0, p0, Lb/b/c/a/h/f;

    if-eqz v0, :cond_13

    check-cast p0, Lb/b/c/a/h/f;

    invoke-interface {p0, p1}, Lb/b/c/a/h/f;->setTint(I)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_7

    return-object p0

    :cond_7
    const/16 v1, 0x15

    if-lt v0, v1, :cond_16

    instance-of v0, p0, Lb/b/c/a/h/f;

    if-nez v0, :cond_15

    new-instance v0, Lb/b/c/a/h/e;

    invoke-direct {v0, p0}, Lb/b/c/a/h/e;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_15
    return-object p0

    :cond_16
    const/16 v1, 0x13

    if-lt v0, v1, :cond_25

    instance-of v0, p0, Lb/b/c/a/h/f;

    if-nez v0, :cond_24

    new-instance v0, Lb/b/c/a/h/d;

    invoke-direct {v0, p0}, Lb/b/c/a/h/d;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_24
    return-object p0

    :cond_25
    instance-of v0, p0, Lb/b/c/a/h/f;

    if-nez v0, :cond_2f

    new-instance v0, Lb/b/c/a/h/c;

    invoke-direct {v0, p0}, Lb/b/c/a/h/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_2f
    return-object p0
.end method
