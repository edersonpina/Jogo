.class public Lb/b/c/a/f;
.super Lb/b/c/a/d;
.source "TypefaceCompatApi26Impl.java"


# static fields
.field private static final a:Ljava/lang/Class;

.field private static final b:Ljava/lang/reflect/Constructor;

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/reflect/Method;

.field private static final e:Ljava/lang/reflect/Method;

.field private static final f:Ljava/lang/reflect/Method;

.field private static final g:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const-string v0, "android.graphics.FontFamily"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const-string v4, "addFontFromAssetManager"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/res/AssetManager;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x4

    aput-object v6, v5, v10

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x5

    aput-object v6, v5, v11

    const/4 v6, 0x6

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v5, v6

    const/4 v6, 0x7

    const-class v12, [Landroid/graphics/fonts/FontVariationAxis;

    aput-object v12, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "addFontFromBuffer"

    new-array v6, v11, [Ljava/lang/Class;

    const-class v11, Ljava/nio/ByteBuffer;

    aput-object v11, v6, v2

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v6, v7

    const-class v11, [Landroid/graphics/fonts/FontVariationAxis;

    aput-object v11, v6, v8

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v6, v9

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v6, v10

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "freeze"

    new-array v10, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v10, "abortCreation"

    new-array v11, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-static {v0, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v11

    const-class v12, Landroid/graphics/Typeface;

    const-string v13, "createFromFamiliesWithDefault"

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v9, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v9, v7

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v9, v8

    invoke-virtual {v12, v13, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_8a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_8a} :catch_8e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_8a} :catch_8c

    move-object v1, v3

    goto :goto_af

    :catch_8c
    move-exception v0

    goto :goto_8f

    :catch_8e
    move-exception v0

    :goto_8f
    const-string v2, "Unable to collect necessary methods for class "

    invoke-static {v2}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TypefaceCompatApi26Impl"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    move-object v2, v0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v10, v6

    :goto_af
    sput-object v1, Lb/b/c/a/f;->b:Ljava/lang/reflect/Constructor;

    sput-object v0, Lb/b/c/a/f;->a:Ljava/lang/Class;

    sput-object v4, Lb/b/c/a/f;->c:Ljava/lang/reflect/Method;

    sput-object v5, Lb/b/c/a/f;->d:Ljava/lang/reflect/Method;

    sput-object v6, Lb/b/c/a/f;->e:Ljava/lang/reflect/Method;

    sput-object v10, Lb/b/c/a/f;->f:Ljava/lang/reflect/Method;

    sput-object v2, Lb/b/c/a/f;->g:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/b/c/a/d;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;)V
    .registers 3

    :try_start_0
    sget-object v0, Lb/b/c/a/f;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    goto :goto_c

    :catch_b
    move-exception p0

    :goto_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a()Z
    .registers 2

    sget-object v0, Lb/b/c/a/f;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_b

    const-string v0, "TypefaceCompatApi26Impl"

    const-string v1, "Unable to collect necessary private methods. Fallback to legacy implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-object v0, Lb/b/c/a/f;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III)Z
    .registers 9

    :try_start_0
    sget-object v0, Lb/b/c/a/f;->c:Ljava/lang/reflect/Method;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p2, v1, p0

    const/4 p0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, p0

    const/4 p0, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p0

    const/4 p0, 0x5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p0

    const/4 p0, 0x6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p0

    const/4 p0, 0x7

    const/4 p2, 0x0

    aput-object p2, v1, p0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_41} :catch_44
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_41} :catch_42

    return p0

    :catch_42
    move-exception p0

    goto :goto_45

    :catch_44
    move-exception p0

    :goto_45
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static b(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .registers 6

    :try_start_0
    sget-object v0, Lb/b/c/a/f;->a:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object p0, Lb/b/c/a/f;->g:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;
    :try_end_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_27} :catch_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception p0

    goto :goto_2b

    :catch_2a
    move-exception p0

    :goto_2b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static b()Ljava/lang/Object;
    .registers 2

    :try_start_0
    sget-object v0, Lb/b/c/a/f;->b:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_e
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    goto :goto_f

    :catch_c
    move-exception v0

    goto :goto_f

    :catch_e
    move-exception v0

    :goto_f
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static c(Ljava/lang/Object;)Z
    .registers 3

    :try_start_0
    sget-object v0, Lb/b/c/a/f;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_f} :catch_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_f} :catch_10

    return p0

    :catch_10
    move-exception p0

    goto :goto_13

    :catch_12
    move-exception p0

    :goto_13
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 12

    invoke-static {}, Lb/b/c/a/f;->a()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super/range {p0 .. p5}, Lb/b/c/a/g;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-static {}, Lb/b/c/a/f;->b()Ljava/lang/Object;

    move-result-object p2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p4

    invoke-static/range {v0 .. v5}, Lb/b/c/a/f;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_20

    invoke-static {p2}, Lb/b/c/a/f;->a(Ljava/lang/Object;)V

    return-object p3

    :cond_20
    invoke-static {p2}, Lb/b/c/a/f;->c(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    return-object p3

    :cond_27
    invoke-static {p2}, Lb/b/c/a/f;->b(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Landroid/os/CancellationSignal;[Lb/b/c/c/b$f;I)Landroid/graphics/Typeface;
    .registers 16

    array-length v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_6

    return-object v2

    :cond_6
    invoke-static {}, Lb/b/c/a/f;->a()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-virtual {p0, p3, p4}, Lb/b/c/a/g;->a([Lb/b/c/c/b$f;I)Lb/b/c/c/b$f;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    :try_start_14
    invoke-virtual {p3}, Lb/b/c/c/b$f;->c()Landroid/net/Uri;

    move-result-object p4

    const-string v0, "r"

    invoke-virtual {p1, p4, v0, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1e} :catch_4d

    :try_start_1e
    new-instance p2, Landroid/graphics/Typeface$Builder;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p4

    invoke-direct {p2, p4}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p3}, Lb/b/c/c/b$f;->d()I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    move-result-object p2

    invoke-virtual {p3}, Lb/b/c/c/b$f;->e()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_3b
    .catchall {:try_start_1e .. :try_end_3b} :catchall_3f

    :try_start_3b
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_4d

    return-object p2

    :catchall_3f
    move-exception p2

    :try_start_40
    throw p2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception p3

    if-eqz p1, :cond_4c

    :try_start_44
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception p1

    :try_start_49
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4c
    :goto_4c
    throw p3
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_4d

    :catch_4d
    return-object v2

    :cond_4e
    invoke-static {p1, p3, p2}, Lb/b/c/c/b;->a(Landroid/content/Context;[Lb/b/c/c/b$f;Landroid/os/CancellationSignal;)Ljava/util/Map;

    move-result-object p1

    invoke-static {}, Lb/b/c/a/f;->b()Ljava/lang/Object;

    move-result-object p2

    array-length v0, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_5a
    if-ge v4, v0, :cond_b2

    aget-object v6, p3, v4

    invoke-virtual {v6}, Lb/b/c/c/b$f;->c()Landroid/net/Uri;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    if-nez v7, :cond_6b

    goto :goto_a6

    :cond_6b
    invoke-virtual {v6}, Lb/b/c/c/b$f;->b()I

    move-result v5

    invoke-virtual {v6}, Lb/b/c/c/b$f;->d()I

    move-result v8

    invoke-virtual {v6}, Lb/b/c/c/b$f;->e()Z

    move-result v6

    :try_start_77
    sget-object v9, Lb/b/c/a/f;->d:Ljava/lang/reflect/Method;

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v1

    const/4 v5, 0x2

    aput-object v2, v10, v5

    const/4 v5, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v5

    const/4 v5, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v5

    invoke-virtual {v9, p2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_9f
    .catch Ljava/lang/IllegalAccessException; {:try_start_77 .. :try_end_9f} :catch_ab
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_77 .. :try_end_9f} :catch_a9

    if-nez v5, :cond_a5

    invoke-static {p2}, Lb/b/c/a/f;->a(Ljava/lang/Object;)V

    return-object v2

    :cond_a5
    const/4 v5, 0x1

    :goto_a6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    :catch_a9
    move-exception p1

    goto :goto_ac

    :catch_ab
    move-exception p1

    :goto_ac
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_b2
    if-nez v5, :cond_b8

    invoke-static {p2}, Lb/b/c/a/f;->a(Ljava/lang/Object;)V

    return-object v2

    :cond_b8
    invoke-static {p2}, Lb/b/c/a/f;->c(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bf

    return-object v2

    :cond_bf
    invoke-static {p2}, Lb/b/c/a/f;->b(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {p1, p4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Landroid/support/v4/content/e/a$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 13

    invoke-static {}, Lb/b/c/a/f;->a()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0, p1, p2, p3, p4}, Lb/b/c/a/g;->a(Landroid/content/Context;Landroid/support/v4/content/e/a$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-static {}, Lb/b/c/a/f;->b()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2}, Landroid/support/v4/content/e/a$b;->a()[Landroid/support/v4/content/e/a$c;

    move-result-object p2

    array-length p4, p2

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_16
    const/4 v7, 0x0

    if-ge v6, p4, :cond_37

    aget-object v0, p2, v6

    invoke-virtual {v0}, Landroid/support/v4/content/e/a$c;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/support/v4/content/e/a$c;->c()I

    move-result v4

    invoke-virtual {v0}, Landroid/support/v4/content/e/a$c;->d()Z

    move-result v5

    move-object v0, p1

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lb/b/c/a/f;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static {p3}, Lb/b/c/a/f;->a(Ljava/lang/Object;)V

    return-object v7

    :cond_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_37
    invoke-static {p3}, Lb/b/c/a/f;->c(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    return-object v7

    :cond_3e
    invoke-static {p3}, Lb/b/c/a/f;->b(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method
