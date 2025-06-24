.class Lb/b/c/a/g;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Lb/b/c/a/c$a;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 6

    invoke-static {p1}, Lb/b/c/a/b;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const/4 p4, 0x0

    if-nez p1, :cond_8

    return-object p4

    :cond_8
    :try_start_8
    invoke-static {p1, p2, p3}, Lb/b/c/a/b;->a(Ljava/io/File;Landroid/content/res/Resources;I)Z

    move-result p2
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_c} :catch_23
    .catchall {:try_start_8 .. :try_end_c} :catchall_1e

    if-nez p2, :cond_12

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p4

    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1a} :catch_23
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1e

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p2

    :catchall_1e
    move-exception p2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    throw p2

    :catch_23
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p4
.end method

.method public a(Landroid/content/Context;Landroid/os/CancellationSignal;[Lb/b/c/c/b$f;I)Landroid/graphics/Typeface;
    .registers 7

    array-length p2, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_6

    return-object v0

    :cond_6
    invoke-virtual {p0, p3, p4}, Lb/b/c/a/g;->a([Lb/b/c/c/b$f;I)Lb/b/c/c/b$f;

    move-result-object p2

    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p2}, Lb/b/c/c/b$f;->c()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_16} :catch_2a
    .catchall {:try_start_a .. :try_end_16} :catchall_23

    :try_start_16
    invoke-virtual {p0, p1, p2}, Lb/b/c/a/g;->a(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_2b
    .catchall {:try_start_16 .. :try_end_1a} :catchall_20

    if-eqz p2, :cond_1f

    :try_start_1c
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_1f

    :catch_1f
    :cond_1f
    return-object p1

    :catchall_20
    move-exception p1

    move-object v0, p2

    goto :goto_24

    :catchall_23
    move-exception p1

    :goto_24
    if-eqz v0, :cond_29

    :try_start_26
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_29

    :catch_29
    :cond_29
    throw p1

    :catch_2a
    move-object p2, v0

    :catch_2b
    if-eqz p2, :cond_30

    :try_start_2d
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_30

    :catch_30
    :cond_30
    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/support/v4/content/e/a$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 19

    move/from16 v0, p4

    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/content/e/a$b;->a()[Landroid/support/v4/content/e/a$c;

    move-result-object v1

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_d

    const/16 v2, 0x190

    goto :goto_f

    :cond_d
    const/16 v2, 0x2bc

    :goto_f
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    array-length v6, v1

    const v7, 0x7fffffff

    const/4 v8, 0x0

    move-object v9, v8

    const/4 v7, 0x0

    const v10, 0x7fffffff

    :goto_22
    if-ge v7, v6, :cond_44

    aget-object v11, v1, v7

    invoke-virtual {v11}, Landroid/support/v4/content/e/a$c;->c()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    mul-int/lit8 v12, v12, 0x2

    invoke-virtual {v11}, Landroid/support/v4/content/e/a$c;->d()Z

    move-result v13

    if-ne v13, v3, :cond_39

    const/4 v13, 0x0

    goto :goto_3a

    :cond_39
    const/4 v13, 0x1

    :goto_3a
    add-int/2addr v12, v13

    if-eqz v9, :cond_3f

    if-le v10, v12, :cond_41

    :cond_3f
    move-object v9, v11

    move v10, v12

    :cond_41
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    :cond_44
    if-nez v9, :cond_47

    return-object v8

    :cond_47
    invoke-virtual {v9}, Landroid/support/v4/content/e/a$c;->b()I

    move-result v1

    invoke-virtual {v9}, Landroid/support/v4/content/e/a$c;->a()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object/from16 v4, p3

    invoke-static {p1, v4, v1, v2, v0}, Lb/b/c/a/c;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .registers 4

    invoke-static {p1}, Lb/b/c/a/b;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    :try_start_8
    invoke-static {p1, p2}, Lb/b/c/a/b;->a(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result p2
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_c} :catch_23
    .catchall {:try_start_8 .. :try_end_c} :catchall_1e

    if-nez p2, :cond_12

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object v0

    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1a} :catch_23
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1e

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p2

    :catchall_1e
    move-exception p2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    throw p2

    :catch_23
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object v0
.end method

.method protected a([Lb/b/c/c/b$f;I)Lb/b/c/c/b$f;
    .registers 13

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_7

    const/16 v0, 0x190

    goto :goto_9

    :cond_7
    const/16 v0, 0x2bc

    :goto_9
    and-int/lit8 p2, p2, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_11

    const/4 p2, 0x1

    goto :goto_12

    :cond_11
    const/4 p2, 0x0

    :goto_12
    const/4 v3, 0x0

    array-length v4, p1

    const v5, 0x7fffffff

    move-object v5, v3

    const/4 v3, 0x0

    const v6, 0x7fffffff

    :goto_1c
    if-ge v3, v4, :cond_3e

    aget-object v7, p1, v3

    invoke-virtual {v7}, Lb/b/c/c/b$f;->d()I

    move-result v8

    sub-int/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    invoke-virtual {v7}, Lb/b/c/c/b$f;->e()Z

    move-result v9

    if-ne v9, p2, :cond_33

    const/4 v9, 0x0

    goto :goto_34

    :cond_33
    const/4 v9, 0x1

    :goto_34
    add-int/2addr v8, v9

    if-eqz v5, :cond_39

    if-le v6, v8, :cond_3b

    :cond_39
    move-object v5, v7

    move v6, v8

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_3e
    check-cast v5, Lb/b/c/c/b$f;

    return-object v5
.end method
