.class public Lb/b/c/d/k;
.super Ljava/lang/Object;
.source "SparseArrayCompat.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;


# instance fields
.field private b:Z

.field private c:[I

.field private d:[Ljava/lang/Object;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lb/b/c/d/k;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lb/b/c/d/k;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/c/d/k;->b:Z

    if-nez p1, :cond_11

    sget-object p1, Lb/b/c/d/d;->a:[I

    iput-object p1, p0, Lb/b/c/d/k;->c:[I

    sget-object p1, Lb/b/c/d/d;->c:[Ljava/lang/Object;

    iput-object p1, p0, Lb/b/c/d/k;->d:[Ljava/lang/Object;

    goto :goto_1d

    :cond_11
    invoke-static {p1}, Lb/b/c/d/d;->b(I)I

    move-result p1

    new-array v1, p1, [I

    iput-object v1, p0, Lb/b/c/d/k;->c:[I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lb/b/c/d/k;->d:[Ljava/lang/Object;

    :goto_1d
    iput v0, p0, Lb/b/c/d/k;->e:I

    return-void
.end method

.method private c()V
    .registers 9

    iget v0, p0, Lb/b/c/d/k;->e:I

    iget-object v1, p0, Lb/b/c/d/k;->c:[I

    iget-object v2, p0, Lb/b/c/d/k;->d:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_9
    if-ge v4, v0, :cond_21

    aget-object v6, v2, v4

    sget-object v7, Lb/b/c/d/k;->f:Ljava/lang/Object;

    if-eq v6, v7, :cond_1e

    if-eq v4, v5, :cond_1c

    aget v7, v1, v4

    aput v7, v1, v5

    aput-object v6, v2, v5

    const/4 v6, 0x0

    aput-object v6, v2, v4

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_21
    iput-boolean v3, p0, Lb/b/c/d/k;->b:Z

    iput v5, p0, Lb/b/c/d/k;->e:I

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/c/d/k;->c:[I

    iget v1, p0, Lb/b/c/d/k;->e:I

    invoke-static {v0, v1, p1}, Lb/b/c/d/d;->a([III)I

    move-result p1

    if-ltz p1, :cond_16

    iget-object v0, p0, Lb/b/c/d/k;->d:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Lb/b/c/d/k;->f:Ljava/lang/Object;

    if-ne v1, v2, :cond_13

    goto :goto_16

    :cond_13
    aget-object p1, v0, p1

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p1, 0x0

    :goto_17
    return-object p1
.end method

.method public a()V
    .registers 6

    iget v0, p0, Lb/b/c/d/k;->e:I

    iget-object v1, p0, Lb/b/c/d/k;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_e

    const/4 v4, 0x0

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_e
    iput v2, p0, Lb/b/c/d/k;->e:I

    iput-boolean v2, p0, Lb/b/c/d/k;->b:Z

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget v0, p0, Lb/b/c/d/k;->e:I

    if-eqz v0, :cond_10

    iget-object v1, p0, Lb/b/c/d/k;->c:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    if-gt p1, v0, :cond_10

    invoke-virtual {p0, p1, p2}, Lb/b/c/d/k;->b(ILjava/lang/Object;)V

    return-void

    :cond_10
    iget-boolean v0, p0, Lb/b/c/d/k;->b:Z

    if-eqz v0, :cond_1e

    iget v0, p0, Lb/b/c/d/k;->e:I

    iget-object v1, p0, Lb/b/c/d/k;->c:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1e

    invoke-direct {p0}, Lb/b/c/d/k;->c()V

    :cond_1e
    iget v0, p0, Lb/b/c/d/k;->e:I

    iget-object v1, p0, Lb/b/c/d/k;->c:[I

    array-length v1, v1

    if-lt v0, v1, :cond_40

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lb/b/c/d/d;->b(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lb/b/c/d/k;->c:[I

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lb/b/c/d/k;->d:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lb/b/c/d/k;->c:[I

    iput-object v1, p0, Lb/b/c/d/k;->d:[Ljava/lang/Object;

    :cond_40
    iget-object v1, p0, Lb/b/c/d/k;->c:[I

    aput p1, v1, v0

    iget-object p1, p0, Lb/b/c/d/k;->d:[Ljava/lang/Object;

    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/b/c/d/k;->e:I

    return-void
.end method

.method public b()I
    .registers 2

    iget-boolean v0, p0, Lb/b/c/d/k;->b:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lb/b/c/d/k;->c()V

    :cond_7
    iget v0, p0, Lb/b/c/d/k;->e:I

    return v0
.end method

.method public b(I)I
    .registers 4

    iget-boolean v0, p0, Lb/b/c/d/k;->b:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lb/b/c/d/k;->c()V

    :cond_7
    iget-object v0, p0, Lb/b/c/d/k;->c:[I

    iget v1, p0, Lb/b/c/d/k;->e:I

    invoke-static {v0, v1, p1}, Lb/b/c/d/d;->a([III)I

    move-result p1

    return p1
.end method

.method public b(ILjava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/b/c/d/k;->c:[I

    iget v1, p0, Lb/b/c/d/k;->e:I

    invoke-static {v0, v1, p1}, Lb/b/c/d/d;->a([III)I

    move-result v0

    if-ltz v0, :cond_f

    iget-object p1, p0, Lb/b/c/d/k;->d:[Ljava/lang/Object;

    aput-object p2, p1, v0

    goto :goto_82

    :cond_f
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lb/b/c/d/k;->e:I

    if-ge v0, v1, :cond_24

    iget-object v1, p0, Lb/b/c/d/k;->d:[Ljava/lang/Object;

    aget-object v2, v1, v0

    sget-object v3, Lb/b/c/d/k;->f:Ljava/lang/Object;

    if-ne v2, v3, :cond_24

    iget-object v2, p0, Lb/b/c/d/k;->c:[I

    aput p1, v2, v0

    aput-object p2, v1, v0

    return-void

    :cond_24
    iget-boolean v1, p0, Lb/b/c/d/k;->b:Z

    if-eqz v1, :cond_3c

    iget v1, p0, Lb/b/c/d/k;->e:I

    iget-object v2, p0, Lb/b/c/d/k;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3c

    invoke-direct {p0}, Lb/b/c/d/k;->c()V

    iget-object v0, p0, Lb/b/c/d/k;->c:[I

    iget v1, p0, Lb/b/c/d/k;->e:I

    invoke-static {v0, v1, p1}, Lb/b/c/d/d;->a([III)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    :cond_3c
    iget v1, p0, Lb/b/c/d/k;->e:I

    iget-object v2, p0, Lb/b/c/d/k;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_5e

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lb/b/c/d/d;->b(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lb/b/c/d/k;->c:[I

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lb/b/c/d/k;->d:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lb/b/c/d/k;->c:[I

    iput-object v1, p0, Lb/b/c/d/k;->d:[Ljava/lang/Object;

    :cond_5e
    iget v1, p0, Lb/b/c/d/k;->e:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_74

    iget-object v2, p0, Lb/b/c/d/k;->c:[I

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lb/b/c/d/k;->d:[Ljava/lang/Object;

    iget v2, p0, Lb/b/c/d/k;->e:I

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_74
    iget-object v1, p0, Lb/b/c/d/k;->c:[I

    aput p1, v1, v0

    iget-object p1, p0, Lb/b/c/d/k;->d:[Ljava/lang/Object;

    aput-object p2, p1, v0

    iget p1, p0, Lb/b/c/d/k;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/b/c/d/k;->e:I

    :goto_82
    return-void
.end method

.method public c(I)I
    .registers 3

    iget-boolean v0, p0, Lb/b/c/d/k;->b:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lb/b/c/d/k;->c()V

    :cond_7
    iget-object v0, p0, Lb/b/c/d/k;->c:[I

    aget p1, v0, p1

    return p1
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/c/d/k;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_1c

    :try_start_7
    iget-object v0, p0, Lb/b/c/d/k;->c:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lb/b/c/d/k;->c:[I

    iget-object v0, p0, Lb/b/c/d/k;->d:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, v1, Lb/b/c/d/k;->d:[Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_7 .. :try_end_1b} :catch_1b

    :catch_1b
    move-object v0, v1

    :catch_1c
    return-object v0
.end method

.method public d(I)V
    .registers 5

    iget-object v0, p0, Lb/b/c/d/k;->c:[I

    iget v1, p0, Lb/b/c/d/k;->e:I

    invoke-static {v0, v1, p1}, Lb/b/c/d/d;->a([III)I

    move-result p1

    if-ltz p1, :cond_17

    iget-object v0, p0, Lb/b/c/d/k;->d:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Lb/b/c/d/k;->f:Ljava/lang/Object;

    if-eq v1, v2, :cond_17

    aput-object v2, v0, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/b/c/d/k;->b:Z

    :cond_17
    return-void
.end method

.method public e(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-boolean v0, p0, Lb/b/c/d/k;->b:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lb/b/c/d/k;->c()V

    :cond_7
    iget-object v0, p0, Lb/b/c/d/k;->d:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lb/b/c/d/k;->b()I

    move-result v0

    if-gtz v0, :cond_9

    const-string v0, "{}"

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lb/b/c/d/k;->e:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_18
    iget v2, p0, Lb/b/c/d/k;->e:I

    if-ge v1, v2, :cond_41

    if-lez v1, :cond_23

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-virtual {p0, v1}, Lb/b/c/d/k;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lb/b/c/d/k;->e(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_39

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3e

    :cond_39
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_41
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
