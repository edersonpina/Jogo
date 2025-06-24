.class Lb/b/c/d/b;
.super Lb/b/c/d/h;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/b/c/d/h<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lb/b/c/d/c;


# direct methods
.method constructor <init>(Lb/b/c/d/c;)V
    .registers 2

    iput-object p1, p0, Lb/b/c/d/b;->d:Lb/b/c/d/c;

    invoke-direct {p0}, Lb/b/c/d/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lb/b/c/d/b;->d:Lb/b/c/d/c;

    invoke-virtual {v0, p1}, Lb/b/c/d/c;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected a(II)Ljava/lang/Object;
    .registers 3

    iget-object p2, p0, Lb/b/c/d/b;->d:Lb/b/c/d/c;

    iget-object p2, p2, Lb/b/c/d/c;->d:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1
.end method

.method protected a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "not a map"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a()V
    .registers 2

    iget-object v0, p0, Lb/b/c/d/b;->d:Lb/b/c/d/c;

    invoke-virtual {v0}, Lb/b/c/d/c;->clear()V

    return-void
.end method

.method protected a(I)V
    .registers 3

    iget-object v0, p0, Lb/b/c/d/b;->d:Lb/b/c/d/c;

    invoke-virtual {v0, p1}, Lb/b/c/d/c;->a(I)Ljava/lang/Object;

    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    iget-object p2, p0, Lb/b/c/d/b;->d:Lb/b/c/d/c;

    invoke-virtual {p2, p1}, Lb/b/c/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lb/b/c/d/b;->d:Lb/b/c/d/c;

    invoke-virtual {v0, p1}, Lb/b/c/d/c;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected b()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected c()I
    .registers 2

    iget-object v0, p0, Lb/b/c/d/b;->d:Lb/b/c/d/c;

    iget v0, v0, Lb/b/c/d/c;->e:I

    return v0
.end method
