.class public Lb/b/c/c/b;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/c/c/b$e;,
        Lb/b/c/c/b$f;,
        Lb/b/c/c/b$g;
    }
.end annotation


# static fields
.field private static final a:Lb/b/c/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/c/d/g<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lb/b/c/c/c;

.field private static final c:Ljava/lang/Object;

.field private static final d:Lb/b/c/d/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/c/d/j<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lb/b/c/c/c$d<",
            "Lb/b/c/c/b$g;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lb/b/c/d/g;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lb/b/c/d/g;-><init>(I)V

    sput-object v0, Lb/b/c/c/b;->a:Lb/b/c/d/g;

    new-instance v0, Lb/b/c/c/c;

    const-string v1, "fonts"

    const/16 v2, 0xa

    const/16 v3, 0x2710

    invoke-direct {v0, v1, v2, v3}, Lb/b/c/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/b/c/c/b;->b:Lb/b/c/c/c;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lb/b/c/c/b;->c:Ljava/lang/Object;

    new-instance v0, Lb/b/c/d/j;

    invoke-direct {v0}, Lb/b/c/d/j;-><init>()V

    sput-object v0, Lb/b/c/c/b;->d:Lb/b/c/d/j;

    new-instance v0, Lb/b/c/c/b$d;

    invoke-direct {v0}, Lb/b/c/c/b$d;-><init>()V

    sput-object v0, Lb/b/c/c/b;->e:Ljava/util/Comparator;

    return-void
.end method

.method public static a(Landroid/content/Context;Lb/b/c/c/a;Landroid/support/v4/content/e/b;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lb/b/c/c/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lb/b/c/c/b;->a:Lb/b/c/d/g;

    invoke-virtual {v1, v0}, Lb/b/c/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_28

    if-eqz p2, :cond_27

    invoke-virtual {p2, v1}, Landroid/support/v4/content/e/b;->a(Landroid/graphics/Typeface;)V

    :cond_27
    return-object v1

    :cond_28
    if-eqz p4, :cond_43

    const/4 v1, -0x1

    if-ne p5, v1, :cond_43

    invoke-static {p0, p1, p6}, Lb/b/c/c/b;->b(Landroid/content/Context;Lb/b/c/c/a;I)Lb/b/c/c/b$g;

    move-result-object p0

    if-eqz p2, :cond_40

    iget p1, p0, Lb/b/c/c/b$g;->b:I

    if-nez p1, :cond_3d

    iget-object p1, p0, Lb/b/c/c/b$g;->a:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1, p3}, Landroid/support/v4/content/e/b;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_40

    :cond_3d
    invoke-virtual {p2, p1, p3}, Landroid/support/v4/content/e/b;->a(ILandroid/os/Handler;)V

    :cond_40
    :goto_40
    iget-object p0, p0, Lb/b/c/c/b$g;->a:Landroid/graphics/Typeface;

    return-object p0

    :cond_43
    new-instance v1, Lb/b/c/c/b$a;

    invoke-direct {v1, p0, p1, p6, v0}, Lb/b/c/c/b$a;-><init>(Landroid/content/Context;Lb/b/c/c/a;ILjava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p4, :cond_56

    :try_start_4b
    sget-object p1, Lb/b/c/c/b;->b:Lb/b/c/c/c;

    invoke-virtual {p1, v1, p5}, Lb/b/c/c/c;->a(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/c/c/b$g;

    iget-object p0, p1, Lb/b/c/c/b$g;->a:Landroid/graphics/Typeface;
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_55} :catch_55

    :catch_55
    return-object p0

    :cond_56
    if-nez p2, :cond_5a

    move-object p1, p0

    goto :goto_5f

    :cond_5a
    new-instance p1, Lb/b/c/c/b$b;

    invoke-direct {p1, p2, p3}, Lb/b/c/c/b$b;-><init>(Landroid/support/v4/content/e/b;Landroid/os/Handler;)V

    :goto_5f
    sget-object p2, Lb/b/c/c/b;->c:Ljava/lang/Object;

    monitor-enter p2

    :try_start_62
    sget-object p3, Lb/b/c/c/b;->d:Lb/b/c/d/j;

    invoke-virtual {p3, v0}, Lb/b/c/d/j;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_79

    if-eqz p1, :cond_77

    sget-object p3, Lb/b/c/c/b;->d:Lb/b/c/d/j;

    invoke-virtual {p3, v0}, Lb/b/c/d/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_77
    monitor-exit p2

    return-object p0

    :cond_79
    if-eqz p1, :cond_88

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lb/b/c/c/b;->d:Lb/b/c/d/j;

    invoke-virtual {p1, v0, p3}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_88
    monitor-exit p2
    :try_end_89
    .catchall {:try_start_62 .. :try_end_89} :catchall_94

    sget-object p1, Lb/b/c/c/b;->b:Lb/b/c/c/c;

    new-instance p2, Lb/b/c/c/b$c;

    invoke-direct {p2, v0}, Lb/b/c/c/b$c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, p2}, Lb/b/c/c/c;->a(Ljava/util/concurrent/Callable;Lb/b/c/c/c$d;)V

    return-object p0

    :catchall_94
    move-exception p0

    :try_start_95
    monitor-exit p2
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/CancellationSignal;Lb/b/c/c/a;)Lb/b/c/c/b$e;
    .registers 24

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lb/b/c/c/a;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-eqz v4, :cond_218

    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lb/b/c/c/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ff

    iget-object v2, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x40

    invoke-virtual {v0, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_2f
    array-length v6, v0

    if-ge v5, v6, :cond_3e

    aget-object v6, v0, v5

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_3e
    sget-object v0, Lb/b/c/c/b;->e:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p2 .. p2}, Lb/b/c/c/a;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual/range {p2 .. p2}, Lb/b/c/c/a;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_56

    :cond_4e
    invoke-virtual/range {p2 .. p2}, Lb/b/c/c/a;->b()I

    move-result v0

    invoke-static {v1, v0}, Landroid/support/v4/content/e/a;->a(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v0

    :goto_56
    const/4 v1, 0x0

    :goto_57
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v1, v5, :cond_9f

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v8, Lb/b/c/c/b;->e:Ljava/util/Comparator;

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-eq v8, v9, :cond_7a

    goto :goto_93

    :cond_7a
    const/4 v8, 0x0

    :goto_7b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_98

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_95

    :goto_93
    const/4 v5, 0x0

    goto :goto_99

    :cond_95
    add-int/lit8 v8, v8, 0x1

    goto :goto_7b

    :cond_98
    const/4 v5, 0x1

    :goto_99
    if-eqz v5, :cond_9c

    goto :goto_a0

    :cond_9c
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    :cond_9f
    move-object v4, v6

    :goto_a0
    if-nez v4, :cond_a8

    new-instance v0, Lb/b/c/c/b$e;

    invoke-direct {v0, v7, v6}, Lb/b/c/c/b$e;-><init>(I[Lb/b/c/c/b$f;)V

    return-object v0

    :cond_a8
    iget-object v0, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "file"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :try_start_d9
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_db
    .catchall {:try_start_d9 .. :try_end_db} :catchall_1f7

    const/16 v5, 0x10

    const-string v6, "font_variation_settings"

    const/4 v8, 0x2

    const/4 v9, 0x7

    const-string v15, "result_code"

    const-string v14, "font_italic"

    const-string v13, "font_weight"

    const-string v12, "font_ttc_index"

    const-string v11, "file_id"

    const-string v10, "_id"

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v19, 0x3

    if-le v4, v5, :cond_12e

    :try_start_f7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/String;

    aput-object v10, v5, v3

    aput-object v11, v5, v7

    aput-object v12, v5, v8

    aput-object v6, v5, v19

    aput-object v13, v5, v18

    aput-object v14, v5, v17

    aput-object v15, v5, v16

    const-string v6, "query = ?"

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lb/b/c/c/a;->f()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/16 v16, 0x0

    move-object v8, v4

    move-object v9, v2

    move-object v4, v10

    move-object v10, v5

    move-object v5, v11

    move-object v11, v6

    move-object v6, v12

    move-object v12, v7

    move-object v7, v13

    move-object/from16 v13, v16

    move-object/from16 v20, v14

    move-object/from16 v14, p1

    invoke-virtual/range {v8 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    move-object v14, v6

    move-object/from16 v6, v20

    goto :goto_163

    :cond_12e
    move-object v4, v10

    move-object v5, v11

    move-object v7, v13

    move-object/from16 v20, v14

    move-object v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    new-array v11, v9, [Ljava/lang/String;

    aput-object v4, v11, v3

    const/4 v9, 0x1

    aput-object v5, v11, v9

    aput-object v14, v11, v8

    aput-object v6, v11, v19

    aput-object v7, v11, v18

    move-object/from16 v6, v20

    aput-object v6, v11, v17

    aput-object v15, v11, v16

    const-string v12, "query = ?"

    const/4 v8, 0x1

    new-array v13, v8, [Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lb/b/c/c/a;->f()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v13, v3

    const/16 v16, 0x0

    move-object v8, v10

    move-object v9, v2

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_163
    .catchall {:try_start_f7 .. :try_end_163} :catchall_1f7

    :goto_163
    if-eqz v8, :cond_1e4

    :try_start_165
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_1e4

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    :goto_188
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_1e0

    const/4 v11, -0x1

    if-eq v1, v11, :cond_198

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move/from16 v18, v12

    goto :goto_19b

    :cond_198
    const/4 v12, 0x0

    const/16 v18, 0x0

    :goto_19b
    if-eq v10, v11, :cond_1a3

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move v15, v12

    goto :goto_1a5

    :cond_1a3
    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_1a5
    if-ne v5, v11, :cond_1b0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    goto :goto_1b8

    :cond_1b0
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v0, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    :goto_1b8
    move-object v14, v12

    if-eq v7, v11, :cond_1c2

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move/from16 v16, v12

    goto :goto_1c6

    :cond_1c2
    const/16 v12, 0x190

    const/16 v16, 0x190

    :goto_1c6
    if-eq v6, v11, :cond_1d3

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1d3

    const/4 v11, 0x1

    const/16 v17, 0x1

    goto :goto_1d6

    :cond_1d3
    const/4 v11, 0x0

    const/16 v17, 0x0

    :goto_1d6
    new-instance v11, Lb/b/c/c/b$f;

    move-object v13, v11

    invoke-direct/range {v13 .. v18}, Lb/b/c/c/b$f;-><init>(Landroid/net/Uri;IIZI)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1df
    .catchall {:try_start_165 .. :try_end_1df} :catchall_1e2

    goto :goto_188

    :cond_1e0
    move-object v1, v9

    goto :goto_1e4

    :catchall_1e2
    move-exception v0

    goto :goto_1f9

    :cond_1e4
    :goto_1e4
    if-eqz v8, :cond_1e9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1e9
    new-array v0, v3, [Lb/b/c/c/b$f;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/b/c/c/b$f;

    new-instance v1, Lb/b/c/c/b$e;

    invoke-direct {v1, v3, v0}, Lb/b/c/c/b$e;-><init>(I[Lb/b/c/c/b$f;)V

    return-object v1

    :catchall_1f7
    move-exception v0

    const/4 v8, 0x0

    :goto_1f9
    if-eqz v8, :cond_1fe

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1fe
    throw v0

    :cond_1ff
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v1, "Found content provider "

    const-string v3, ", but package was not "

    invoke-static {v1, v2, v3}, Ld/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lb/b/c/c/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_218
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v1, "No package found for authority: "

    invoke-static {v1, v2}, Ld/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_225

    :goto_224
    throw v0

    :goto_225
    goto :goto_224
.end method

.method static synthetic a(Landroid/content/Context;Lb/b/c/c/a;I)Lb/b/c/c/b$g;
    .registers 3

    invoke-static {p0, p1, p2}, Lb/b/c/c/b;->b(Landroid/content/Context;Lb/b/c/c/a;I)Lb/b/c/c/b$g;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Lb/b/c/d/g;
    .registers 1

    sget-object v0, Lb/b/c/c/b;->a:Lb/b/c/d/g;

    return-object v0
.end method

.method public static a(Landroid/content/Context;[Lb/b/c/c/b$f;Landroid/os/CancellationSignal;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lb/b/c/c/b$f;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_27

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lb/b/c/c/b$f;->a()I

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_24

    :cond_12
    invoke-virtual {v3}, Lb/b/c/c/b$f;->c()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_24

    :cond_1d
    invoke-static {p0, p2, v3}, Lb/b/c/a/b;->a(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_27
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Lb/b/c/c/a;I)Lb/b/c/c/b$g;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0, p1}, Lb/b/c/c/b;->a(Landroid/content/Context;Landroid/os/CancellationSignal;Lb/b/c/c/a;)Lb/b/c/c/b$e;

    move-result-object p1
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_5} :catch_2b

    invoke-virtual {p1}, Lb/b/c/c/b$e;->b()I

    move-result v1

    const/4 v2, -0x3

    if-nez v1, :cond_1d

    invoke-virtual {p1}, Lb/b/c/c/b$e;->a()[Lb/b/c/c/b$f;

    move-result-object p1

    invoke-static {p0, v0, p1, p2}, Lb/b/c/a/c;->a(Landroid/content/Context;Landroid/os/CancellationSignal;[Lb/b/c/c/b$f;I)Landroid/graphics/Typeface;

    move-result-object p0

    new-instance p1, Lb/b/c/c/b$g;

    if-eqz p0, :cond_19

    const/4 v2, 0x0

    :cond_19
    invoke-direct {p1, p0, v2}, Lb/b/c/c/b$g;-><init>(Landroid/graphics/Typeface;I)V

    return-object p1

    :cond_1d
    invoke-virtual {p1}, Lb/b/c/c/b$e;->b()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_25

    const/4 v2, -0x2

    :cond_25
    new-instance p0, Lb/b/c/c/b$g;

    invoke-direct {p0, v0, v2}, Lb/b/c/c/b$g;-><init>(Landroid/graphics/Typeface;I)V

    return-object p0

    :catch_2b
    new-instance p0, Lb/b/c/c/b$g;

    const/4 p1, -0x1

    invoke-direct {p0, v0, p1}, Lb/b/c/c/b$g;-><init>(Landroid/graphics/Typeface;I)V

    return-object p0
.end method

.method static synthetic b()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lb/b/c/c/b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c()Lb/b/c/d/j;
    .registers 1

    sget-object v0, Lb/b/c/c/b;->d:Lb/b/c/d/j;

    return-object v0
.end method
