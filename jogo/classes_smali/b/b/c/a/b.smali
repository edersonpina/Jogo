.class public Lb/b/c/a/b;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/c/a/b$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Ljava/io/File;
    .registers 6

    const-string v0, ".font"

    invoke-static {v0}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_21
    const/16 v2, 0x64

    if-ge v1, v2, :cond_3c

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v1}, Ld/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_32
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_36} :catch_39

    if-eqz v3, :cond_39

    return-object v2

    :catch_39
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .registers 9

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    :try_start_4
    const-string v0, "r"

    invoke-virtual {p0, p2, v0, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_44

    :try_start_a
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_36

    :try_start_13
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p2
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_2a

    :try_start_23
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_36

    :try_start_26
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_44

    return-object p2

    :catchall_2a
    move-exception p2

    :try_start_2b
    throw p2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v0

    :try_start_2d
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception p1

    :try_start_32
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_35
    throw v0
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p1

    :try_start_37
    throw p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception p2

    if-eqz p0, :cond_43

    :try_start_3b
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception p0

    :try_start_40
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_43
    :goto_43
    throw p2
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_44

    :catch_44
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .registers 3

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_10

    :try_start_4
    invoke-static {p0, p1}, Lb/b/c/a/b;->a(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_e

    if-eqz p1, :cond_d

    :try_start_a
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_d

    :catch_d
    :cond_d
    return p0

    :catchall_e
    move-exception p0

    goto :goto_12

    :catchall_10
    move-exception p0

    const/4 p1, 0x0

    :goto_12
    if-eqz p1, :cond_17

    :try_start_14
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    throw p0
.end method

.method public static a(Ljava/io/File;Ljava/io/InputStream;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_23
    .catchall {:try_start_2 .. :try_end_7} :catchall_21

    const/16 p0, 0x400

    :try_start_9
    new-array p0, p0, [B

    :goto_b
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_16

    invoke-virtual {v2, p0, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_15} :catch_1e
    .catchall {:try_start_9 .. :try_end_15} :catchall_1b

    goto :goto_b

    :cond_16
    const/4 p0, 0x1

    :try_start_17
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1a

    :catch_1a
    return p0

    :catchall_1b
    move-exception p0

    move-object v1, v2

    goto :goto_44

    :catch_1e
    move-exception p0

    move-object v1, v2

    goto :goto_24

    :catchall_21
    move-exception p0

    goto :goto_44

    :catch_23
    move-exception p0

    :goto_24
    :try_start_24
    const-string p1, "TypefaceCompatUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error copying resource contents to temp file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_24 .. :try_end_3e} :catchall_21

    if-eqz v1, :cond_43

    :try_start_40
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_43

    :catch_43
    :cond_43
    return v0

    :goto_44
    if-eqz v1, :cond_49

    :try_start_46
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_49

    :catch_49
    :cond_49
    goto :goto_4b

    :goto_4a
    throw p0

    :goto_4b
    goto :goto_4a
.end method

.method public static a([Lb/b/c/a/b$a;[Lb/b/c/a/b$a;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2c

    if-nez p1, :cond_6

    goto :goto_2c

    :cond_6
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_b

    return v0

    :cond_b
    const/4 v1, 0x0

    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_2a

    aget-object v2, p0, v1

    iget-char v2, v2, Lb/b/c/a/b$a;->a:C

    aget-object v3, p1, v1

    iget-char v3, v3, Lb/b/c/a/b$a;->a:C

    if-ne v2, v3, :cond_29

    aget-object v2, p0, v1

    iget-object v2, v2, Lb/b/c/a/b$a;->b:[F

    array-length v2, v2

    aget-object v3, p1, v1

    iget-object v3, v3, Lb/b/c/a/b$a;->b:[F

    array-length v3, v3

    if-eq v2, v3, :cond_26

    goto :goto_29

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_29
    :goto_29
    return v0

    :cond_2a
    const/4 p0, 0x1

    return p0

    :cond_2c
    :goto_2c
    return v0
.end method

.method static a([FII)[F
    .registers 5

    if-gt p1, p2, :cond_1a

    array-length v0, p0

    if-ltz p1, :cond_14

    if-gt p1, v0, :cond_14

    sub-int/2addr p2, p1

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array p2, p2, [F

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_14
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static a(Ljava/lang/String;)[Lb/b/c/a/b$a;
    .registers 17

    move-object/from16 v0, p0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_e3

    :goto_14
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x45

    const/16 v7, 0x65

    if-ge v3, v5, :cond_3a

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v8, v5, -0x41

    add-int/lit8 v9, v5, -0x5a

    mul-int v9, v9, v8

    if-lez v9, :cond_32

    add-int/lit8 v8, v5, -0x61

    add-int/lit8 v9, v5, -0x7a

    mul-int v9, v9, v8

    if-gtz v9, :cond_37

    :cond_32
    if-eq v5, v7, :cond_37

    if-eq v5, v6, :cond_37

    goto :goto_3a

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_3a
    :goto_3a
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_db

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x7a

    if-eq v5, v8, :cond_cd

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x5a

    if-ne v5, v8, :cond_5a

    goto/16 :goto_cd

    :cond_5a
    :try_start_5a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    new-array v5, v5, [F

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_66
    if-ge v9, v8, :cond_b6

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v2, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_71
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v2, v15, :cond_9f

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v7, 0x20

    if-eq v15, v7, :cond_95

    const/16 v7, 0x65

    if-eq v15, v6, :cond_93

    if-eq v15, v7, :cond_93

    packed-switch v15, :pswitch_data_10a

    goto :goto_98

    :pswitch_89  #0x2e
    if-nez v13, :cond_91

    const/4 v13, 0x1

    goto :goto_98

    :pswitch_8d  #0x2d
    if-eq v2, v9, :cond_98

    if-nez v14, :cond_98

    :cond_91
    const/4 v12, 0x1

    goto :goto_97

    :cond_93
    const/4 v14, 0x1

    goto :goto_99

    :cond_95
    const/16 v7, 0x65

    :goto_97
    :pswitch_97  #0x2c
    const/4 v11, 0x1

    :cond_98
    :goto_98
    const/4 v14, 0x0

    :goto_99
    if-eqz v11, :cond_9c

    goto :goto_9f

    :cond_9c
    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    :cond_9f
    :goto_9f
    if-ge v9, v2, :cond_ae

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v5, v10

    move v10, v11

    :cond_ae
    if-eqz v12, :cond_b1

    goto :goto_b3

    :cond_b1
    add-int/lit8 v2, v2, 0x1

    :goto_b3
    move v9, v2

    const/4 v2, 0x0

    goto :goto_66

    :cond_b6
    invoke-static {v5, v2, v10}, Lb/b/c/a/b;->a([FII)[F

    move-result-object v2
    :try_end_ba
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_ba} :catch_be

    const/4 v5, 0x0

    move-object v5, v2

    const/4 v2, 0x0

    goto :goto_cf

    :catch_be
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "error in parsing \""

    const-string v3, "\""

    invoke-static {v2, v4, v3}, Ld/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_cd
    :goto_cd
    new-array v5, v2, [F

    :goto_cf
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    new-instance v4, Lb/b/c/a/b$a;

    invoke-direct {v4, v2, v5}, Lb/b/c/a/b$a;-><init>(C[F)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_db
    add-int/lit8 v2, v3, 0x1

    const/4 v4, 0x0

    move v4, v3

    move v3, v2

    const/4 v2, 0x0

    goto/16 :goto_e

    :cond_e3
    sub-int/2addr v3, v4

    const/4 v2, 0x1

    if-ne v3, v2, :cond_fc

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_fc

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    new-array v2, v2, [F

    new-instance v3, Lb/b/c/a/b$a;

    invoke-direct {v3, v0, v2}, Lb/b/c/a/b$a;-><init>(C[F)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fc
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lb/b/c/a/b$a;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/b/c/a/b$a;

    return-object v0

    nop

    :pswitch_data_10a
    .packed-switch 0x2c
        :pswitch_97  #0000002c
        :pswitch_8d  #0000002d
        :pswitch_89  #0000002e
    .end packed-switch
.end method

.method public static a([Lb/b/c/a/b$a;)[Lb/b/c/a/b$a;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    new-array v0, v0, [Lb/b/c/a/b$a;

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_17

    new-instance v2, Lb/b/c/a/b$a;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lb/b/c/a/b$a;-><init>(Lb/b/c/a/b$a;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_17
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Landroid/graphics/Path;
    .registers 4

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-static {p0}, Lb/b/c/a/b;->a(Ljava/lang/String;)[Lb/b/c/a/b$a;

    move-result-object v1

    if-eqz v1, :cond_1c

    :try_start_b
    invoke-static {v1, v0}, Lb/b/c/a/b$a;->a([Lb/b/c/a/b$a;Landroid/graphics/Path;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error in parsing "

    invoke-static {v2, p0}, Ld/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method
