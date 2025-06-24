.class Lb/b/c/a/d;
.super Lb/b/c/a/g;
.source "TypefaceCompatApi21Impl.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/b/c/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/CancellationSignal;[Lb/b/c/c/b$f;I)Landroid/graphics/Typeface;
    .registers 8

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {p0, p3, p4}, Lb/b/c/a/g;->a([Lb/b/c/c/b$f;I)Lb/b/c/c/b$f;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    :try_start_e
    invoke-virtual {p3}, Lb/b/c/c/b$f;->c()Landroid/net/Uri;

    move-result-object p3

    const-string v0, "r"

    invoke-virtual {p4, p3, v0, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_85

    :try_start_18
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "/proc/self/fd/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p4

    iget p4, p4, Landroid/system/StructStat;->st_mode:I

    invoke-static {p4}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result p4

    if-eqz p4, :cond_43

    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_42
    .catch Landroid/system/ErrnoException; {:try_start_18 .. :try_end_42} :catch_43
    .catchall {:try_start_18 .. :try_end_42} :catchall_77

    goto :goto_44

    :catch_43
    :cond_43
    move-object p4, v1

    :goto_44
    if-eqz p4, :cond_57

    :try_start_46
    invoke-virtual {p4}, Ljava/io/File;->canRead()Z

    move-result p3

    if-nez p3, :cond_4d

    goto :goto_57

    :cond_4d
    invoke-static {p4}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_77

    if-eqz p2, :cond_56

    :try_start_53
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_85

    :cond_56
    return-object p1

    :cond_57
    :goto_57
    :try_start_57
    new-instance p3, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_77

    :try_start_60
    invoke-super {p0, p1, p3}, Lb/b/c/a/g;->a(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_6b

    :try_start_64
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_77

    :try_start_67
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_85

    return-object p1

    :catchall_6b
    move-exception p1

    :try_start_6c
    throw p1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception p4

    :try_start_6e
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_76

    :catchall_72
    move-exception p3

    :try_start_73
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_76
    throw p4
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception p1

    :try_start_78
    throw p1
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_79

    :catchall_79
    move-exception p3

    if-eqz p2, :cond_84

    :try_start_7c
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_84

    :catchall_80
    move-exception p2

    :try_start_81
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_84
    :goto_84
    throw p3
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_85} :catch_85

    :catch_85
    return-object v1
.end method
