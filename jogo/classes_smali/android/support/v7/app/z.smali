.class Landroid/support/v7/app/z;
.super Ljava/lang/Object;
.source "ResourcesFlusher.java"


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Z

.field private static c:Ljava/lang/Class;

.field private static d:Z

.field private static e:Ljava/lang/reflect/Field;

.field private static f:Z

.field private static g:Ljava/lang/reflect/Field;

.field private static h:Z


# direct methods
.method static a(Landroid/content/res/Resources;)Z
    .registers 10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "mDrawableCache"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ResourcesFlusher"

    const/4 v5, 0x0

    const/16 v6, 0x18

    if-lt v0, v6, :cond_72

    sget-boolean v0, Landroid/support/v7/app/z;->h:Z

    if-nez v0, :cond_29

    :try_start_11
    const-class v0, Landroid/content/res/Resources;

    const-string v6, "mResourcesImpl"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/z;->g:Ljava/lang/reflect/Field;

    sget-object v0, Landroid/support/v7/app/z;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_20
    .catch Ljava/lang/NoSuchFieldException; {:try_start_11 .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception v0

    const-string v6, "Could not retrieve Resources#mResourcesImpl field"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    sput-boolean v3, Landroid/support/v7/app/z;->h:Z

    :cond_29
    sget-object v0, Landroid/support/v7/app/z;->g:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2e

    goto :goto_71

    :cond_2e
    :try_start_2e
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_32} :catch_33

    goto :goto_3a

    :catch_33
    move-exception p0

    const-string v0, "Could not retrieve value from Resources#mResourcesImpl"

    invoke-static {v4, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v2

    :goto_3a
    if-nez p0, :cond_3d

    goto :goto_71

    :cond_3d
    sget-boolean v0, Landroid/support/v7/app/z;->b:Z

    if-nez v0, :cond_59

    :try_start_41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/z;->a:Ljava/lang/reflect/Field;

    sget-object v0, Landroid/support/v7/app/z;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_50
    .catch Ljava/lang/NoSuchFieldException; {:try_start_41 .. :try_end_50} :catch_51

    goto :goto_57

    :catch_51
    move-exception v0

    const-string v1, "Could not retrieve ResourcesImpl#mDrawableCache field"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_57
    sput-boolean v3, Landroid/support/v7/app/z;->b:Z

    :cond_59
    sget-object v0, Landroid/support/v7/app/z;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_68

    :try_start_5d
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_61
    .catch Ljava/lang/IllegalAccessException; {:try_start_5d .. :try_end_61} :catch_62

    goto :goto_68

    :catch_62
    move-exception p0

    const-string v0, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    invoke-static {v4, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_68
    :goto_68
    if-eqz v2, :cond_71

    invoke-static {v2}, Landroid/support/v7/app/z;->a(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_71

    const/4 v5, 0x1

    :cond_71
    :goto_71
    return v5

    :cond_72
    const/16 v6, 0x17

    const-string v7, "Could not retrieve value from Resources#mDrawableCache"

    const-string v8, "Could not retrieve Resources#mDrawableCache field"

    if-lt v0, v6, :cond_a7

    sget-boolean v0, Landroid/support/v7/app/z;->b:Z

    if-nez v0, :cond_92

    :try_start_7e
    const-class v0, Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/z;->a:Ljava/lang/reflect/Field;

    sget-object v0, Landroid/support/v7/app/z;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7e .. :try_end_8b} :catch_8c

    goto :goto_90

    :catch_8c
    move-exception v0

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_90
    sput-boolean v3, Landroid/support/v7/app/z;->b:Z

    :cond_92
    sget-object v0, Landroid/support/v7/app/z;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_9f

    :try_start_96
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_9a
    .catch Ljava/lang/IllegalAccessException; {:try_start_96 .. :try_end_9a} :catch_9b

    goto :goto_9f

    :catch_9b
    move-exception p0

    invoke-static {v4, v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9f
    :goto_9f
    if-nez v2, :cond_a2

    goto :goto_a6

    :cond_a2
    invoke-static {v2}, Landroid/support/v7/app/z;->a(Ljava/lang/Object;)Z

    move-result v5

    :goto_a6
    return v5

    :cond_a7
    const/16 v6, 0x15

    if-lt v0, v6, :cond_db

    sget-boolean v0, Landroid/support/v7/app/z;->b:Z

    if-nez v0, :cond_c3

    :try_start_af
    const-class v0, Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/z;->a:Ljava/lang/reflect/Field;

    sget-object v0, Landroid/support/v7/app/z;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_bc
    .catch Ljava/lang/NoSuchFieldException; {:try_start_af .. :try_end_bc} :catch_bd

    goto :goto_c1

    :catch_bd
    move-exception v0

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c1
    sput-boolean v3, Landroid/support/v7/app/z;->b:Z

    :cond_c3
    sget-object v0, Landroid/support/v7/app/z;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_d9

    :try_start_c7
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_cd
    .catch Ljava/lang/IllegalAccessException; {:try_start_c7 .. :try_end_cd} :catch_ce

    goto :goto_d3

    :catch_ce
    move-exception p0

    invoke-static {v4, v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v2

    :goto_d3
    if-eqz p0, :cond_d9

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    goto :goto_da

    :cond_d9
    const/4 v3, 0x0

    :goto_da
    return v3

    :cond_db
    return v5
.end method

.method private static a(Ljava/lang/Object;)Z
    .registers 6

    sget-boolean v0, Landroid/support/v7/app/z;->d:Z

    const-string v1, "ResourcesFlusher"

    const/4 v2, 0x1

    if-nez v0, :cond_18

    const-string v0, "android.content.res.ThemedResourceCache"

    :try_start_9
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/z;->c:Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_f} :catch_10

    goto :goto_16

    :catch_10
    move-exception v0

    const-string v3, "Could not find ThemedResourceCache class"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    sput-boolean v2, Landroid/support/v7/app/z;->d:Z

    :cond_18
    sget-object v0, Landroid/support/v7/app/z;->c:Ljava/lang/Class;

    const/4 v3, 0x0

    if-nez v0, :cond_1e

    return v3

    :cond_1e
    sget-boolean v4, Landroid/support/v7/app/z;->f:Z

    if-nez v4, :cond_38

    :try_start_22
    const-string v4, "mUnthemedEntries"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/z;->e:Ljava/lang/reflect/Field;

    sget-object v0, Landroid/support/v7/app/z;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_22 .. :try_end_2f} :catch_30

    goto :goto_36

    :catch_30
    move-exception v0

    const-string v4, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_36
    sput-boolean v2, Landroid/support/v7/app/z;->f:Z

    :cond_38
    sget-object v0, Landroid/support/v7/app/z;->e:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3d

    return v3

    :cond_3d
    const/4 v4, 0x0

    :try_start_3e
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongSparseArray;
    :try_end_44
    .catch Ljava/lang/IllegalAccessException; {:try_start_3e .. :try_end_44} :catch_45

    goto :goto_4c

    :catch_45
    move-exception p0

    const-string v0, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v4

    :goto_4c
    if-eqz p0, :cond_52

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clear()V

    return v2

    :cond_52
    return v3
.end method
