.class public Lb/b/c/d/f;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

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

.field private c:[J

.field private d:[Ljava/lang/Object;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lb/b/c/d/f;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/c/d/f;->b:Z

    const/16 v1, 0xa

    invoke-static {v1}, Lb/b/c/d/d;->c(I)I

    move-result v1

    new-array v2, v1, [J

    iput-object v2, p0, Lb/b/c/d/f;->c:[J

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lb/b/c/d/f;->d:[Ljava/lang/Object;

    iput v0, p0, Lb/b/c/d/f;->e:I

    return-void
.end method

.method private b()V
    .registers 10

    iget v0, p0, Lb/b/c/d/f;->e:I

    iget-object v1, p0, Lb/b/c/d/f;->c:[J

    iget-object v2, p0, Lb/b/c/d/f;->d:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_9
    if-ge v4, v0, :cond_21

    aget-object v6, v2, v4

    sget-object v7, Lb/b/c/d/f;->f:Ljava/lang/Object;

    if-eq v6, v7, :cond_1e

    if-eq v4, v5, :cond_1c

    aget-wide v7, v1, v4

    aput-wide v7, v1, v5

    aput-object v6, v2, v5

    const/4 v6, 0x0

    aput-object v6, v2, v4

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_21
    iput-boolean v3, p0, Lb/b/c/d/f;->b:Z

    iput v5, p0, Lb/b/c/d/f;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    iget v0, p0, Lb/b/c/d/f;->e:I

    iget-object v1, p0, Lb/b/c/d/f;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_e

    const/4 v4, 0x0

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_e
    iput v2, p0, Lb/b/c/d/f;->e:I

    iput-boolean v2, p0, Lb/b/c/d/f;->b:Z

    return-void
.end method

.method public a(J)V
    .registers 5

    iget-object v0, p0, Lb/b/c/d/f;->c:[J

    iget v1, p0, Lb/b/c/d/f;->e:I

    invoke-static {v0, v1, p1, p2}, Lb/b/c/d/d;->a([JIJ)I

    move-result p1

    if-ltz p1, :cond_17

    iget-object p2, p0, Lb/b/c/d/f;->d:[Ljava/lang/Object;

    aget-object v0, p2, p1

    sget-object v1, Lb/b/c/d/f;->f:Ljava/lang/Object;

    if-eq v0, v1, :cond_17

    aput-object v1, p2, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/b/c/d/f;->b:Z

    :cond_17
    return-void
.end method

.method public a(JLjava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/b/c/d/f;->c:[J

    iget v1, p0, Lb/b/c/d/f;->e:I

    invoke-static {v0, v1, p1, p2}, Lb/b/c/d/d;->a([JIJ)I

    move-result v0

    if-ltz v0, :cond_f

    iget-object p1, p0, Lb/b/c/d/f;->d:[Ljava/lang/Object;

    aput-object p3, p1, v0

    goto :goto_84

    :cond_f
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lb/b/c/d/f;->e:I

    if-ge v0, v1, :cond_24

    iget-object v1, p0, Lb/b/c/d/f;->d:[Ljava/lang/Object;

    aget-object v2, v1, v0

    sget-object v3, Lb/b/c/d/f;->f:Ljava/lang/Object;

    if-ne v2, v3, :cond_24

    iget-object v2, p0, Lb/b/c/d/f;->c:[J

    aput-wide p1, v2, v0

    aput-object p3, v1, v0

    return-void

    :cond_24
    iget-boolean v1, p0, Lb/b/c/d/f;->b:Z

    if-eqz v1, :cond_3c

    iget v1, p0, Lb/b/c/d/f;->e:I

    iget-object v2, p0, Lb/b/c/d/f;->c:[J

    array-length v2, v2

    if-lt v1, v2, :cond_3c

    invoke-direct {p0}, Lb/b/c/d/f;->b()V

    iget-object v0, p0, Lb/b/c/d/f;->c:[J

    iget v1, p0, Lb/b/c/d/f;->e:I

    invoke-static {v0, v1, p1, p2}, Lb/b/c/d/d;->a([JIJ)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    :cond_3c
    iget v1, p0, Lb/b/c/d/f;->e:I

    iget-object v2, p0, Lb/b/c/d/f;->c:[J

    array-length v2, v2

    if-lt v1, v2, :cond_62

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Lb/b/c/d/d;->a(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    new-array v2, v1, [J

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lb/b/c/d/f;->c:[J

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lb/b/c/d/f;->d:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lb/b/c/d/f;->c:[J

    iput-object v1, p0, Lb/b/c/d/f;->d:[Ljava/lang/Object;

    :cond_62
    iget v1, p0, Lb/b/c/d/f;->e:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_76

    iget-object v2, p0, Lb/b/c/d/f;->c:[J

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lb/b/c/d/f;->d:[Ljava/lang/Object;

    iget v2, p0, Lb/b/c/d/f;->e:I

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_76
    iget-object v1, p0, Lb/b/c/d/f;->c:[J

    aput-wide p1, v1, v0

    iget-object p1, p0, Lb/b/c/d/f;->d:[Ljava/lang/Object;

    aput-object p3, p1, v0

    iget p1, p0, Lb/b/c/d/f;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/b/c/d/f;->e:I

    :goto_84
    return-void
.end method

.method public b(J)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/c/d/f;->c:[J

    iget v1, p0, Lb/b/c/d/f;->e:I

    invoke-static {v0, v1, p1, p2}, Lb/b/c/d/d;->a([JIJ)I

    move-result p1

    if-ltz p1, :cond_16

    iget-object p2, p0, Lb/b/c/d/f;->d:[Ljava/lang/Object;

    aget-object v0, p2, p1

    sget-object v1, Lb/b/c/d/f;->f:Ljava/lang/Object;

    if-ne v0, v1, :cond_13

    goto :goto_16

    :cond_13
    aget-object p1, p2, p1

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p1, 0x0

    :goto_17
    return-object p1
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/c/d/f;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_1c

    :try_start_7
    iget-object v0, p0, Lb/b/c/d/f;->c:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, v1, Lb/b/c/d/f;->c:[J

    iget-object v0, p0, Lb/b/c/d/f;->d:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, v1, Lb/b/c/d/f;->d:[Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_7 .. :try_end_1b} :catch_1b

    :catch_1b
    move-object v0, v1

    :catch_1c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-boolean v0, p0, Lb/b/c/d/f;->b:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lb/b/c/d/f;->b()V

    :cond_7
    iget v0, p0, Lb/b/c/d/f;->e:I

    if-gtz v0, :cond_e

    const-string v0, "{}"

    return-object v0

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_1b
    iget v2, p0, Lb/b/c/d/f;->e:I

    if-ge v0, v2, :cond_52

    if-lez v0, :cond_26

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    iget-boolean v2, p0, Lb/b/c/d/f;->b:Z

    if-eqz v2, :cond_2d

    invoke-direct {p0}, Lb/b/c/d/f;->b()V

    :cond_2d
    iget-object v2, p0, Lb/b/c/d/f;->c:[J

    aget-wide v3, v2, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lb/b/c/d/f;->b:Z

    if-eqz v2, :cond_40

    invoke-direct {p0}, Lb/b/c/d/f;->b()V

    :cond_40
    iget-object v2, p0, Lb/b/c/d/f;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eq v2, p0, :cond_4a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4f

    :cond_4a
    const-string v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_52
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
