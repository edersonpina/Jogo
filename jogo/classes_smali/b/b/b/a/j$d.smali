.class Lb/b/b/a/j$d;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field protected a:[Lb/b/c/a/b$a;

.field b:Ljava/lang/String;

.field c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/b/a/j$d;->a:[Lb/b/c/a/b$a;

    return-void
.end method

.method public constructor <init>(Lb/b/b/a/j$d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/b/a/j$d;->a:[Lb/b/c/a/b$a;

    iget-object v0, p1, Lb/b/b/a/j$d;->b:Ljava/lang/String;

    iput-object v0, p0, Lb/b/b/a/j$d;->b:Ljava/lang/String;

    iget v0, p1, Lb/b/b/a/j$d;->c:I

    iput v0, p0, Lb/b/b/a/j$d;->c:I

    iget-object p1, p1, Lb/b/b/a/j$d;->a:[Lb/b/c/a/b$a;

    invoke-static {p1}, Lb/b/c/a/b;->a([Lb/b/c/a/b$a;)[Lb/b/c/a/b$a;

    move-result-object p1

    iput-object p1, p0, Lb/b/b/a/j$d;->a:[Lb/b/c/a/b$a;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;)V
    .registers 3

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lb/b/b/a/j$d;->a:[Lb/b/c/a/b$a;

    if-eqz v0, :cond_a

    invoke-static {v0, p1}, Lb/b/c/a/b$a;->a([Lb/b/c/a/b$a;Landroid/graphics/Path;)V

    :cond_a
    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[Lb/b/c/a/b$a;
    .registers 2

    iget-object v0, p0, Lb/b/b/a/j$d;->a:[Lb/b/c/a/b$a;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/b/a/j$d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Lb/b/c/a/b$a;)V
    .registers 8

    iget-object v0, p0, Lb/b/b/a/j$d;->a:[Lb/b/c/a/b$a;

    invoke-static {v0, p1}, Lb/b/c/a/b;->a([Lb/b/c/a/b$a;[Lb/b/c/a/b$a;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1}, Lb/b/c/a/b;->a([Lb/b/c/a/b$a;)[Lb/b/c/a/b$a;

    move-result-object p1

    iput-object p1, p0, Lb/b/b/a/j$d;->a:[Lb/b/c/a/b$a;

    goto :goto_38

    :cond_f
    iget-object v0, p0, Lb/b/b/a/j$d;->a:[Lb/b/c/a/b$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_13
    array-length v3, p1

    if-ge v2, v3, :cond_38

    aget-object v3, v0, v2

    aget-object v4, p1, v2

    iget-char v4, v4, Lb/b/c/a/b$a;->a:C

    iput-char v4, v3, Lb/b/c/a/b$a;->a:C

    const/4 v3, 0x0

    :goto_1f
    aget-object v4, p1, v2

    iget-object v4, v4, Lb/b/c/a/b$a;->b:[F

    array-length v4, v4

    if-ge v3, v4, :cond_35

    aget-object v4, v0, v2

    iget-object v4, v4, Lb/b/c/a/b$a;->b:[F

    aget-object v5, p1, v2

    iget-object v5, v5, Lb/b/c/a/b$a;->b:[F

    aget v5, v5, v3

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_38
    :goto_38
    return-void
.end method
